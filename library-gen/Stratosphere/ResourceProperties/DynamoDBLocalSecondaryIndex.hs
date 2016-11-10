{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes local secondary indexes for the AWS::DynamoDB::Table resource.
-- Each index is scoped to a given hash key value. Tables with one or more
-- local secondary indexes are subject to an item collection size limit, where
-- the amount of data within a given item collection cannot exceed 10 GB.

module Stratosphere.ResourceProperties.DynamoDBLocalSecondaryIndex where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBKeySchema
import Stratosphere.ResourceProperties.DynamoDBProjectionObject

-- | Full data type definition for DynamoDBLocalSecondaryIndex. See
-- 'dynamoDBLocalSecondaryIndex' for a more convenient constructor.
data DynamoDBLocalSecondaryIndex =
  DynamoDBLocalSecondaryIndex
  { _dynamoDBLocalSecondaryIndexIndexName :: Val Text
  , _dynamoDBLocalSecondaryIndexKeySchema :: [DynamoDBKeySchema]
  , _dynamoDBLocalSecondaryIndexProjection :: DynamoDBProjectionObject
  } deriving (Show, Generic)

instance ToJSON DynamoDBLocalSecondaryIndex where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON DynamoDBLocalSecondaryIndex where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'DynamoDBLocalSecondaryIndex' containing required fields
-- as arguments.
dynamoDBLocalSecondaryIndex
  :: Val Text -- ^ 'ddblsiIndexName'
  -> [DynamoDBKeySchema] -- ^ 'ddblsiKeySchema'
  -> DynamoDBProjectionObject -- ^ 'ddblsiProjection'
  -> DynamoDBLocalSecondaryIndex
dynamoDBLocalSecondaryIndex indexNamearg keySchemaarg projectionarg =
  DynamoDBLocalSecondaryIndex
  { _dynamoDBLocalSecondaryIndexIndexName = indexNamearg
  , _dynamoDBLocalSecondaryIndexKeySchema = keySchemaarg
  , _dynamoDBLocalSecondaryIndexProjection = projectionarg
  }

-- | The name of the local secondary index. The index name can be 3 – 255
-- characters long and have no character restrictions.
ddblsiIndexName :: Lens' DynamoDBLocalSecondaryIndex (Val Text)
ddblsiIndexName = lens _dynamoDBLocalSecondaryIndexIndexName (\s a -> s { _dynamoDBLocalSecondaryIndexIndexName = a })

-- | The complete index key schema for the local secondary index, which
-- consists of one or more pairs of attribute names and key types. For local
-- secondary indexes, the hash key must be the same as that of the source
-- table.
ddblsiKeySchema :: Lens' DynamoDBLocalSecondaryIndex [DynamoDBKeySchema]
ddblsiKeySchema = lens _dynamoDBLocalSecondaryIndexKeySchema (\s a -> s { _dynamoDBLocalSecondaryIndexKeySchema = a })

-- | Attributes that are copied (projected) from the source table into the
-- index. These attributes are additions to the primary key attributes and
-- index key attributes, which are automatically projected.
ddblsiProjection :: Lens' DynamoDBLocalSecondaryIndex DynamoDBProjectionObject
ddblsiProjection = lens _dynamoDBLocalSecondaryIndexProjection (\s a -> s { _dynamoDBLocalSecondaryIndexProjection = a })