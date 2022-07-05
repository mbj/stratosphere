{-# LANGUAGE GADTs #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TypeFamilies #-}

module Stratosphere.Values
  ( Val (..)
  , sub
  , ValList (..)
  , ToRef (..)
  ) where

import Data.Aeson
import Data.Aeson.KeyMap
import Data.Maybe (fromMaybe)
import Data.String (IsString(..))
import Data.Text (Text)
import Data.Typeable
import GHC.Exts (IsList(..))

-- | This type is a wrapper around any values in a template. A value can be a
-- 'Literal', a 'Ref', or an intrinsic function. See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html
data Val a where
  Literal :: a -> Val a
  Ref :: Text -> Val a
  If :: Text -> Val a -> Val a -> Val a
  And :: Val Bool -> Val Bool -> Val Bool
  Equals :: (Show a, ToJSON a, Eq a, Typeable a) => Val a -> Val a -> Val Bool
  Or :: Val Bool -> Val Bool -> Val Bool
  Not :: Val Bool -> Val Bool
  GetAtt :: Text -> Text -> Val a
  Base64 :: Val Text -> Val Text
  Join :: Text -> ValList Text -> Val Text
  Select :: Integer -> ValList a -> Val a
  FindInMap :: Val Text -> Val Text -> Val Text -> Val a -- ^ Map name, top level key, and second level key
  ImportValue :: Val Text -> Val a -- ^ The account-and-region-unique exported name of the value to import
  Sub :: Text -> Maybe (KeyMap (Val Text)) -> Val Text -- ^ Substitution string and optional map of values

deriving instance (Show a) => Show (Val a)

instance Eq a => Eq (Val a) where
  Literal a == Literal a' = a == a'
  Ref a == Ref a' = a == a'
  If a b c == If a' b' c' = a == a' && b == b' && c == c'
  And a b == And a' b' = a == a' && b == b'
  Equals a b == Equals a' b' = eqEquals a b a' b'
  Or a b == Or a' b' = a == a' && b == b'
  Not a == Not a' = a == a'
  GetAtt a b == GetAtt a' b' = a == a' && b == b'
  Base64 a == Base64 a' = a == a'
  FindInMap a b c == FindInMap a' b' c' = a == a' && b == b' && c == c'
  ImportValue a == ImportValue a' = a == a'
  Sub a b == Sub a' b' = a == a' && b == b'
  _ == _ = False

eqEquals :: (Typeable a, Typeable b, Eq a, Eq b) => a -> a -> b -> b -> Bool
eqEquals a b a' b' = fromMaybe False $ do
  a'' <- cast a'
  b'' <- cast b'
  pure $ a == a'' && b == b''

instance (IsString a) => IsString (Val a) where
  fromString s = Literal (fromString s)

instance (ToJSON a) => ToJSON (Val a) where
  toJSON (Literal v) = toJSON v
  toJSON (Ref r) = refToJSON r
  toJSON (If i x y) = mkFunc "Fn::If" [toJSON i, toJSON x, toJSON y]
  toJSON (And x y) = mkFunc "Fn::And" [toJSON x, toJSON y]
  toJSON (Equals x y) = mkFunc "Fn::Equals" [toJSON x, toJSON y]
  toJSON (Or x y) = mkFunc "Fn::Or" [toJSON x, toJSON y]
  toJSON (Not x) = mkFunc "Fn::Not" [toJSON x]
  toJSON (GetAtt x y) = mkFunc "Fn::GetAtt" [toJSON x, toJSON y]
  toJSON (Base64 v) = object [("Fn::Base64", toJSON v)]
  toJSON (Join d vs) = mkFunc "Fn::Join" [toJSON d, toJSON vs]
  toJSON (Select i vs) = mkFunc "Fn::Select" [toJSON i, toJSON vs]
  toJSON (FindInMap mapName topKey secondKey) =
    object [("Fn::FindInMap", toJSON [toJSON mapName, toJSON topKey, toJSON secondKey])]
  toJSON (ImportValue t) = importValueToJSON t
  toJSON (Sub s Nothing) = object [("Fn::Sub", toJSON s)]
  toJSON (Sub s (Just vals)) = mkFunc "Fn::Sub" [toJSON s, Object (toJSON <$> vals)]

-- | Simple version of 'Sub' without a map of values.
sub :: Text -> Val Text
sub s = Sub s Nothing

refToJSON :: Text -> Value
refToJSON ref = object [("Ref", toJSON ref)]

importValueToJSON :: Val Text -> Value
importValueToJSON ref = object [("Fn::ImportValue", toJSON ref)]

mkFunc :: Key -> [Value] -> Value
mkFunc key args = object [(key, Array $ GHC.Exts.fromList args)]

-- | 'ValList' is like 'Val', except it is used in place of lists of Vals in
-- templates. For example, if you have a parameter called @SubnetIds@ of type
-- @List<AWS::EC2::Subnet::Id>@ then, you can use @RefList "SubnetIds"@ to
-- reference it.
data ValList a
  = ValList [Val a]
  | RefList Text
  | ImportValueList (Val Text)
  | Split Text (Val a)
  | GetAZs (Val Text)
  deriving (Show, Eq)

instance IsList (ValList a) where
  type Item (ValList a) = Val a
  fromList = ValList

  toList (ValList xs) = xs
  -- This is obviously not meaningful, but the IsList instance is so useful
  -- that I decided to allow it.
  toList (RefList _) = []
  toList (ImportValueList _) = []
  toList (Split _ _) = []
  toList (GetAZs _) = []

instance (ToJSON a) => ToJSON (ValList a) where
  toJSON (ValList vals) = toJSON vals
  toJSON (RefList ref) = refToJSON ref
  toJSON (ImportValueList ref) = importValueToJSON ref
  toJSON (Split d s) = mkFunc "Fn::Split" [toJSON d, toJSON s]
  toJSON (GetAZs r) = object [("Fn::GetAZs", toJSON r)]

-- | Class used to create a 'Ref' from another type.
class ToRef a b where
  toRef :: a -> Val b
