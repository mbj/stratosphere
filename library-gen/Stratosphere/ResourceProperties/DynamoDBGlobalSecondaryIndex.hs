{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes global secondary indexes for the AWS::DynamoDB::Table resource.

module Stratosphere.ResourceProperties.DynamoDBGlobalSecondaryIndex where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBKeySchema
import Stratosphere.ResourceProperties.DynamoDBProjectionObject
import Stratosphere.ResourceProperties.DynamoDBProvisionedThroughput

-- | Full data type definition for DynamoDBGlobalSecondaryIndex. See
-- 'dynamoDBGlobalSecondaryIndex' for a more convenient constructor.
data DynamoDBGlobalSecondaryIndex =
  DynamoDBGlobalSecondaryIndex
  { _dynamoDBGlobalSecondaryIndexIndexName :: Val Text
  , _dynamoDBGlobalSecondaryIndexKeySchema :: [DynamoDBKeySchema]
  , _dynamoDBGlobalSecondaryIndexProjection :: DynamoDBProjectionObject
  , _dynamoDBGlobalSecondaryIndexProvisionedThroughput :: DynamoDBProvisionedThroughput
  } deriving (Show, Generic)

instance ToJSON DynamoDBGlobalSecondaryIndex where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON DynamoDBGlobalSecondaryIndex where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'DynamoDBGlobalSecondaryIndex' containing required fields
-- as arguments.
dynamoDBGlobalSecondaryIndex
  :: Val Text -- ^ 'ddbgsiIndexName'
  -> [DynamoDBKeySchema] -- ^ 'ddbgsiKeySchema'
  -> DynamoDBProjectionObject -- ^ 'ddbgsiProjection'
  -> DynamoDBProvisionedThroughput -- ^ 'ddbgsiProvisionedThroughput'
  -> DynamoDBGlobalSecondaryIndex
dynamoDBGlobalSecondaryIndex indexNamearg keySchemaarg projectionarg provisionedThroughputarg =
  DynamoDBGlobalSecondaryIndex
  { _dynamoDBGlobalSecondaryIndexIndexName = indexNamearg
  , _dynamoDBGlobalSecondaryIndexKeySchema = keySchemaarg
  , _dynamoDBGlobalSecondaryIndexProjection = projectionarg
  , _dynamoDBGlobalSecondaryIndexProvisionedThroughput = provisionedThroughputarg
  }

-- | The name of the global secondary index. The index name can be 3 – 255
-- characters long and have no character restrictions.
ddbgsiIndexName :: Lens' DynamoDBGlobalSecondaryIndex (Val Text)
ddbgsiIndexName = lens _dynamoDBGlobalSecondaryIndexIndexName (\s a -> s { _dynamoDBGlobalSecondaryIndexIndexName = a })

-- | The complete index key schema for the global secondary index, which
-- consists of one or more pairs of attribute names and key types.
ddbgsiKeySchema :: Lens' DynamoDBGlobalSecondaryIndex [DynamoDBKeySchema]
ddbgsiKeySchema = lens _dynamoDBGlobalSecondaryIndexKeySchema (\s a -> s { _dynamoDBGlobalSecondaryIndexKeySchema = a })

-- | Attributes that are copied (projected) from the source table into the
-- index. These attributes are in addition to the primary key attributes and
-- index key attributes, which are automatically projected.
ddbgsiProjection :: Lens' DynamoDBGlobalSecondaryIndex DynamoDBProjectionObject
ddbgsiProjection = lens _dynamoDBGlobalSecondaryIndexProjection (\s a -> s { _dynamoDBGlobalSecondaryIndexProjection = a })

-- | The provisioned throughput settings for the index.
ddbgsiProvisionedThroughput :: Lens' DynamoDBGlobalSecondaryIndex DynamoDBProvisionedThroughput
ddbgsiProvisionedThroughput = lens _dynamoDBGlobalSecondaryIndexProvisionedThroughput (\s a -> s { _dynamoDBGlobalSecondaryIndexProvisionedThroughput = a })