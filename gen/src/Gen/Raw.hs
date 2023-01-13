-- | Official AWS specification representation.
module Gen.Raw
  ( Spec(..)
  , PrimitiveType(..)
  , Property(..)
  , ComposedType(..)
  , PropertyType(..)
  , PropertyTypeName(..)
  , Resource(..)
  , ResourceName(..)
  , SubpropertyName(..)
  , readSpec
  , toText
  )
where

import Control.Lens
import Data.Map (Map)
import Data.Maybe (fromMaybe)
import GHC.Generics
import Gen.Prelude

import qualified Data.Aeson       as JSON
import qualified Data.Aeson.Types as JSON
import qualified Data.ByteString  as BS
import qualified Data.List        as List
import qualified Data.Text        as Text

class ToText a where
  toText :: a -> Text

data ResourceName = ResourceName
  { namespace :: Text
  , service   :: Text
  , resource  :: Text
  }
  deriving (Eq, Show, Ord)

instance ToText ResourceName where
  toText ResourceName{..} = namespace <> "::" <> service <> "::" <> resource

instance JSON.FromJSON ResourceName where
  parseJSON = JSON.withText "resource name" parseResourceName

parseResourceName :: Text -> JSON.Parser ResourceName
parseResourceName text =
    case Text.splitOn "::" text of
      [namespace, service, resource] -> pure ResourceName{..}
      _other                         -> fail $ "Unsupported resource name: " <> Text.unpack text

instance JSON.FromJSONKey ResourceName where
  fromJSONKey = JSON.FromJSONKeyTextParser parseResourceName

data PropertyTypeName
  = Tag
  | PropertyTypeName ResourceName SubpropertyName
  deriving (Eq, Show, Ord)

instance ToText PropertyTypeName where
  toText = \case
    Tag -> "Tag"
    (PropertyTypeName resourceName subpropertyName) ->
      toText resourceName <> "." <> toText subpropertyName

instance JSON.FromJSON PropertyTypeName where
  parseJSON = JSON.withText "property type name" parsePropertyTypeName

parsePropertyTypeName :: Text -> JSON.Parser PropertyTypeName
parsePropertyTypeName text =
  case text of
    "Tag" -> pure Tag
    _other ->
      case Text.splitOn "." text of
        [resourceNameText, subpropertyNameText] -> do
          resourceName <- parseResourceName resourceNameText
          pure $ PropertyTypeName resourceName (SubpropertyName subpropertyNameText)
        _other -> failUnsupported
  where
    failUnsupported :: JSON.Parser a
    failUnsupported = fail $ "Unsupported property type name: " <> Text.unpack text

instance JSON.FromJSONKey PropertyTypeName where
  fromJSONKey = JSON.FromJSONKeyTextParser parsePropertyTypeName

data Spec = Spec
  { specPropertyTypes                :: Map PropertyTypeName PropertyType
  , specResourceSpecificationVersion :: Text
  , specResourceTypes                :: Map ResourceName Resource
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
  , propertyTypeProperties    :: Map Text Property
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON PropertyType where
  parseJSON = JSON.genericParseJSON $ parseOptions "propertyType"

data ComposedType
  = ComposedTypeList
  | ComposedTypeMap
  | ComposedTypeSub SubpropertyName
  deriving (Show, Eq)

instance JSON.FromJSON ComposedType where
  parseJSON = JSON.withText "property type" $ \case
    "List" -> pure ComposedTypeList
    "Map"  -> pure ComposedTypeMap
    other  -> pure $ ComposedTypeSub $ SubpropertyName other

newtype SubpropertyName = SubpropertyName Text
  deriving stock   (Eq, Show, Ord)
  deriving newtype (JSON.FromJSON)

instance ToText SubpropertyName where
  toText (SubpropertyName name) = name

data Property = Property
  { propertyDocumentation     :: Text
  , propertyDuplicatesAllowed :: Maybe Bool
  , propertyItemType          :: Maybe SubpropertyName
  , propertyPrimitiveItemType :: Maybe PrimitiveType
  , propertyPrimitiveType     :: Maybe PrimitiveType
  , propertyRequired          :: Bool
  , propertyType              :: Maybe ComposedType
  , propertyUpdateType        :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON Property where
  parseJSON = JSON.genericParseJSON $ parseOptions "property"

data Resource = Resource
  { resourceAdditionalProperties :: Maybe Bool
  , resourceAttributes           :: Maybe JSON.Value
  , resourceDocumentation        :: Text
  , resourceProperties           :: Map Text Property
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON Resource where
  parseJSON = JSON.genericParseJSON $ parseOptions "resource"

-- | Decode a JSON file into raw spec
readSpec :: FilePath -> IO (Either String Spec)
readSpec = fmap (fmap fixBugs . JSON.eitherDecodeStrict) . BS.readFile

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

-- | There are a few missing properties and resources in the official spec
-- document, as well as inconsistent or incorrect naming. There is an open
-- support ticket with AWS support to fix these things, but for now we are
-- patching things up manually.
fixBugs :: Spec -> Spec
fixBugs spec =
  spec
  -- There are a few naming conflicts with security group types. For example,
  -- there is a resource named AWS::RDS::DBSecurityGroupIngress, and a property
  -- named AWS::RDS::DBSecurityGroup.Ingress. There is a corresponding fix in
  -- the function to render the full type name for
  -- AWS::RDS::DBSecurityGroup.Ingress.
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "RDS" "DBSecurityGroup") (SubpropertyName "IngressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName "AWS" "RDS" "DBSecurityGroup") (SubpropertyName "Ingress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "RDS" "DBSecurityGroup") (SubpropertyName "Ingress"))
  .~ Nothing
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "IngressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "Ingress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "Ingress"))
  .~ Nothing
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "EgressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "Egress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "EC2" "SecurityGroup") (SubpropertyName "Egress"))
  .~ Nothing
  -- Rename AWS::IoT::TopicRule.DynamoDBv2Action to capitalize the "v" so it is
  -- different from AWS::IoT::TopicRule.DynamoDBAction
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "IoT" "TopicRule") (SubpropertyName "DynamoDBV2Action"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName "AWS" "IoT" "TopicRule") (SubpropertyName "DynamoDBv2Action")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName "AWS" "IoT" "TopicRule") (SubpropertyName "DynamoDBv2Action"))
  .~ Nothing
  -- AWS::ECS::TaskDefinition.ContainerDefinition has two properties that are
  -- required, but the doc says they aren't.
  & propertyTypesLens
  . ix (PropertyTypeName (ResourceName "AWS" "ECS" "TaskDefinition") (SubpropertyName "ContainerDefinition"))
  . propertyPropsLens
  . at "Image"
  %~ fmap setRequired
  & propertyTypesLens
  . ix (PropertyTypeName (ResourceName "AWS" "ECS" "TaskDefinition") (SubpropertyName "ContainerDefinition"))
  . propertyPropsLens
  . at "Name"
  %~ fmap setRequired
  where
    propertyTypesLens :: Lens' Spec (Map PropertyTypeName PropertyType)
    propertyTypesLens = lens specPropertyTypes (\s a -> s { specPropertyTypes = a })
    propertyPropsLens :: Lens' PropertyType (Map Text Property)
    propertyPropsLens = lens propertyTypeProperties (\s a -> s { propertyTypeProperties = a })

    setRequired prop = prop { propertyRequired = True }
