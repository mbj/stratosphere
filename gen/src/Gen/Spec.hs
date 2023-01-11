-- | This transforms the output from ReadRawSpecFile for consumption into the
-- generator.

module Gen.Spec
  ( Spec(..)
  , specFromRaw
  , PropertyType(..)
  , Property(..)
  , SpecType(..)
  , subPropertyTypeNames
  , customTypeNames
  , AtomicType(..)
  , ResourceType(..)
  )
where

import Control.Lens
import Data.List (sortOn)
import Data.Map (Map, toList)
import Data.Maybe (catMaybes)
import GHC.Generics hiding (to)
import Gen.Prelude
import Gen.RawSpec

import qualified Data.Text as Text

data Spec = Spec
  { specPropertyTypes                :: [PropertyType]
  , specResourceSpecificationVersion :: Text
  , specResourceTypes                :: [ResourceType]
  }
  deriving (Show, Eq)

specFromRaw :: RawSpec -> Spec
specFromRaw rawSpec = Spec props version resources
  where
    (RawSpec rawProps version rawResources) = fixSpecBugs rawSpec
    props = uncurry propertyTypeFromRaw <$> sortOn fst (toList rawProps)
    resources = uncurry resourceTypeFromRaw <$> sortOn fst (toList rawResources)

-- | There are a few missing properties and resources in the official spec
-- document, as well as inconsistent or incorrect naming. There is an open
-- support ticket with AWS support to fix these things, but for now we are
-- patching things up manually.
fixSpecBugs :: RawSpec -> RawSpec
fixSpecBugs rawSpec =
  rawSpec
  -- There are a few naming conflicts with security group types. For example,
  -- there is a resource named AWS::RDS::DBSecurityGroupIngress, and a property
  -- named AWS::RDS::DBSecurityGroup.Ingress. There is a corresponding fix in
  -- the function to render the full type name for
  -- AWS::RDS::DBSecurityGroup.Ingress.
  & propertyTypesLens
  . at "AWS::RDS::DBSecurityGroup.IngressProperty"
  .~ (rawSpec ^. propertyTypesLens . at "AWS::RDS::DBSecurityGroup.Ingress")
  & propertyTypesLens
  . at "AWS::RDS::DBSecurityGroup.Ingress"
  .~ Nothing
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.IngressProperty"
  .~ (rawSpec ^. propertyTypesLens . at "AWS::EC2::SecurityGroup.Ingress")
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.Ingress"
  .~ Nothing
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.EgressProperty"
  .~ (rawSpec ^. propertyTypesLens . at "AWS::EC2::SecurityGroup.Egress")
  & propertyTypesLens
  . at "AWS::EC2::SecurityGroup.Egress"
  .~ Nothing
  -- Rename AWS::IoT::TopicRule.DynamoDBv2Action to capitalize the "v" so it is
  -- different from AWS::IoT::TopicRule.DynamoDBAction
  & propertyTypesLens
  . at "AWS::IoT::TopicRule.DynamoDBV2Action"
  .~ (rawSpec ^. propertyTypesLens . at "AWS::IoT::TopicRule.DynamoDBv2Action")
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
    propertyTypesLens :: Lens' RawSpec (Map Text RawPropertyType)
    propertyTypesLens = lens rawSpecPropertyTypes (\s a -> s { rawSpecPropertyTypes = a })
    propertyPropsLens :: Lens' RawPropertyType (Map Text RawProperty)
    propertyPropsLens = lens rawPropertyTypeProperties (\s a -> s { rawPropertyTypeProperties = a })

    setRequired rawProp = rawProp { rawPropertyRequired = True }

data PropertyType = PropertyType
  { propertyTypeName          :: Text
  , propertyTypeDocumentation :: Text
  , propertyTypeProperties    :: [Property]
  }
  deriving (Show, Eq)

propertyTypeFromRaw :: Text -> RawPropertyType -> PropertyType
propertyTypeFromRaw fullName (RawPropertyType doc props) =
  PropertyType fullName doc (uncurry (propertyFromRaw fullName) <$> sortOn fst (toList props))

data Property = Property
  { propertyName          :: Text
  , propertyDocumentation :: Text
  --, propertyDuplicatesAllowed :: Maybe Bool -- Don't care about this
  , propertySpecType      :: SpecType
  , propertyRequired      :: Bool
  --, propertyUpdateType :: Maybe Text -- Don't care about this
  }
  deriving (Show, Eq)

propertyFromRaw :: Text -> Text -> RawProperty -> Property
propertyFromRaw fullTypeName name (RawProperty doc _ itemType primItemType primType required type' _) =
  Property name doc (rawToSpecType fullTypeName name primType type' primItemType itemType) required

data SpecType
  = AtomicType AtomicType
  | ListType AtomicType
  | MapType AtomicType
  deriving (Show, Eq)

rawToSpecType :: Text -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> Maybe Text -> SpecType
-- Overrides for our custom types
rawToSpecType "AWS::ApiGateway::Authorizer" "Type" _ _ _ _ = AtomicType $ CustomType "AuthorizerType"
rawToSpecType "AWS::ApiGateway::Method" "AuthorizationType" _ _ _ _ = AtomicType $ CustomType "AuthorizationType"
rawToSpecType "AWS::ApiGateway::Method.Integration" "IntegrationHttpMethod" _ _ _ _ = AtomicType $ CustomType "HttpMethod"
rawToSpecType "AWS::ApiGateway::Method.Integration" "PassthroughBehavior" _ _ _ _ = AtomicType $ CustomType "PassthroughBehavior"
rawToSpecType "AWS::ApiGateway::Method.Integration" "Type" _ _ _ _ = AtomicType $ CustomType "ApiBackendType"
rawToSpecType "AWS::ApiGateway::UsagePlan.QuotaSettings" "Period" _ _ _ _ = AtomicType $ CustomType "Period"
rawToSpecType "AWS::DynamoDB::Table.AttributeDefinition" "AttributeType" _ _ _ _ = AtomicType $ CustomType "AttributeType"
rawToSpecType "AWS::DynamoDB::Table.KeySchema" "KeyType" _ _ _ _ = AtomicType $ CustomType "KeyType"
rawToSpecType "AWS::DynamoDB::Table.Projection" "ProjectionType" _ _ _ _ = AtomicType $ CustomType "ProjectionType"
rawToSpecType "AWS::DynamoDB::Table.StreamSpecification" "StreamViewType" _ _ _ _ = AtomicType $ CustomType "StreamViewType"
rawToSpecType "AWS::Events::Rule" "State" _ _ _ _ = AtomicType $ CustomType "EnabledState"
rawToSpecType "AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration" "CompressionFormat" _ _ _ _ = AtomicType $ CustomType "KinesisFirehoseS3CompressionFormat"
rawToSpecType "AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration" "S3BackupMode" _ _ _ _ = AtomicType $ CustomType "KinesisFirehoseElasticsearchS3BackupMode"
rawToSpecType "AWS::KinesisFirehose::DeliveryStream.EncryptionConfiguration" "NoEncryptionConfig" _ _ _ _ = AtomicType $ CustomType "KinesisFirehoseNoEncryptionConfig"
rawToSpecType "AWS::Lambda::Function" "Runtime" _ _ _ _ = AtomicType $ CustomType "Runtime"
rawToSpecType "AWS::S3::Bucket" "AccessControl" _ _ _ _ = AtomicType $ CustomType "CannedACL"
rawToSpecType "AWS::SNS::Subscription" "Protocol" _ _ _ _ = AtomicType $ CustomType "SNSProtocol"
rawToSpecType "AWS::SNS::Topic.Subscription" "Protocol" _ _ _ _ = AtomicType $ CustomType "SNSProtocol"
rawToSpecType _ "HttpMethod" _ _ _ _ = AtomicType $ CustomType "HttpMethod"
rawToSpecType _ "LoggingLevel" _ _ _ _ = AtomicType $ CustomType "LoggingLevel"
-- Default
rawToSpecType _ _ primType type' primItemType itemType = rawToSpecType' primType type' primItemType itemType

rawToSpecType'
  :: Maybe Text -- PrimitiveType
  -> Maybe Text -- Type
  -> Maybe Text -- PrimitiveItemType
  -> Maybe Text -- ItemType
  -> SpecType
-- Just primitive type, nothing else
rawToSpecType' (Just prim) Nothing Nothing Nothing = AtomicType $ textToPrimitiveType prim
-- A list of primitives
rawToSpecType' Nothing (Just "List") (Just prim) Nothing = ListType $ textToPrimitiveType prim
-- A list of non-primitives
rawToSpecType' Nothing (Just "List") Nothing (Just item) = ListType $ SubPropertyType item
-- A map of primitives
rawToSpecType' Nothing (Just "Map") (Just prim) Nothing = MapType $ textToPrimitiveType prim
-- A map of non-primitives
rawToSpecType' Nothing (Just "Map") Nothing (Just item) = MapType $ SubPropertyType item
-- A non-primitive type
rawToSpecType' Nothing (Just prop) Nothing Nothing = AtomicType $ SubPropertyType prop
rawToSpecType' prim type' primItem item = error $ "Unknown raw type: " ++ show (prim, type', primItem, item)

data AtomicType
  = StringPrimitive
  | IntegerPrimitive
  | DoublePrimitive
  | BoolPrimitive
  | JsonPrimitive
  | SubPropertyType Text
  | CustomType Text
  deriving (Show, Eq)

textToPrimitiveType :: Text -> AtomicType
textToPrimitiveType "String" = StringPrimitive
textToPrimitiveType "Long" = IntegerPrimitive
textToPrimitiveType "Integer" = IntegerPrimitive
textToPrimitiveType "Double" = DoublePrimitive
textToPrimitiveType "Boolean" = BoolPrimitive
textToPrimitiveType "Timestamp" = StringPrimitive
textToPrimitiveType "Json" = JsonPrimitive
textToPrimitiveType t = error $ "Unknown primitive type: " ++ Text.unpack t

subPropertyTypeName :: SpecType -> Maybe Text
subPropertyTypeName (AtomicType (SubPropertyType name)) = Just name
subPropertyTypeName (ListType (SubPropertyType name)) = Just name
subPropertyTypeName (MapType (SubPropertyType name)) = Just name
subPropertyTypeName _ = Nothing

customTypeName :: SpecType -> Maybe Text
customTypeName (AtomicType (CustomType name)) = Just name
customTypeName (ListType (CustomType name)) = Just name
customTypeName (MapType (CustomType name)) = Just name
customTypeName _ = Nothing

subPropertyTypeNames :: [Property] -> [Text]
subPropertyTypeNames = catMaybes . fmap (subPropertyTypeName . propertySpecType)

customTypeNames :: [Property] -> [Text]
customTypeNames = catMaybes . fmap (customTypeName . propertySpecType)

data ResourceType = ResourceType
  { resourceTypeFullName      :: Text
  --, resourceTypeAttributes :: [ResourceAttribute] -- Don't care about this yet, could be useful
  , resourceTypeDocumentation :: Text
  , resourceTypeProperties    :: [Property]
  }
  deriving (Show, Eq, Generic)

resourceTypeFromRaw :: Text -> RawResourceType -> ResourceType
resourceTypeFromRaw fullName (RawResourceType _ doc props) =
  ResourceType fullName doc (uncurry (propertyFromRaw fullName) <$> sortOn fst (toList props))
