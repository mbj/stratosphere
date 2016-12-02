module Gen.Render.Types
  ( Module (..)
  , createModules
  ) where

import Data.Char (isUpper, isNumber)
import qualified Data.Char as Char
import Data.Maybe (fromMaybe)
import Data.Monoid ((<>))
import Data.Set (Set)
import qualified Data.Set as Set
import Data.Text
import Data.Text.Manipulate (lowerHead, toAcronym)

import Gen.Specifications

data Module
  = Module
  { moduleName :: Text
    -- ^ Name of the type and module we'll generate
  , moduleFullAWSName :: Text
    -- ^ The original name given by AWS. Same as ResourceType for resources.
  , moduleResourceType :: Text
    -- ^ The type of resources (example: AWS::EC2::Instance)
  , moduleIsResource :: Bool
  , moduleConstructorName :: Text
  , moduleLensPrefix :: Text
  , moduleFieldPrefix :: Text
  , modulePath :: Text
    -- ^ The prefix for the stratosphere sub-module
  , moduleDocumentation :: Text
    -- ^ The documentation link
  , moduleProperties :: [Property]
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
    buggyFilter Property {..} = (moduleResourceType, propertyName) `Set.member` buggyPropertyNames
    nonBuggyProps = Prelude.filter (not . buggyFilter) moduleProperties
    props = fmap (normalizeProperty allFullNames moduleResourceType) nonBuggyProps

-- | These properties don't exist int he spec so we remove them.
buggyPropertyNames :: Set (Text, Text)
buggyPropertyNames =
  Set.fromList
  [ ("AWS::EC2::SpotFleet", "LaunchSpecifications")
  ]

normalizeProperty :: Set Text -> Text -> Property -> Property
normalizeProperty allFullNames resourceType property =
  property { propertySpecType = normalizeSpecType allFullNames resourceType (propertySpecType property) }

normalizeSpecType :: Set Text -> Text -> SpecType -> SpecType
normalizeSpecType allFullNames resourceType (AtomicType (SubPropertyType name)) =
  AtomicType (SubPropertyType $ normalizeTypeName allFullNames resourceType name)
normalizeSpecType allFullNames resourceType (ListType (SubPropertyType name)) =
  ListType (SubPropertyType $ normalizeTypeName allFullNames resourceType name)
normalizeSpecType allFullNames resourceType (MapType (SubPropertyType name)) =
  MapType (SubPropertyType $ normalizeTypeName allFullNames resourceType name)
normalizeSpecType _ _ type' = type'

normalizeTypeName :: Set Text -> Text -> Text -> Text
-- This is our only naming conflict. There is a resource named
-- AWS::RDS::DBSecurityGroupIngress, and a property named
-- AWS::RDS::DBSecurityGroup.Ingress.
normalizeTypeName _ "AWS::RDS::DBSecurityGroup" "Ingress" = computeModuleName "AWS::RDS::DBSecurityGroup.IngressProperty"
-- Non-errors
normalizeTypeName allFullNames resourceType name
  -- As far as I know, the only property type that isn't fully qualified is
  -- "Tag".
  | Set.member name allFullNames = name
  | Set.member (resourceType <> "." <> name) allFullNames = computeModuleName $ resourceType <> "." <> name
  | otherwise = error $ "Can't normalize property type name: " ++ show (resourceType, unpack name)

-- | We name modules by using everything after the first "::" and removing
-- non-chars. For example, AWS::EC2::Instance is EC2Instance, and
-- AWS::EC2::Instance.Ebs is EC2InstanceEbs.
computeModuleName :: Text -> Text
computeModuleName fullName
  | "::" `isInfixOf` fullName =
    let [_, parent, baseName] = splitOn "::" fullName
    in Data.Text.filter (/= '.') (parent <> baseName)
  | otherwise = fullName

-- | The Resource Type is anything around the colons, but before the dot. The
-- resource type for AWS::EC2::Instance is the same thing: AWS::EC2::Instance.
-- The resource type for AWS::EC2::Instance.Ebs is AWS::EC2::Instance.
computeResourceType :: Text -> Text
computeResourceType fullName
  | "::" `isInfixOf` fullName && "." `isInfixOf` fullName =
    let [type', _] = splitOn "." fullName
    in type'
  | "::" `isInfixOf` fullName = fullName
  | otherwise = ""

computeConstructorName :: Text -> Text
computeConstructorName rawName = pack $ headLower $ unpack $ computeModuleName rawName

-- | Makes consecutive upper case characters lowercase
headLower :: String -> String
headLower [] = []
headLower (x:xs) = Char.toLower x : consecutiveHeadLower xs

consecutiveHeadLower :: String -> String
consecutiveHeadLower [] = []
consecutiveHeadLower [x] = [Char.toLower x]
consecutiveHeadLower (x:nx:xs) =
  if isUpper x && (isUpper nx || isNumber nx)
  then Char.toLower x : consecutiveHeadLower (nx:xs)
  else x:nx:xs

computeLensPrefix :: Text -> Text
-- Special cases with name collisions
computeLensPrefix "AWS::DataPipeline::Pipeline.ParameterObject" = "dpppao"
computeLensPrefix "AWS::DataPipeline::Pipeline.PipelineObject" = "dpppio"
computeLensPrefix "AWS::IoT::TopicRule.S3Action" = "ittrs3a"
computeLensPrefix "AWS::IoT::TopicRule.SqsAction" = "ittrsqa"
computeLensPrefix "AWS::IoT::TopicRule.SnsAction" = "ittrsna"
computeLensPrefix "AWS::ApiGateway::Method" = "agme"
computeLensPrefix "AWS::ApiGateway::Model" = "agmo"
computeLensPrefix "AWS::ElastiCache::SecurityGroup" = "ecseg"
computeLensPrefix "AWS::ElastiCache::SubnetGroup" = "ecsug"
computeLensPrefix "AWS::RDS::DBSecurityGroup" = "rdsdbseg"
computeLensPrefix "AWS::RDS::DBSubnetGroup" = "rdsdbsug"
computeLensPrefix "AWS::Redshift::ClusterSecurityGroup" = "rcseg"
computeLensPrefix "AWS::Redshift::ClusterSubnetGroup" = "rcsug"
-- Everything else
computeLensPrefix rawName = toLower $ fromMaybe rawName $ toAcronym $ computeModuleName rawName

computeFieldPrefix :: Text -> Text
computeFieldPrefix rawName = "_" <> lowerHead (computeModuleName rawName)
