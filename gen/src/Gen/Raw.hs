-- | Official AWS specification representation.
module Gen.Raw
  ( Spec(..)
  , ComposedType(..)
  , PrimitiveType(..)
  , Property(..)
  , PropertyName(..)
  , PropertyType(..)
  , PropertyTypeName(..)
  , Resource(..)
  , ResourceName(..)
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

data Service = Service
  { namespace :: Text
  , service   :: Text
  }
  deriving (Eq, Show, Ord)

instance ToText Service where
  toText Service{..} = namespace <> "::" <> service

data ResourceName = ResourceName
  { service   :: Service
  , resource  :: Text
  }
  deriving (Eq, Show, Ord)

instance ToText ResourceName where
  toText ResourceName{..} = toText service <> "::" <> resource

instance JSON.FromJSON ResourceName where
  parseJSON = JSON.withText "resource name" parseResourceName

parseResourceName :: Text -> JSON.Parser ResourceName
parseResourceName text =
  case Text.splitOn "::" text of
    [namespace, service, resource] -> pure ResourceName{service = Service{..}, ..}
    _other                         -> fail $ "Unsupported resource name: " <> Text.unpack text

instance JSON.FromJSONKey ResourceName where
  fromJSONKey = JSON.FromJSONKeyTextParser parseResourceName

data PropertyTypeName
  = Tag
  | PropertyTypeName ResourceName PropertyName
  deriving (Eq, Show, Ord)

instance ToText PropertyTypeName where
  toText = \case
    Tag -> "Tag"
    (PropertyTypeName resourceName propertyName) ->
      toText resourceName <> "." <> toText propertyName

instance JSON.FromJSON PropertyTypeName where
  parseJSON = JSON.withText "property type name" parsePropertyTypeName

parsePropertyTypeName :: Text -> JSON.Parser PropertyTypeName
parsePropertyTypeName text =
  case text of
    "Tag" -> pure Tag
    _other ->
      case Text.splitOn "." text of
        [resourceNameText, propertyNameText] -> do
          resourceName <- parseResourceName resourceNameText
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
  , propertyTypeProperties    :: Map PropertyName Property
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
    other  -> pure $ ComposedTypeSub $ PropertyName other

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

data Resource = Resource
  { resourceAdditionalProperties :: Maybe Bool
  , resourceAttributes           :: Maybe JSON.Value
  , resourceDocumentation        :: Text
  , resourceProperties           :: Map PropertyName Property
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
  . at (PropertyTypeName (ResourceName rds "DBSecurityGroup") (PropertyName "IngressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName rds "DBSecurityGroup") (PropertyName "Ingress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName rds "DBSecurityGroup") (PropertyName "Ingress"))
  .~ Nothing
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "IngressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "Ingress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "Ingress"))
  .~ Nothing
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "EgressProperty"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "Egress")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName ec2 "SecurityGroup") (PropertyName "Egress"))
  .~ Nothing
  -- Rename AWS::IoT::TopicRule.DynamoDBv2Action to capitalize the "v" so it is
  -- different from AWS::IoT::TopicRule.DynamoDBAction
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName iot "TopicRule") (PropertyName "DynamoDBV2Action"))
  .~ (spec ^. propertyTypesLens . at (PropertyTypeName (ResourceName iot "TopicRule") (PropertyName "DynamoDBv2Action")))
  & propertyTypesLens
  . at (PropertyTypeName (ResourceName iot "TopicRule") (PropertyName "DynamoDBv2Action"))
  .~ Nothing
  -- AWS::ECS::TaskDefinition.ContainerDefinition has two properties that are
  -- required, but the doc says they aren't.
  & propertyTypesLens
  . ix (PropertyTypeName (ResourceName ecs "TaskDefinition") (PropertyName "ContainerDefinition"))
  . propertyPropsLens
  . at (PropertyName "Image")
  %~ fmap setRequired
  & propertyTypesLens
  . ix (PropertyTypeName (ResourceName ecs "TaskDefinition") (PropertyName "ContainerDefinition"))
  . propertyPropsLens
  . at (PropertyName "Name")
  %~ fmap setRequired
  where
    ec2 = Service "AWS" "EC2"
    ecs = Service "AWS" "ECS"
    iot = Service "AWS" "IoT"
    rds = Service "AWS" "RDS"

    propertyTypesLens :: Lens' Spec (Map PropertyTypeName PropertyType)
    propertyTypesLens = lens specPropertyTypes (\s a -> s { specPropertyTypes = a })
    propertyPropsLens :: Lens' PropertyType (Map PropertyName Property)
    propertyPropsLens = lens propertyTypeProperties (\s a -> s { propertyTypeProperties = a })

    setRequired prop = prop { propertyRequired = True }
