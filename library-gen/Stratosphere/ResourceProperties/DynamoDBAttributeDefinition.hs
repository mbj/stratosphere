{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | A list of attribute definitions for the AWS::DynamoDB::Table resource.
-- Each element is composed of an AttributeName and AttributeType.

module Stratosphere.ResourceProperties.DynamoDBAttributeDefinition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBAttributeDefinition. See
-- 'dynamoDBAttributeDefinition' for a more convenient constructor.
data DynamoDBAttributeDefinition =
  DynamoDBAttributeDefinition
  { _dynamoDBAttributeDefinitionAttributeName :: Val Text
  , _dynamoDBAttributeDefinitionAttributeType :: AttributeType
  } deriving (Show, Generic)

instance ToJSON DynamoDBAttributeDefinition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON DynamoDBAttributeDefinition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'DynamoDBAttributeDefinition' containing required fields
-- as arguments.
dynamoDBAttributeDefinition
  :: Val Text -- ^ 'ddbadAttributeName'
  -> AttributeType -- ^ 'ddbadAttributeType'
  -> DynamoDBAttributeDefinition
dynamoDBAttributeDefinition attributeNamearg attributeTypearg =
  DynamoDBAttributeDefinition
  { _dynamoDBAttributeDefinitionAttributeName = attributeNamearg
  , _dynamoDBAttributeDefinitionAttributeType = attributeTypearg
  }

-- | The name of an attribute. Attribute names can be 1 – 255 characters long
-- and have no character restrictions.
ddbadAttributeName :: Lens' DynamoDBAttributeDefinition (Val Text)
ddbadAttributeName = lens _dynamoDBAttributeDefinitionAttributeName (\s a -> s { _dynamoDBAttributeDefinitionAttributeName = a })

-- | The data type for the attribute. You can specify S for string data, N for
-- numeric data, or B for binary data.
ddbadAttributeType :: Lens' DynamoDBAttributeDefinition AttributeType
ddbadAttributeType = lens _dynamoDBAttributeDefinitionAttributeType (\s a -> s { _dynamoDBAttributeDefinitionAttributeType = a })