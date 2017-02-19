{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html

module Stratosphere.ResourceProperties.DynamoDBTableKeySchema where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBTableKeySchema. See
-- | 'dynamoDBTableKeySchema' for a more convenient constructor.
data DynamoDBTableKeySchema =
  DynamoDBTableKeySchema
  { _dynamoDBTableKeySchemaAttributeName :: Val Text
  , _dynamoDBTableKeySchemaKeyType :: Val KeyType
  } deriving (Show, Eq)

instance ToJSON DynamoDBTableKeySchema where
  toJSON DynamoDBTableKeySchema{..} =
    object $
    catMaybes
    [ Just ("AttributeName" .= _dynamoDBTableKeySchemaAttributeName)
    , Just ("KeyType" .= _dynamoDBTableKeySchemaKeyType)
    ]

instance FromJSON DynamoDBTableKeySchema where
  parseJSON (Object obj) =
    DynamoDBTableKeySchema <$>
      obj .: "AttributeName" <*>
      obj .: "KeyType"
  parseJSON _ = mempty

-- | Constructor for 'DynamoDBTableKeySchema' containing required fields as
-- | arguments.
dynamoDBTableKeySchema
  :: Val Text -- ^ 'ddbtksAttributeName'
  -> Val KeyType -- ^ 'ddbtksKeyType'
  -> DynamoDBTableKeySchema
dynamoDBTableKeySchema attributeNamearg keyTypearg =
  DynamoDBTableKeySchema
  { _dynamoDBTableKeySchemaAttributeName = attributeNamearg
  , _dynamoDBTableKeySchemaKeyType = keyTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-attributename
ddbtksAttributeName :: Lens' DynamoDBTableKeySchema (Val Text)
ddbtksAttributeName = lens _dynamoDBTableKeySchemaAttributeName (\s a -> s { _dynamoDBTableKeySchemaAttributeName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-keyschema.html#aws-properties-dynamodb-keyschema-keytype
ddbtksKeyType :: Lens' DynamoDBTableKeySchema (Val KeyType)
ddbtksKeyType = lens _dynamoDBTableKeySchemaKeyType (\s a -> s { _dynamoDBTableKeySchemaKeyType = a })
