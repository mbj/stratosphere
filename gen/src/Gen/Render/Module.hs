module Gen.Render.Module (Module(..), createModules) where

import Data.Char (isUpper, isNumber)
import Data.Maybe (fromMaybe)
import Data.Set (Set)
import Data.Text.Manipulate (lowerHead, toAcronym)
import Gen.Prelude
import Gen.Spec

import qualified Data.Char as Char
import qualified Data.Set  as Set
import qualified Data.Text as Text
import qualified Gen.Raw   as Raw

data Module = Module
  { moduleName            :: Text
    -- ^ Name of the type and module we'll generate
  , moduleFullAWSName     :: Text
    -- ^ The original name given by AWS. Same as ResourceType for resources.
  , moduleResourceType    :: Text
    -- ^ The type of resources (example: AWS::EC2::Instance)
  , moduleIsResource      :: Bool
  , moduleConstructorName :: Text
  , moduleLensPrefix      :: Text
  , moduleFieldPrefix     :: Text
  , modulePath            :: Text
    -- ^ The prefix for the stratosphere sub-module
  , moduleDocumentation   :: Text
    -- ^ The documentation link
  , moduleProperties      :: [Property]
  }
  deriving (Show, Eq)

createModules :: [PropertyType] -> [ResourceType] -> [Module]
createModules properties resources =
  let
    propertyModules = moduleFromPropertyType <$> properties
    resourceModules = moduleFromResourceType <$> resources
    allPropertyNames = Set.fromList $ propertyTypeName <$> properties
  in fmap (normalizePropertyNames allPropertyNames) (resourceModules ++ propertyModules)

moduleFromPropertyType :: PropertyType -> Module
moduleFromPropertyType (PropertyType fullName doc props) =
  Module
  (computeModuleName fullName)
  fullName
  (computeResourceType fullName)
  False
  (computeConstructorName fullName)
  (computeLensPrefix fullName)
  (computeFieldPrefix fullName)
  "Stratosphere.ResourceProperties"
  doc
  props

moduleFromResourceType :: ResourceType -> Module
moduleFromResourceType (ResourceType fullName doc props) =
  Module
  (computeModuleName fullName)
  fullName
  fullName
  True
  (computeConstructorName fullName)
  (computeLensPrefix fullName)
  (computeFieldPrefix fullName)
  "Stratosphere.Resources"
  doc
  props

-- | We give slightly different names to properties than AWS does. AWS uses a
-- fully qualified name for the property, including the parent resource type.
-- We have to rename all the property types to use our names:
normalizePropertyNames :: Set Text -> Module -> Module
normalizePropertyNames allFullNames module'@Module{..} = module' { moduleProperties = props }
  where
    props = fmap (normalizeProperty allFullNames moduleResourceType) moduleProperties

normalizeProperty :: Set Text -> Text -> Property -> Property
normalizeProperty allFullNames resourceType property =
  property { propertySpecType = normalizeSpecType allFullNames resourceType (propertySpecType property) }

normalizeSpecType :: Set Text -> Text -> SpecType -> SpecType
normalizeSpecType allFullNames resourceType = \case
  (AtomicType (SubPropertyType name)) ->
    AtomicType (SubPropertyType . Raw.SubpropertyName $ normalizeTypeName allFullNames resourceType name)
  (ListType (SubPropertyType name)) ->
    ListType (SubPropertyType . Raw.SubpropertyName $ normalizeTypeName allFullNames resourceType name)
  (MapType (SubPropertyType name)) ->
    MapType (SubPropertyType . Raw.SubpropertyName $ normalizeTypeName allFullNames resourceType name)
  other -> other

normalizeTypeName :: Set Text -> Text -> Raw.SubpropertyName -> Text
-- There are a few naming conflicts with security group types. For example,
-- there is a resource named AWS::RDS::DBSecurityGroupIngress, and a property
-- named AWS::RDS::DBSecurityGroup.Ingress.
normalizeTypeName _ "AWS::RDS::DBSecurityGroup" (Raw.toText -> "Ingress") = computeModuleName "AWS::RDS::DBSecurityGroup.IngressProperty"
normalizeTypeName _ "AWS::EC2::SecurityGroup" (Raw.toText -> "Ingress") = computeModuleName "AWS::EC2::SecurityGroup.IngressProperty"
normalizeTypeName _ "AWS::EC2::SecurityGroup" (Raw.toText -> "Egress") = computeModuleName "AWS::EC2::SecurityGroup.EgressProperty"
-- Rename AWS::IoT::TopicRule.DynamoDBv2Action to capitalize the "v" so it is
-- different from AWS::IoT::TopicRule.DynamoDBAction
normalizeTypeName _ "AWS::IoT::TopicRule" (Raw.toText -> "DynamoDBv2Action") = computeModuleName "AWS::IoT::TopicRule.DynamoDBV2Action"
-- Non-errors
normalizeTypeName allFullNames resourceType (Raw.toText -> subpropertyName)
  -- As far as I know, the only property type that isn't fully qualified is
  -- "Tag".
  | Set.member subpropertyName allFullNames = subpropertyName
  | Set.member (resourceType <> "." <> subpropertyName) allFullNames = computeModuleName $ resourceType <> "." <> subpropertyName
  | otherwise = error $ "Can't normalize property type name: " ++ show (resourceType, Text.unpack subpropertyName)

-- | We name modules by using everything after the first "::" and removing
-- non-chars. For example, AWS::EC2::Instance is EC2Instance, and
-- AWS::EC2::Instance.Ebs is EC2InstanceEbs.
computeModuleName :: Text -> Text
computeModuleName fullName
  -- AWS::ElasticLoadBalancingV2::ListenerCertificate conflicts with
  -- AWS::ElasticLoadBalancingV2::Listener.Certificate
  | fullName == "AWS::ElasticLoadBalancingV2::ListenerCertificate" =
      computeModuleName "AWS::ElasticLoadBalancingV2::ListenerCertificateResource"
  | "::" `Text.isInfixOf` fullName = fromComponents $ Text.splitOn "::" fullName
  | otherwise = fullName
  where
    fromComponents = \case
      [_, parent, baseName] -> Text.filter (/= '.') (parent <> baseName)
      _other                -> error $ "Unexpected module full name: " <> Text.unpack fullName

-- | The Resource Type is anything around the colons, but before the dot. The
-- resource type for AWS::EC2::Instance is the same thing: AWS::EC2::Instance.
-- The resource type for AWS::EC2::Instance.Ebs is AWS::EC2::Instance.
computeResourceType :: Text -> Text
computeResourceType fullName = fst $ Text.breakOn "." fullName

computeConstructorName :: Text -> Text
computeConstructorName rawName = Text.pack $ headLower $ Text.unpack $ computeModuleName rawName

-- | Makes consecutive upper case characters lowercase
headLower :: String -> String
headLower = \case
  []     -> []
  (x:xs) -> Char.toLower x : consecutiveHeadLower xs

consecutiveHeadLower :: String -> String
consecutiveHeadLower = \case
  []        -> []
  [x]       -> [Char.toLower x]
  (x:nx:xs) ->
    if isUpper x && (isUpper nx || isNumber nx)
    then Char.toLower x : consecutiveHeadLower (nx:xs)
    else x:nx:xs

computeLensPrefix :: Text -> Text
computeLensPrefix = \case
  -- Special cases with name collisions
  "AWS::ApiGateway::Method"                                             -> "agme"
  "AWS::ApiGateway::Model"                                              -> "agmo"
  "AWS::ApiGatewayV2::Api"                                              -> "agvap"
  "AWS::ApiGatewayV2::Authorizer"                                       -> "agvau"
  "AWS::DataPipeline::Pipeline.ParameterObject"                         -> "dpppao"
  "AWS::DataPipeline::Pipeline.PipelineObject"                          -> "dpppio"
  "AWS::EC2::CarrierGateway"                                            -> "eccag"
  "AWS::EC2::CustomerGateway"                                           -> "eccug"
  "AWS::ElastiCache::SecurityGroup"                                     -> "ecseg"
  "AWS::ElastiCache::SubnetGroup"                                       -> "ecsug"
  "AWS::ElasticLoadBalancingV2::ListenerRule.HostHeaderConfig"          -> "elbvlrhohc"
  "AWS::ElasticLoadBalancingV2::ListenerRule.HttpHeaderConfig"          -> "elbvlrhthc"
  "AWS::Greengrass::ConnectorDefinition"                                -> "gcdn"
  "AWS::Greengrass::ConnectorDefinition.Connector"                      -> "gcdcn"
  "AWS::Greengrass::ConnectorDefinitionVersion.Connector"               -> "gcdvcn"
  "AWS::Greengrass::CoreDefinition"                                     -> "gcdr"
  "AWS::Greengrass::CoreDefinition.Core"                                -> "gcdcr"
  "AWS::Greengrass::CoreDefinitionVersion.Core"                         -> "gcdvcr"
  "AWS::GuardDuty::Master"                                              -> "gdma"
  "AWS::GuardDuty::Member"                                              -> "gdme"
  "AWS::IoT1Click::Placement"                                           -> "itcpl"
  "AWS::IoT1Click::Project"                                             -> "itcpr"
  "AWS::IoT::TopicRule.S3Action"                                        -> "ittrs3a"
  "AWS::IoT::TopicRule.SnsAction"                                       -> "ittrsna"
  "AWS::IoT::TopicRule.SqsAction"                                       -> "ittrsqa"
  "AWS::IoTAnalytics::Dataset"                                          -> "itads"
  "AWS::IoTAnalytics::Dataset.RetentionPeriod"                          -> "itadsrp"
  "AWS::IoTAnalytics::Datastore"                                        -> "itadst"
  "AWS::IoTAnalytics::Datastore.RetentionPeriod"                        -> "itadstrp"
  "AWS::IoTEvents::DetectorModel.DynamoDB"                              -> "itedmddb"
  "AWS::IoTEvents::DetectorModel.DynamoDBv2"                            -> "itedmddbv"
  "AWS::IoTEvents::DetectorModel.OnEnter"                               -> "itedmoen"
  "AWS::IoTEvents::DetectorModel.OnExit"                                -> "itedmoex"
  "AWS::IoTEvents::DetectorModel.Sns"                                   -> "itedmsn"
  "AWS::IoTEvents::DetectorModel.Sqs"                                   -> "itedmsq"
  "AWS::KinesisFirehose::DeliveryStream.SplunkDestinationConfiguration" -> "kfdsspdc"
  "AWS::RDS::DBSecurityGroup"                                           -> "rdsdbseg"
  "AWS::RDS::DBSubnetGroup"                                             -> "rdsdbsug"
  "AWS::Redshift::ClusterSecurityGroup"                                 -> "rcseg"
  "AWS::Redshift::ClusterSubnetGroup"                                   -> "rcsug"
  "AWS::SES::ReceiptRule.S3Action"                                      -> "sesrrsa"
  "AWS::SES::ReceiptRule.StopAction"                                    -> "sesrrsta"
  "AWS::SSM::MaintenanceWindowTarget"                                   -> "ssmmwtar"
  "AWS::SSM::MaintenanceWindowTarget.Targets"                           -> "ssmmwtart"
  "AWS::SSM::MaintenanceWindowTask"                                     -> "ssmmwtas"
  "AWS::SSM::MaintenanceWindowTask.Target"                              -> "ssmmwtast"
  "AWS::ServiceCatalog::PortfolioPrincipalAssociation"                  -> "scppria"
  "AWS::ServiceCatalog::PortfolioProductAssociation"                    -> "scpproa"
  "AWS::ServiceDiscovery::PrivateDnsNamespace"                          -> "sdprdn"
  "AWS::ServiceDiscovery::PublicDnsNamespace"                           -> "sdpudn"
  "AWS::WAFv2::IPSet"                                                   -> "wafvips"
  "AWS::WAFv2::RuleGroup.StatementThree"                                -> "wafrgsth"
  "AWS::WAFv2::RuleGroup.StatementTwo"                                  -> "wafrgstw"
  "AWS::WAFv2::WebACL"                                                  -> "wafvwacl"
  "AWS::WAFv2::WebACL.StatementThree"                                   -> "wafwaclsth"
  "AWS::WAFv2::WebACL.StatementTwo"                                     -> "wafwaclstw"
  rawName -> Text.toLower $ fromMaybe rawName $ toAcronym $ computeModuleName rawName

computeFieldPrefix :: Text -> Text
computeFieldPrefix rawName = "_" <> lowerHead (computeModuleName rawName)
