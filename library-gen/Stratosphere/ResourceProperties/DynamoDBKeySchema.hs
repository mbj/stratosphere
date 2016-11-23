{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes a primary key for the AWS::DynamoDB::Table resource or a key
-- schema for an index. Each element is composed of an AttributeName and
-- KeyType. For the primary key of an Amazon DynamoDB table that consists of
-- only a hash attribute, specify one element with a KeyType of HASH. For the
-- primary key of an Amazon DynamoDB table that consists of a hash and range
-- attributes, specify two elements: one with a KeyType of HASH and one with a
-- KeyType of RANGE. For a complete discussion of DynamoDB primary keys, see
-- Primary Key in the Amazon DynamoDB Developer Guide.

module Stratosphere.ResourceProperties.DynamoDBKeySchema where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.Types

-- | Full data type definition for DynamoDBKeySchema. See 'dynamoDBKeySchema'
-- for a more convenient constructor.
data DynamoDBKeySchema =
  DynamoDBKeySchema
  { _dynamoDBKeySchemaAttributeName :: Val Text
  , _dynamoDBKeySchemaKeyType :: KeyType
  } deriving (Show, Generic)

instance ToJSON DynamoDBKeySchema where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON DynamoDBKeySchema where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'DynamoDBKeySchema' containing required fields as
-- arguments.
dynamoDBKeySchema
  :: Val Text -- ^ 'ddbksAttributeName'
  -> KeyType -- ^ 'ddbksKeyType'
  -> DynamoDBKeySchema
dynamoDBKeySchema attributeNamearg keyTypearg =
  DynamoDBKeySchema
  { _dynamoDBKeySchemaAttributeName = attributeNamearg
  , _dynamoDBKeySchemaKeyType = keyTypearg
  }

-- | The attribute name that is used as the primary key for this table.
-- Primary key element names can be 1 – 255 characters long and have no
-- character restrictions.
ddbksAttributeName :: Lens' DynamoDBKeySchema (Val Text)
ddbksAttributeName = lens _dynamoDBKeySchemaAttributeName (\s a -> s { _dynamoDBKeySchemaAttributeName = a })

-- | Represents the attribute data, consisting of the data type and the
-- attribute value itself. You can specify HASH or RANGE.
ddbksKeyType :: Lens' DynamoDBKeySchema KeyType
ddbksKeyType = lens _dynamoDBKeySchemaKeyType (\s a -> s { _dynamoDBKeySchemaKeyType = a })