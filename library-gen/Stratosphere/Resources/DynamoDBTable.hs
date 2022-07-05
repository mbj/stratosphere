{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html

module Stratosphere.Resources.DynamoDBTable where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DynamoDBTableAttributeDefinition
import Stratosphere.ResourceProperties.DynamoDBTableGlobalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBTableKeySchema
import Stratosphere.ResourceProperties.DynamoDBTableLocalSecondaryIndex
import Stratosphere.ResourceProperties.DynamoDBTablePointInTimeRecoverySpecification
import Stratosphere.ResourceProperties.DynamoDBTableProvisionedThroughput
import Stratosphere.ResourceProperties.DynamoDBTableSSESpecification
import Stratosphere.ResourceProperties.DynamoDBTableStreamSpecification
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.DynamoDBTableTimeToLiveSpecification

-- | Full data type definition for DynamoDBTable. See 'dynamoDBTable' for a
-- more convenient constructor.
data DynamoDBTable =
  DynamoDBTable
  { _dynamoDBTableAttributeDefinitions :: Maybe [DynamoDBTableAttributeDefinition]
  , _dynamoDBTableBillingMode :: Maybe (Val Text)
  , _dynamoDBTableGlobalSecondaryIndexes :: Maybe [DynamoDBTableGlobalSecondaryIndex]
  , _dynamoDBTableKeySchema :: [DynamoDBTableKeySchema]
  , _dynamoDBTableLocalSecondaryIndexes :: Maybe [DynamoDBTableLocalSecondaryIndex]
  , _dynamoDBTablePointInTimeRecoverySpecification :: Maybe DynamoDBTablePointInTimeRecoverySpecification
  , _dynamoDBTableProvisionedThroughput :: Maybe DynamoDBTableProvisionedThroughput
  , _dynamoDBTableSSESpecification :: Maybe DynamoDBTableSSESpecification
  , _dynamoDBTableStreamSpecification :: Maybe DynamoDBTableStreamSpecification
  , _dynamoDBTableTableName :: Maybe (Val Text)
  , _dynamoDBTableTags :: Maybe [Tag]
  , _dynamoDBTableTimeToLiveSpecification :: Maybe DynamoDBTableTimeToLiveSpecification
  } deriving (Show, Eq)

instance ToResourceProperties DynamoDBTable where
  toResourceProperties DynamoDBTable{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DynamoDB::Table"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AttributeDefinitions",) . toJSON) _dynamoDBTableAttributeDefinitions
        , fmap (("BillingMode",) . toJSON) _dynamoDBTableBillingMode
        , fmap (("GlobalSecondaryIndexes",) . toJSON) _dynamoDBTableGlobalSecondaryIndexes
        , (Just . ("KeySchema",) . toJSON) _dynamoDBTableKeySchema
        , fmap (("LocalSecondaryIndexes",) . toJSON) _dynamoDBTableLocalSecondaryIndexes
        , fmap (("PointInTimeRecoverySpecification",) . toJSON) _dynamoDBTablePointInTimeRecoverySpecification
        , fmap (("ProvisionedThroughput",) . toJSON) _dynamoDBTableProvisionedThroughput
        , fmap (("SSESpecification",) . toJSON) _dynamoDBTableSSESpecification
        , fmap (("StreamSpecification",) . toJSON) _dynamoDBTableStreamSpecification
        , fmap (("TableName",) . toJSON) _dynamoDBTableTableName
        , fmap (("Tags",) . toJSON) _dynamoDBTableTags
        , fmap (("TimeToLiveSpecification",) . toJSON) _dynamoDBTableTimeToLiveSpecification
        ]
    }

-- | Constructor for 'DynamoDBTable' containing required fields as arguments.
dynamoDBTable
  :: [DynamoDBTableKeySchema] -- ^ 'ddbtKeySchema'
  -> DynamoDBTable
dynamoDBTable keySchemaarg =
  DynamoDBTable
  { _dynamoDBTableAttributeDefinitions = Nothing
  , _dynamoDBTableBillingMode = Nothing
  , _dynamoDBTableGlobalSecondaryIndexes = Nothing
  , _dynamoDBTableKeySchema = keySchemaarg
  , _dynamoDBTableLocalSecondaryIndexes = Nothing
  , _dynamoDBTablePointInTimeRecoverySpecification = Nothing
  , _dynamoDBTableProvisionedThroughput = Nothing
  , _dynamoDBTableSSESpecification = Nothing
  , _dynamoDBTableStreamSpecification = Nothing
  , _dynamoDBTableTableName = Nothing
  , _dynamoDBTableTags = Nothing
  , _dynamoDBTableTimeToLiveSpecification = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-attributedef
ddbtAttributeDefinitions :: Lens' DynamoDBTable (Maybe [DynamoDBTableAttributeDefinition])
ddbtAttributeDefinitions = lens _dynamoDBTableAttributeDefinitions (\s a -> s { _dynamoDBTableAttributeDefinitions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-billingmode
ddbtBillingMode :: Lens' DynamoDBTable (Maybe (Val Text))
ddbtBillingMode = lens _dynamoDBTableBillingMode (\s a -> s { _dynamoDBTableBillingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-gsi
ddbtGlobalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBTableGlobalSecondaryIndex])
ddbtGlobalSecondaryIndexes = lens _dynamoDBTableGlobalSecondaryIndexes (\s a -> s { _dynamoDBTableGlobalSecondaryIndexes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-keyschema
ddbtKeySchema :: Lens' DynamoDBTable [DynamoDBTableKeySchema]
ddbtKeySchema = lens _dynamoDBTableKeySchema (\s a -> s { _dynamoDBTableKeySchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-lsi
ddbtLocalSecondaryIndexes :: Lens' DynamoDBTable (Maybe [DynamoDBTableLocalSecondaryIndex])
ddbtLocalSecondaryIndexes = lens _dynamoDBTableLocalSecondaryIndexes (\s a -> s { _dynamoDBTableLocalSecondaryIndexes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-pointintimerecoveryspecification
ddbtPointInTimeRecoverySpecification :: Lens' DynamoDBTable (Maybe DynamoDBTablePointInTimeRecoverySpecification)
ddbtPointInTimeRecoverySpecification = lens _dynamoDBTablePointInTimeRecoverySpecification (\s a -> s { _dynamoDBTablePointInTimeRecoverySpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-provisionedthroughput
ddbtProvisionedThroughput :: Lens' DynamoDBTable (Maybe DynamoDBTableProvisionedThroughput)
ddbtProvisionedThroughput = lens _dynamoDBTableProvisionedThroughput (\s a -> s { _dynamoDBTableProvisionedThroughput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dynamodb-table.html#cfn-dynamodb-table-ssespecification
ddbtSSESpecification :: Lens' DynamoDBTable (Maybe DynamoDBTableSSESpecification)
ddbtSSESpecification = lens _dynamoDBTableSSESpecification (\s a -> s { _dynamoDBTableSSESpecification = a })

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
