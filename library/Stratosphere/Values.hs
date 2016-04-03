{-# LANGUAGE GADTs #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}

module Stratosphere.Values
       ( Val (..)
       , Integer' (..)
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

data Val a
 = Literal a
 | Ref T.Text
 | If T.Text (Val a) (Val a)
 | And (Val Bool) (Val Bool)
 | Equals (Val Bool) (Val Bool)
 | Or (Val Bool) (Val Bool)
 | GetAtt T.Text T.Text
 | Base64 (Val a)
 | Join T.Text [Val a]
 | Select Integer' (Val a)

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
  toJSON (Base64 v) = mkFunc "Fn::Base64" [toJSON v]
  toJSON (Join d vs) = mkFunc "Fn::Join" [toJSON d, toJSON vs]
  toJSON (Select i vs) = mkFunc "Fn::Select" [toJSON i, toJSON vs]

mkFunc :: T.Text -> [Value] -> Value
mkFunc name args = object [(name, Array $ fromList args)]

instance (FromJSON a) => FromJSON (Val a) where
  parseJSON (Object o) =
    case HM.toList o of
      [] -> fail "Empty object as Val"
      [("Ref", obj')] -> Ref <$> parseJSON obj'
      [(n, obj')] -> if T.isPrefixOf "Fn::" n
                     then tryParseFunc n obj'
                     else Literal <$> parseJSON (object [(n, obj')])
      os -> Literal <$> parseJSON (object os)
    where tryParseFunc "Fn::If" obj =
            (\(i, x, y) -> If i x y) <$> parseJSON obj
          tryParseFunc "Fn::And" obj =
            uncurry And <$> parseJSON obj
          tryParseFunc "Fn::Equals" obj =
            uncurry Equals <$> parseJSON obj
          tryParseFunc "Fn::Or" obj =
            uncurry Or <$> parseJSON obj
          tryParseFunc "Fn::GetAtt" obj =
            uncurry GetAtt <$> parseJSON obj
          tryParseFunc "Fn::Base64" obj =
            Base64 <$> parseJSON obj
          tryParseFunc "Fn::Join" obj =
            uncurry Join <$> parseJSON obj
          tryParseFunc "Fn::Select" obj =
            uncurry Select <$> parseJSON obj
          tryParseFunc n _ = fail $ "Unknown function " ++ T.unpack n
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
