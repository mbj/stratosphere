-- | Official AWS specification representation.
module Gen.Raw
  ( Spec(..)
  , PrimitiveType(..)
  , Property(..)
  , PropertySpecification(..)
  , PropertyType(..)
  , ResourceSpecification(..)
  , SubpropertyName(..)
  , readSpec
  )
where

import Control.Lens
import Data.Map (Map)
import Data.Maybe (fromMaybe)
import GHC.Generics
import Gen.Prelude

import qualified Data.Aeson      as JSON
import qualified Data.ByteString as BS
import qualified Data.List       as List
import qualified Data.Text       as Text

data Spec = Spec
  { specPropertyTypes                :: Map Text PropertySpecification
  , specResourceSpecificationVersion :: Text
  , specResourceTypes                :: Map Text ResourceSpecification
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

data PropertySpecification = PropertySpecification
  { propertyTypeDocumentation :: Text
  , propertyTypeProperties    :: Map Text Property
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON PropertySpecification where
  parseJSON = JSON.genericParseJSON $ parseOptions "propertyType"

data PropertyType
  = PropertyTypeList
  | PropertyTypeMap
  | PropertyTypeSub SubpropertyName
  deriving (Show, Eq)

instance JSON.FromJSON PropertyType where
  parseJSON = JSON.withText "primitive type" $ \case
    "List" -> pure PropertyTypeList
    "Map"  -> pure PropertyTypeMap
    other  -> pure $ PropertyTypeSub $ SubpropertyName other

newtype SubpropertyName = SubpropertyName { toText :: Text }
  deriving stock   (Eq, Show)
  deriving newtype (JSON.FromJSON)

data Property = Property
  { propertyDocumentation     :: Text
  , propertyDuplicatesAllowed :: Maybe Bool
  , propertyItemType          :: Maybe SubpropertyName
  , propertyPrimitiveItemType :: Maybe PrimitiveType
  , propertyPrimitiveType     :: Maybe PrimitiveType
  , propertyRequired          :: Bool
  , propertyType              :: Maybe PropertyType
  , propertyUpdateType        :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON Property where
  parseJSON = JSON.genericParseJSON $ parseOptions "property"

data ResourceSpecification = ResourceSpecification
  { resourceTypeAdditionalProperties :: Maybe Bool
  , resourceTypeAttributes           :: Maybe JSON.Value
  , resourceTypeDocumentation        :: Text
  , resourceTypeProperties           :: Map Text Property
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON ResourceSpecification where
  parseJSON = JSON.genericParseJSON $ parseOptions "resourceType"

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
  . at "AWS::RDS::DBSecurityGroup.IngressProperty"
  .~ (spec ^. propertyTypesLens . at "AWS::RDS::DBSecurityGroup.Ingress")
  & propertyTypesLens
  . at "AWS::RDS::DBSecurityGroup.Ingress"
  .~ Nothing
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.IngressProperty"
  .~ (spec ^. propertyTypesLens . at "AWS::EC2::SecurityGroup.Ingress")
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.Ingress"
  .~ Nothing
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.EgressProperty"
  .~ (spec ^. propertyTypesLens . at "AWS::EC2::SecurityGroup.Egress")
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.Egress"
  .~ Nothing
  -- Rename AWS::IoT::TopicRule.DynamoDBv2Action to capitalize the "v" so it is
  -- different from AWS::IoT::TopicRule.DynamoDBAction
  & propertyTypesLens
  . at "AWS::IoT::TopicRule.DynamoDBV2Action"
  .~ (spec ^. propertyTypesLens . at "AWS::IoT::TopicRule.DynamoDBv2Action")
  & propertyTypesLens
  . at "AWS::IoT::TopicRule.DynamoDBv2Action"
  .~ Nothing
  -- AWS::ECS::TaskDefinition.ContainerDefinition has two properties that are
  -- required, but the doc says they aren't.
  & propertyTypesLens
  . ix "AWS::ECS::TaskDefinition.ContainerDefinition"
  . propertyPropsLens
  . at "Image"
  %~ fmap setRequired
  & propertyTypesLens
  . ix "AWS::ECS::TaskDefinition.ContainerDefinition"
  . propertyPropsLens
  . at "Name"
  %~ fmap setRequired
  where
    propertyTypesLens :: Lens' Spec (Map Text PropertySpecification)
    propertyTypesLens = lens specPropertyTypes (\s a -> s { specPropertyTypes = a })
    propertyPropsLens :: Lens' PropertySpecification (Map Text Property)
    propertyPropsLens = lens propertyTypeProperties (\s a -> s { propertyTypeProperties = a })

    setRequired prop = prop { propertyRequired = True }
