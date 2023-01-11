-- | Parse the official AWS specification file.

module Gen.RawSpec
  ( RawSpec(..)
  , RawPropertyType(..)
  , RawProperty(..)
  , RawResourceType(..)
  , RawResourceAttribute(..)
  , readRawSpec
  )
where

import Control.Applicative ((<|>))
import Control.Lens
import Data.Aeson ((.:?))
import Data.Map (Map)
import Data.Maybe (fromMaybe)
import GHC.Generics
import Gen.Prelude

import qualified Data.Aeson      as JSON
import qualified Data.ByteString as BS
import qualified Data.List       as List

data RawSpec = RawSpec
  { rawSpecPropertyTypes                :: Map Text RawPropertyType
  , rawSpecResourceSpecificationVersion :: Text
  , rawSpecResourceTypes                :: Map Text RawResourceType
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawSpec where
  parseJSON = JSON.genericParseJSON $ parseOptions "rawSpec"

data RawPropertyType = RawPropertyType
  { rawPropertyTypeDocumentation :: Text
  , rawPropertyTypeProperties    :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawPropertyType where
  parseJSON = JSON.genericParseJSON $ parseOptions "rawPropertyType"

data RawProperty = RawProperty
  { rawPropertyDocumentation     :: Text
  , rawPropertyDuplicatesAllowed :: Maybe Bool
  , rawPropertyItemType          :: Maybe Text
  , rawPropertyPrimitiveItemType :: Maybe Text
  , rawPropertyPrimitiveType     :: Maybe Text
  , rawPropertyRequired          :: Bool
  , rawPropertyType              :: Maybe Text
  , rawPropertyUpdateType        :: Maybe Text
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawProperty where
  parseJSON = JSON.genericParseJSON $ parseOptions "rawProperty"

data RawResourceType = RawResourceType
  { rawResourceTypeAttributes    :: Maybe (Map Text RawResourceAttribute)
  , rawResourceTypeDocumentation :: Text
  , rawResourceTypeProperties    :: Map Text RawProperty
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawResourceType where
  parseJSON = JSON.genericParseJSON $ parseOptions "rawResourceType"

data RawResourceAttribute = RawResourceAttribute
  { rawResourceAttributeItemType          :: Maybe Text
  , rawResourceAttributePrimitiveItemType :: Maybe Text
  , rawResourceAttributePrimitiveType     :: Maybe Text
  , rawResourceAttributeType              :: Maybe (Either [Text] Text)
  }
  deriving (Show, Eq, Generic)

instance JSON.FromJSON RawResourceAttribute where
  parseJSON (JSON.Object o) =
    RawResourceAttribute <$>
      o .:? "ItemType" <*>
      o .:? "PrimitiveItemType" <*>
      o .:? "PrimitiveType" <*>
      (fmap Left <$> o .:? "Type" <|> fmap Right <$> o .:? "Type")
  parseJSON _ = mempty

-- | Decode a JSON file into a type
readRawSpec :: FilePath -> IO (Either String RawSpec)
readRawSpec = fmap (fmap fixBugs . JSON.eitherDecodeStrict) . BS.readFile

parseOptions :: String -> JSON.Options
parseOptions prefix
  = JSON.defaultOptions
  { JSON.fieldLabelModifier = fieldLabelModifier }
  where
    fieldLabelModifier field
      = fromMaybe (error $ "field: " <> field <> "expected field prefix: " <> prefix)
      $ List.stripPrefix prefix field

-- | There are a few missing properties and resources in the official spec
-- document, as well as inconsistent or incorrect naming. There is an open
-- support ticket with AWS support to fix these things, but for now we are
-- patching things up manually.
fixBugs :: RawSpec -> RawSpec
fixBugs rawSpec =
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
