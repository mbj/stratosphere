-- | Official AWS specification representation.
module Stratosphere.Generator.Raw
  ( ComposedType(..)
  , PrimitiveType(..)
  , Property(..)
  , PropertyName(..)
  , PropertyType(..)
  , PropertyTypeName(..)
  , ResourceType(..)
  , ResourceTypeName(..)
  , Service(..)
  , Spec(..)
  , mkPropertyTypeName
  , readSpec
  , toText
  )
where

import Data.Maybe (fromMaybe)
import GHC.Generics
import Stratosphere.Generator.Prelude

import qualified Data.Aeson       as JSON
import qualified Data.Aeson.Types as JSON
import qualified Data.ByteString  as BS
import qualified Data.List        as List
import qualified Data.Text        as Text

mkPropertyTypeName :: PropertyName -> Text
mkPropertyTypeName = \case
  PropertyName "Tag" -> "Tag"
  other              -> toText other <> "Property"

data Service = Service
  { namespace :: Text
  , service   :: Text
  }
  deriving (Eq, Show, Ord)

instance ToText Service where
  toText Service{..} = namespace <> "::" <> service

data ResourceTypeName = ResourceTypeName
  { service  :: Service
  , resource :: Text
  }
  deriving (Eq, Show, Ord)

instance ToText ResourceTypeName where
  toText ResourceTypeName{..} = toText service <> "::" <> resource

instance JSON.FromJSON ResourceTypeName where
  parseJSON = JSON.withText "resource name" parseResourceTypeName

parseResourceTypeName :: Text -> JSON.Parser ResourceTypeName
parseResourceTypeName text =
  case Text.splitOn "::" text of
    [namespace, service, resource] -> pure ResourceTypeName{service = Service{..}, ..}
    _other                         -> fail $ "Unsupported resource name: " <> Text.unpack text

instance JSON.FromJSONKey ResourceTypeName where
  fromJSONKey = JSON.FromJSONKeyTextParser parseResourceTypeName

data PropertyTypeName
  = Tag
  | PropertyTypeName ResourceTypeName PropertyName
  deriving (Eq, Show, Ord)

instance ToText PropertyTypeName where
  toText = \case
    Tag                                          -> "Tag"
    (PropertyTypeName resourceName propertyName) ->
      toText resourceName <> "." <> toText propertyName

instance JSON.FromJSON PropertyTypeName where
  parseJSON = JSON.withText "property type name" parsePropertyTypeName

parsePropertyTypeName :: Text -> JSON.Parser PropertyTypeName
parsePropertyTypeName text =
  case text of
    "Tag"  -> pure Tag
    _other ->
      case Text.splitOn "." text of
        [resourceNameText, propertyNameText] -> do
          resourceName <- parseResourceTypeName resourceNameText
          pure $ PropertyTypeName resourceName (PropertyName propertyNameText)
        _other -> failUnsupported
  where
    failUnsupported :: JSON.Parser a
    failUnsupported = fail $ "Unsupported property type name: " <> Text.unpack text

instance JSON.FromJSONKey PropertyTypeName where
  fromJSONKey = JSON.FromJSONKeyTextParser parsePropertyTypeName

data Spec = Spec
  { specPropertyTypes                :: Map PropertyTypeName PropertyType
  , specResourceSpecificationVersion :: Text
  , specResourceTypes                :: Map ResourceTypeName ResourceType
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON Spec where
  parseJSON = JSON.genericParseJSON $ parseOptions "spec"

data PrimitiveType
  = PrimitiveTypeBoolean
  | PrimitiveTypeDouble
  | PrimitiveTypeInteger
  | PrimitiveTypeJSON
  | PrimitiveTypeLong
  | PrimitiveTypeString
  | PrimitiveTypeTimestamp
  deriving (Eq, Show)

instance JSON.FromJSON PrimitiveType where
  parseJSON = JSON.withText "primitive type" $ \case
    "Boolean"   -> pure PrimitiveTypeBoolean
    "Double"    -> pure PrimitiveTypeDouble
    "Integer"   -> pure PrimitiveTypeInteger
    "Json"      -> pure PrimitiveTypeJSON
    "Long"      -> pure PrimitiveTypeLong
    "String"    -> pure PrimitiveTypeString
    "Timestamp" -> pure PrimitiveTypeTimestamp
    other       -> fail $ "Unsupported primitive type: " <> Text.unpack other

data PropertyType = PropertyType
  { propertyTypeDocumentation :: Text
  , propertyTypeItemType      :: Maybe PropertyName
  , propertyTypePrimitiveType :: Maybe PrimitiveType
  , propertyTypeProperties    :: Maybe (Map PropertyName Property)
  , propertyTypeRequired      :: Maybe Bool
  , propertyTypeType          :: Maybe ComposedType
  , propertyTypeUpdateType    :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON PropertyType where
  parseJSON = JSON.genericParseJSON $ parseOptions "propertyType"

data ComposedType
  = ComposedTypeList
  | ComposedTypeMap
  | ComposedTypeSub PropertyName
  deriving (Show, Eq)

instance JSON.FromJSON ComposedType where
  parseJSON = JSON.withText "property type" $ \case
    "List" -> pure ComposedTypeList
    "Map"  -> pure ComposedTypeMap
    other  -> pure . ComposedTypeSub $ PropertyName other

newtype PropertyName = PropertyName Text
  deriving stock   (Eq, Show, Ord)
  deriving newtype (JSON.FromJSON)

instance JSON.FromJSONKey PropertyName where
  fromJSONKey = JSON.FromJSONKeyText PropertyName

instance ToText PropertyName where
  toText (PropertyName name) = name

data Property = Property
  { propertyDocumentation     :: Text
  , propertyDuplicatesAllowed :: Maybe Bool
  , propertyItemType          :: Maybe PropertyName
  , propertyPrimitiveItemType :: Maybe PrimitiveType
  , propertyPrimitiveType     :: Maybe PrimitiveType
  , propertyRequired          :: Bool
  , propertyType              :: Maybe ComposedType
  , propertyUpdateType        :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON Property where
  parseJSON = JSON.genericParseJSON $ parseOptions "property"

data ResourceType = ResourceType
  { resourceTypeAdditionalProperties :: Maybe Bool
  , resourceTypeAttributes           :: Maybe JSON.Value
  , resourceTypeDocumentation        :: Text
  , resourceTypeProperties           :: Map PropertyName Property
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON ResourceType where
  parseJSON = JSON.genericParseJSON $ parseOptions "resourceType"

-- | Decode a JSON file into raw spec
readSpec :: FilePath -> IO (Either String Spec)
readSpec = fmap JSON.eitherDecodeStrict . BS.readFile

parseOptions :: String -> JSON.Options
parseOptions prefix
  = JSON.defaultOptions
  { JSON.fieldLabelModifier  = fieldLabelModifier
  , JSON.rejectUnknownFields = True
  }
  where
    fieldLabelModifier field
      = fromMaybe (error $ "field: " <> field <> "expected field prefix: " <> prefix)
      $ List.stripPrefix prefix field
