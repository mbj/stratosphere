{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html

module Stratosphere.Resources.DynamoDBTable where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.DynamoDBTableAttributeDefinition
import Stratosphere.ResourceProperties.DynamoDBTableGlobalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBTableKeySchema
import Stratosphere.ResourceProperties.DynamoDBTableLocalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput
import Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.DynamoDBTableTimeToLiveSpecification

-- | Full data type definition for DynamoDBTable. See 'dynamoDBTable' for a
-- more convenient constructor.
data DynamoDBTable =
  DynamoDBTable
  { _dynamoDBTableAttributeDefinitions :: [DynamoDBTableAttributeDefinition]
  , _dynamoDBTableGlobalSecondaryIndexes :: Maybe [DynamoDBTableGlobalSecondaryIndex]
  , _dynamoDBTableKeySchema :: [DynamoDBTableKeySchema]
  , _dynamoDBTableLocalSecondaryIndexes :: Maybe [DynamoDBTableLocalSecondaryIndex]
  , _dynamoDBTableProvisionedThroughput :: DynamoDBTableProvisionedThroughput
  , _dynamoDBTableStreamSpecification :: Maybe DynamoDBTableStreamSpecification
  , _dynamoDBTableTableName :: Maybe (Val Text)
  , _dynamoDBTableTags :: Maybe [Tag]
  , _dynamoDBTableTimeToLiveSpecification :: Maybe DynamoDBTableTimeToLiveSpecification
  } deriving (Show, Eq)

instance ToJSON DynamoDBTable where
  toJSON DynamoDBTable{..} =
    object $
    catMaybes
    [ (Just . ("AttributeDefinitions",) . toJSON) _dynamoDBTableAttributeDefinitions
    , fmap (("GlobalSecondaryIndexes",) . toJSON) _dynamoDBTableGlobalSecondaryIndexes
    , (Just . ("KeySchema",) . toJSON) _dynamoDBTableKeySchema
    , fmap (("LocalSecondaryIndexes",) . toJSON) _dynamoDBTableLocalSecondaryIndexes
    , (Just . ("ProvisionedThroughput",) . toJSON) _dynamoDBTableProvisionedThroughput
    , fmap (("StreamSpecification",) . toJSON) _dynamoDBTableStreamSpecification
    , fmap (("TableName",) . toJSON) _dynamoDBTableTableName
    , fmap (("Tags",) . toJSON) _dynamoDBTableTags
    , fmap (("TimeToLiveSpecification",) . toJSON) _dynamoDBTableTimeToLiveSpecification
    ]

instance FromJSON DynamoDBTable where
  parseJSON (Object obj) =
    DynamoDBTable <$>
      (obj .: "AttributeDefinitions") <*>
      (obj .:? "GlobalSecondaryIndexes") <*>
      (obj .: "KeySchema") <*>
      (obj .:? "LocalSecondaryIndexes") <*>
      (obj .: "ProvisionedThroughput") <*>
      (obj .:? "StreamSpecification") <*>
      (obj .:? "TableName") <*>
      (obj .:? "Tags") <*>
      (obj .:? "TimeToLiveSpecification")
  parseJSON _ = mempty

-- | Constructor for 'DynamoDBTable' containing required fields as arguments.
dynamoDBTable
  :: [DynamoDBTableAttributeDefinition] -- ^ 'ddbtAttributeDefinitions'
  -> [DynamoDBTableKeySchema] -- ^ 'ddbtKeySchema'
  -> DynamoDBTableProvisionedThroughput -- ^ 'ddbtProvisionedThroughput'
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
  , _dynamoDBTableTags = Nothing
  , _dynamoDBTableTimeToLiveSpecification = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-attributedef
ddbtAttributeDefinitions :: Lens' DynamoDBTable [DynamoDBTableAttributeDefinition]
ddbtAttributeDefinitions = lens _dynamoDBTableAttributeDefinitions (\s a -> s { _dynamoDBTableAttributeDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-gsi
ddbtGlobalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBTableGlobalSecondaryIndex])
ddbtGlobalSecondaryIndexes = lens _dynamoDBTableGlobalSecondaryIndexes (\s a -> s { _dynamoDBTableGlobalSecondaryIndexes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-keyschema
ddbtKeySchema :: Lens' DynamoDBTable [DynamoDBTableKeySchema]
ddbtKeySchema = lens _dynamoDBTableKeySchema (\s a -> s { _dynamoDBTableKeySchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-lsi
ddbtLocalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBTableLocalSecondaryIndex])
ddbtLocalSecondaryIndexes = lens _dynamoDBTableLocalSecondaryIndexes (\s a -> s { _dynamoDBTableLocalSecondaryIndexes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-provisionedthroughput
ddbtProvisionedThroughput :: Lens' DynamoDBTable DynamoDBTableProvisionedThroughput
ddbtProvisionedThroughput = lens _dynamoDBTableProvisionedThroughput (\s a -> s { _dynamoDBTableProvisionedThroughput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-streamspecification
ddbtStreamSpecification :: Lens' DynamoDBTable (Maybe DynamoDBTableStreamSpecification)
ddbtStreamSpecification = lens _dynamoDBTableStreamSpecification (\s a -> s { _dynamoDBTableStreamSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tablename
ddbtTableName :: Lens' DynamoDBTable (Maybe (Val Text))
ddbtTableName = lens _dynamoDBTableTableName (\s a -> s { _dynamoDBTableTableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-tags
ddbtTags :: Lens' DynamoDBTable (Maybe [Tag])
ddbtTags = lens _dynamoDBTableTags (\s a -> s { _dynamoDBTableTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-timetolivespecification
ddbtTimeToLiveSpecification :: Lens' DynamoDBTable (Maybe DynamoDBTableTimeToLiveSpecification)
ddbtTimeToLiveSpecification = lens _dynamoDBTableTimeToLiveSpecification (\s a -> s { _dynamoDBTableTimeToLiveSpecification = a })
