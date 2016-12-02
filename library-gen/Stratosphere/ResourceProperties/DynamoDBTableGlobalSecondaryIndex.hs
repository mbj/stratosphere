{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html

module Stratosphere.ResourceProperties.DynamoDBTableGlobalSecondaryIndex where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBTableKeySchema
import Stratosphere.ResourceProperties.DynamoDBTableProjection
import Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput

-- | Full data type definition for DynamoDBTableGlobalSecondaryIndex. See
-- | 'dynamoDBTableGlobalSecondaryIndex' for a more convenient constructor.
data DynamoDBTableGlobalSecondaryIndex =
  DynamoDBTableGlobalSecondaryIndex
  { _dynamoDBTableGlobalSecondaryIndexIndexName :: Val Text
  , _dynamoDBTableGlobalSecondaryIndexKeySchema :: [DynamoDBTableKeySchema]
  , _dynamoDBTableGlobalSecondaryIndexProjection :: DynamoDBTableProjection
  , _dynamoDBTableGlobalSecondaryIndexProvisionedThroughput :: DynamoDBTableProvisionedThroughput
  } deriving (Show, Generic)

instance ToJSON DynamoDBTableGlobalSecondaryIndex where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON DynamoDBTableGlobalSecondaryIndex where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'DynamoDBTableGlobalSecondaryIndex' containing required
-- | fields as arguments.
dynamoDBTableGlobalSecondaryIndex
  :: Val Text -- ^ 'ddbtgsiIndexName'
  -> [DynamoDBTableKeySchema] -- ^ 'ddbtgsiKeySchema'
  -> DynamoDBTableProjection -- ^ 'ddbtgsiProjection'
  -> DynamoDBTableProvisionedThroughput -- ^ 'ddbtgsiProvisionedThroughput'
  -> DynamoDBTableGlobalSecondaryIndex
dynamoDBTableGlobalSecondaryIndex indexNamearg keySchemaarg projectionarg provisionedThroughputarg =
  DynamoDBTableGlobalSecondaryIndex
  { _dynamoDBTableGlobalSecondaryIndexIndexName = indexNamearg
  , _dynamoDBTableGlobalSecondaryIndexKeySchema = keySchemaarg
  , _dynamoDBTableGlobalSecondaryIndexProjection = projectionarg
  , _dynamoDBTableGlobalSecondaryIndexProvisionedThroughput = provisionedThroughputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-indexname
ddbtgsiIndexName :: Lens' DynamoDBTableGlobalSecondaryIndex (Val Text)
ddbtgsiIndexName = lens _dynamoDBTableGlobalSecondaryIndexIndexName (\s a -> s { _dynamoDBTableGlobalSecondaryIndexIndexName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-keyschema
ddbtgsiKeySchema :: Lens' DynamoDBTableGlobalSecondaryIndex [DynamoDBTableKeySchema]
ddbtgsiKeySchema = lens _dynamoDBTableGlobalSecondaryIndexKeySchema (\s a -> s { _dynamoDBTableGlobalSecondaryIndexKeySchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-projection
ddbtgsiProjection :: Lens' DynamoDBTableGlobalSecondaryIndex DynamoDBTableProjection
ddbtgsiProjection = lens _dynamoDBTableGlobalSecondaryIndexProjection (\s a -> s { _dynamoDBTableGlobalSecondaryIndexProjection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-gsi.html#cfn-dynamodb-gsi-provisionedthroughput
ddbtgsiProvisionedThroughput :: Lens' DynamoDBTableGlobalSecondaryIndex DynamoDBTableProvisionedThroughput
ddbtgsiProvisionedThroughput = lens _dynamoDBTableGlobalSecondaryIndexProvisionedThroughput (\s a -> s { _dynamoDBTableGlobalSecondaryIndexProvisionedThroughput = a })
