{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html

module Stratosphere.ResourceProperties.DynamoDBTableAttributeDefinition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableAttributeDefinition. See
-- | 'dynamoDBTableAttributeDefinition' for a more convenient constructor.
data DynamoDBTableAttributeDefinition =
  DynamoDBTableAttributeDefinition
  { _dynamoDBTableAttributeDefinitionAttributeName :: Val Text
  , _dynamoDBTableAttributeDefinitionAttributeType :: Val AttributeType
  } deriving (Show, Eq, Generic)

instance ToJSON DynamoDBTableAttributeDefinition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON DynamoDBTableAttributeDefinition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'DynamoDBTableAttributeDefinition' containing required
-- | fields as arguments.
dynamoDBTableAttributeDefinition
  :: Val Text -- ^ 'ddbtadAttributeName'
  -> Val AttributeType -- ^ 'ddbtadAttributeType'
  -> DynamoDBTableAttributeDefinition
dynamoDBTableAttributeDefinition attributeNamearg attributeTypearg =
  DynamoDBTableAttributeDefinition
  { _dynamoDBTableAttributeDefinitionAttributeName = attributeNamearg
  , _dynamoDBTableAttributeDefinitionAttributeType = attributeTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename
ddbtadAttributeName :: Lens' DynamoDBTableAttributeDefinition (Val Text)
ddbtadAttributeName = lens _dynamoDBTableAttributeDefinitionAttributeName (\s a -> s { _dynamoDBTableAttributeDefinitionAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-attributedef.html#cfn-dynamodb-attributedef-attributename-attributetype
ddbtadAttributeType :: Lens' DynamoDBTableAttributeDefinition (Val AttributeType)
ddbtadAttributeType = lens _dynamoDBTableAttributeDefinitionAttributeType (\s a -> s { _dynamoDBTableAttributeDefinitionAttributeType = a })
