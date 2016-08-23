{-# LANGUAGE GADTs #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Stratosphere.Values
       ( Val (..)
       , Integer' (..)
       , Bool' (..)
       , Double' (..)
       , ToRef (..)
       ) where

import Data.Aeson
import qualified Data.HashMap.Strict as HM
import Data.String (IsString (..))
import qualified Data.Text as T
import Text.Read (readMaybe)
import GHC.Exts (fromList)

-- GADTs are cool, but I couldn't get this to work with FromJSON
-- data Val a where
--   Literal :: a -> Val a
--   Ref :: T.Text -> Val a
--   If :: T.Text -> Val a -> Val a -> Val a
--   And :: Val Bool -> Val Bool -> Val Bool
--   Equals :: (Show a, ToJSON a) => Val a -> Val a -> Val Bool
--   Or :: Val Bool -> Val Bool -> Val Bool

-- | This type is a wrapper around any values in a template. A value can be a
-- 'Literal', a 'Ref', or an intrinsic function. See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html
data Val a
 = Literal a
 | Ref T.Text
 | If T.Text (Val a) (Val a)
 | And (Val Bool') (Val Bool')
 | Equals (Val Bool') (Val Bool')
 | Or (Val Bool') (Val Bool')
 | GetAtt T.Text T.Text
 | Base64 (Val a)
 | Join T.Text [Val a]
 | Select Integer' (Val a)
 | GetAZs (Val a)
 | FindInMap (Val a)
             -- ^ Map name
             (Val a)
             -- ^ Top level key
             (Val a)
             -- ^ Second level key

deriving instance (Show a) => Show (Val a)

instance (IsString a) => IsString (Val a) where
  fromString s = Literal (fromString s)

instance (ToJSON a) => ToJSON (Val a) where
  toJSON (Literal v) = toJSON v
  toJSON (Ref r) = object [("Ref", toJSON r)]
  toJSON (If i x y) = mkFunc "Fn::If" [toJSON i, toJSON x, toJSON y]
  toJSON (And x y) = mkFunc "Fn::And" [toJSON x, toJSON y]
  toJSON (Equals x y) = mkFunc "Fn::Equals" [toJSON x, toJSON y]
  toJSON (Or x y) = mkFunc "Fn::Or" [toJSON x, toJSON y]
  toJSON (GetAtt x y) = mkFunc "Fn::GetAtt" [toJSON x, toJSON y]
  toJSON (Base64 v) = object [("Fn::Base64", toJSON v)]
  toJSON (Join d vs) = mkFunc "Fn::Join" [toJSON d, toJSON vs]
  toJSON (Select i vs) = mkFunc "Fn::Select" [toJSON i, toJSON vs]
  toJSON (GetAZs r) = object [("Fn::GetAZs", toJSON r)]
  toJSON (FindInMap mapName topKey secondKey) =
    object [("Fn::FindInMap", toJSON [toJSON mapName, toJSON topKey, toJSON secondKey])]

mkFunc :: T.Text -> [Value] -> Value
mkFunc name args = object [(name, Array $ fromList args)]

instance (FromJSON a) => FromJSON (Val a) where
  parseJSON (Object o) =
    case HM.toList o of
      [] -> fail "Empty object as Val"
      [("Ref", o')] -> Ref <$> parseJSON o'
      [("Fn::If", o')] -> (\(i, x, y) -> If i x y) <$> parseJSON o'
      [("Fn::And", o')] -> uncurry And <$> parseJSON o'
      [("Fn::Equals", o')] -> uncurry Equals <$> parseJSON o'
      [("Fn::Or", o')] -> uncurry Or <$> parseJSON o'
      [("Fn::GetAtt", o')] -> uncurry GetAtt <$> parseJSON o'
      [("Fn::Base64", o')] -> Base64 <$> parseJSON o'
      [("Fn::Join", o')] -> uncurry Join <$> parseJSON o'
      [("Fn::Select", o')] -> uncurry Select <$> parseJSON o'
      [("Fn::GetAZs", o')] -> GetAZs <$> parseJSON o'
      [("Fn::FindInMap", o')] -> do
        (mapName, topKey, secondKey) <- parseJSON o'
        return (FindInMap mapName topKey secondKey)
      [(n, o')] -> Literal <$> parseJSON (object [(n, o')])
      os -> Literal <$> parseJSON (object os)
  parseJSON v = Literal <$> parseJSON v


-- | We need to wrap integers so we can override the Aeson type-classes. This
-- is necessary because CloudFront made the silly decision to represent numbers
-- as JSON strings.
newtype Integer' = Integer' { unInteger' :: Integer }
                 deriving (Show, Eq, Num)

instance ToJSON Integer' where
  toJSON (Integer' i) = toJSON $ show i

instance FromJSON Integer' where
  parseJSON v = Integer' <$> do
    numString <- parseJSON v
    case readMaybe (numString :: String) of
      Nothing -> fail "Can't read number from string"
      (Just n) -> return n

-- | We need to wrap Bools for the same reason we need to wrap Ints.
data Bool'
  = False'
  | True'
  deriving (Show, Bounded, Enum, Eq, Ord)

instance ToJSON Bool' where
  toJSON True' = "true"
  toJSON False' = "false"

instance FromJSON Bool' where
  parseJSON v = do
    string <- parseJSON v
    case string of
      "true" -> return True'
      "false" -> return False'
      _ -> fail $ "Unknown bool string " ++ string

-- | Class used to create a 'Ref' from another type.
class ToRef a b where
  toRef :: a -> Val b

-- | We need to wrap Doubles for the same reason we need to wrap Ints.
newtype Double' = Double' { unDouble' :: Double }
                deriving (Show, Eq, Num)

instance ToJSON Double' where
  toJSON (Double' i) = toJSON $ show i

instance FromJSON Double' where
  parseJSON v = Double' <$> do
    numString <- parseJSON v
    case readMaybe (numString :: String) of
      Nothing -> fail "Can't read number from string"
      (Just n) -> return n
