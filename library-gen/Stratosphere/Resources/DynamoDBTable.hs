{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a DynamoDB table.

module Stratosphere.Resources.DynamoDBTable where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBAttributeDefinition
import Stratosphere.ResourceProperties.DynamoDBGlobalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBKeySchema
import Stratosphere.ResourceProperties.DynamoDBLocalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBProvisionedThroughput
import Stratosphere.ResourceProperties.DynamoDBStreamSpecification

-- | Full data type definition for DynamoDBTable. See 'dynamoDBTable' for a
-- more convenient constructor.
data DynamoDBTable =
  DynamoDBTable
  { _dynamoDBTableAttributeDefinitions :: [DynamoDBAttributeDefinition]
  , _dynamoDBTableGlobalSecondaryIndexes :: Maybe [DynamoDBGlobalSecondaryIndex]
  , _dynamoDBTableKeySchema :: [DynamoDBKeySchema]
  , _dynamoDBTableLocalSecondaryIndexes :: Maybe [DynamoDBLocalSecondaryIndex]
  , _dynamoDBTableProvisionedThroughput :: DynamoDBProvisionedThroughput
  , _dynamoDBTableStreamSpecification :: Maybe DynamoDBStreamSpecification
  , _dynamoDBTableTableName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON DynamoDBTable where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON DynamoDBTable where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'DynamoDBTable' containing required fields as arguments.
dynamoDBTable
  :: [DynamoDBAttributeDefinition] -- ^ 'ddbtAttributeDefinitions'
  -> [DynamoDBKeySchema] -- ^ 'ddbtKeySchema'
  -> DynamoDBProvisionedThroughput -- ^ 'ddbtProvisionedThroughput'
  -> DynamoDBTable
dynamoDBTable attributeDefinitionsarg keySchemaarg provisionedThroughputarg =
  DynamoDBTable
  { _dynamoDBTableAttributeDefinitions = attributeDefinitionsarg
  , _dynamoDBTableGlobalSecondaryIndexes = Nothing
  , _dynamoDBTableKeySchema = keySchemaarg
  , _dynamoDBTableLocalSecondaryIndexes = Nothing
  , _dynamoDBTableProvisionedThroughput = provisionedThroughputarg
  , _dynamoDBTableStreamSpecification = Nothing
  , _dynamoDBTableTableName = Nothing
  }

-- | A list of AttributeName and AttributeType objects that describe the key
-- schema for the table and indexes.
ddbtAttributeDefinitions :: Lens' DynamoDBTable [DynamoDBAttributeDefinition]
ddbtAttributeDefinitions = lens _dynamoDBTableAttributeDefinitions (\s a -> s { _dynamoDBTableAttributeDefinitions = a })

-- | Global secondary indexes to be created on the table. You can create up to
-- 5 global secondary indexes. Important If you update a table to include a
-- new global secondary index, AWS CloudFormation initiates the index creation
-- and then proceeds with the stack update. AWS CloudFormation doesn't wait
-- for the index to complete creation because the backfilling phase can take a
-- long time, depending on the size of the table. You cannot use the index or
-- update the table until the index's status is ACTIVE. You can track its
-- status by using the DynamoDB DescribeTable command. If you add or delete an
-- index during an update, we recommend that you don't update any other
-- resources. If your stack fails to update and is rolled back while adding a
-- new index, you must manually delete the index.
ddbtGlobalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBGlobalSecondaryIndex])
ddbtGlobalSecondaryIndexes = lens _dynamoDBTableGlobalSecondaryIndexes (\s a -> s { _dynamoDBTableGlobalSecondaryIndexes = a })

-- | Specifies the attributes that make up the primary key for the table. The
-- attributes in the KeySchema property must also be defined in the
-- AttributeDefinitions property.
ddbtKeySchema :: Lens' DynamoDBTable [DynamoDBKeySchema]
ddbtKeySchema = lens _dynamoDBTableKeySchema (\s a -> s { _dynamoDBTableKeySchema = a })

-- | Local secondary indexes to be created on the table. You can create up to
-- 5 local secondary indexes. Each index is scoped to a given hash key value.
-- The size of each hash key can be up to 10 gigabytes.
ddbtLocalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBLocalSecondaryIndex])
ddbtLocalSecondaryIndexes = lens _dynamoDBTableLocalSecondaryIndexes (\s a -> s { _dynamoDBTableLocalSecondaryIndexes = a })

-- | Throughput for the specified table, consisting of values for
-- ReadCapacityUnits and WriteCapacityUnits. For more information about the
-- contents of a provisioned throughput structure, see DynamoDB Provisioned
-- Throughput.
ddbtProvisionedThroughput :: Lens' DynamoDBTable DynamoDBProvisionedThroughput
ddbtProvisionedThroughput = lens _dynamoDBTableProvisionedThroughput (\s a -> s { _dynamoDBTableProvisionedThroughput = a })

-- | The settings for the DynamoDB table stream, which capture changes to
-- items stored in the table.
ddbtStreamSpecification :: Lens' DynamoDBTable (Maybe DynamoDBStreamSpecification)
ddbtStreamSpecification = lens _dynamoDBTableStreamSpecification (\s a -> s { _dynamoDBTableStreamSpecification = a })

-- | A name for the table. If you don't specify a name, AWS CloudFormation
-- generates a unique physical ID and uses that ID for the table name. For
-- more information, see Name Type. Important If you specify a name, you
-- cannot do updates that require this resource to be replaced. You can still
-- do updates that require no or some interruption. If you must replace the
-- resource, specify a new name.
ddbtTableName :: Lens' DynamoDBTable (Maybe (Val Text))
ddbtTableName = lens _dynamoDBTableTableName (\s a -> s { _dynamoDBTableTableName = a })