module Stratosphere.Value
  ( Value(..)
  , ToRef(..)
  , ValueList(..)
  , sub
  )
where

import Data.Aeson ((.=))
import Data.Maybe (fromMaybe)
import Data.String (IsString(..))
import Data.Text (Text)
import Data.Typeable
import GHC.Exts (IsList(..))
import Prelude

import qualified Data.Aeson        as JSON
import qualified Data.Aeson.KeyMap as JSON

-- | This type is a wrapper around any values in a template. A value can be a
-- 'Literal', a 'Ref', or an intrinsic function. See:
-- http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html
data Value a where
  Literal :: a -> Value a
  Ref :: Text -> Value a
  If :: Text -> Value a -> Value a -> Value a
  And :: Value Bool -> Value Bool -> Value Bool
  Equals :: (Show a, JSON.ToJSON a, Eq a, Typeable a) => Value a -> Value a -> Value Bool
  Or :: Value Bool -> Value Bool -> Value Bool
  Not :: Value Bool -> Value Bool
  GetAtt :: Text -> Text -> Value a
  Base64 :: Value Text -> Value Text
  Join :: Text -> ValueList Text -> Value Text
  Select :: Integer -> ValueList a -> Value a
  FindInMap :: Value Text -> Value Text -> Value Text -> Value a -- ^ Map name, top level key, and second level key
  ImportValue :: Value Text -> Value a -- ^ The account-and-region-unique exported name of the value to import
  Sub :: Text -> Maybe (JSON.KeyMap (Value Text)) -> Value Text -- ^ Substitution string and optional map of values

deriving instance Show a => Show (Value a)

instance Eq a => Eq (Value a) where
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

eqEquals :: (Typeable a, Typeable b, Eq a) => a -> a -> b -> b -> Bool
eqEquals a b a' b' = fromMaybe False $ do
  a'' <- cast a'
  b'' <- cast b'
  pure $ a == a'' && b == b''

instance IsString a => IsString (Value a) where
  fromString s = Literal (fromString s)

instance JSON.ToJSON a => JSON.ToJSON (Value a) where
  toJSON = \case
    (And x y)           -> mkFunc "Fn::And" [JSON.toJSON x, JSON.toJSON y]
    (Base64 v)          -> JSON.object [("Fn::Base64", JSON.toJSON v)]
    (Equals x y)        -> mkFunc "Fn::Equals" [JSON.toJSON x, JSON.toJSON y]
    (GetAtt x y)        -> mkFunc "Fn::GetAtt" [JSON.toJSON x, JSON.toJSON y]
    (If i x y)          -> mkFunc "Fn::If" [JSON.toJSON i, JSON.toJSON x, JSON.toJSON y]
    (ImportValue t)     -> importValueToJSON t
    (Join d vs)         -> mkFunc "Fn::Join" [JSON.toJSON d, JSON.toJSON vs]
    (Literal v)         -> JSON.toJSON v
    (Not x)             -> mkFunc "Fn::Not" [JSON.toJSON x]
    (Or x y)            -> mkFunc "Fn::Or" [JSON.toJSON x, JSON.toJSON y]
    (Ref r)             -> refToJSON r
    (Select i vs)       -> mkFunc "Fn::Select" [JSON.toJSON i, JSON.toJSON vs]
    (Sub s (Just vals)) -> mkFunc "Fn::Sub" [JSON.toJSON s, JSON.Object (JSON.toJSON <$> vals)]
    (Sub s Nothing)     -> JSON.object [("Fn::Sub" .= s)]
    (FindInMap mapName topKey secondKey) -> JSON.object
      [ ("Fn::FindInMap" .= ([JSON.toJSON mapName, JSON.toJSON topKey, JSON.toJSON secondKey] :: [JSON.Value]))
      ]

-- | Simple version of 'Sub' without a map of values.
sub :: Text -> Value Text
sub s = Sub s Nothing

refToJSON :: Text -> JSON.Value
refToJSON ref = JSON.object [("Ref" .= ref)]

importValueToJSON :: Value Text -> JSON.Value
importValueToJSON ref = JSON.object [("Fn::ImportValue", JSON.toJSON ref)]

mkFunc :: JSON.Key -> [JSON.Value] -> JSON.Value
mkFunc key args = JSON.object [(key, JSON.Array $ fromList args)]

-- | 'ValueList' is like 'Value', except it is used in place of lists of values in
-- templates. For example, if you have a parameter called @SubnetIds@ of type
-- @List<AWS::EC2::Subnet::Id>@ then, you can use @RefList "SubnetIds"@ to
-- reference it.
data ValueList a
  = Cidr (Value Text) (Value Text) (Value Text)
  | GetAZs (Value Text)
  | ImportValueList (Value Text)
  | RefList Text
  | Split Text (Value a)
  | ValueList [Value a]
  deriving (Show, Eq)

instance IsList (ValueList a) where
  type Item (ValueList a) = Value a
  fromList = ValueList

  toList = \case
    -- This is obviously not meaningful, but the IsList instance is so useful
    -- that I decided to allow it.
    (Cidr _ _ _)        -> []
    (GetAZs _)          -> []
    (ImportValueList _) -> []
    (RefList _)         -> []
    (Split _ _)         -> []
    (ValueList xs)      -> xs

instance JSON.ToJSON a => JSON.ToJSON (ValueList a) where
  toJSON = \case
    (Cidr ipBlock count cidrBits) -> JSON.object [("Fn::Cidr", cidrArray ipBlock count cidrBits)]
    (GetAZs r)                    -> JSON.object [("Fn::GetAZs", JSON.toJSON r)]
    (ImportValueList ref)         -> importValueToJSON ref
    (RefList ref)                 -> refToJSON ref
    (Split d s)                   -> mkFunc "Fn::Split" [JSON.toJSON d, JSON.toJSON s]
    (ValueList vals)              -> JSON.toJSON vals
    where
      cidrArray :: Value Text -> Value Text -> Value Text -> JSON.Value
      cidrArray ipBlock count cidrBits
        = JSON.Array
        [ JSON.toJSON ipBlock
        , JSON.toJSON count
        , JSON.toJSON cidrBits
        ]

-- | Class used to create a 'Ref' from another type.
class ToRef a b where
  toRef :: a -> Value b
