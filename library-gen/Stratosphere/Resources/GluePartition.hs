{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html

module Stratosphere.Resources.GluePartition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GluePartitionPartitionInput

-- | Full data type definition for GluePartition. See 'gluePartition' for a
-- more convenient constructor.
data GluePartition =
  GluePartition
  { _gluePartitionCatalogId :: Val Text
  , _gluePartitionDatabaseName :: Val Text
  , _gluePartitionPartitionInput :: GluePartitionPartitionInput
  , _gluePartitionTableName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties GluePartition where
  toResourceProperties GluePartition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Glue::Partition"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CatalogId",) . toJSON) _gluePartitionCatalogId
        , (Just . ("DatabaseName",) . toJSON) _gluePartitionDatabaseName
        , (Just . ("PartitionInput",) . toJSON) _gluePartitionPartitionInput
        , (Just . ("TableName",) . toJSON) _gluePartitionTableName
        ]
    }

-- | Constructor for 'GluePartition' containing required fields as arguments.
gluePartition
  :: Val Text -- ^ 'gpCatalogId'
  -> Val Text -- ^ 'gpDatabaseName'
  -> GluePartitionPartitionInput -- ^ 'gpPartitionInput'
  -> Val Text -- ^ 'gpTableName'
  -> GluePartition
gluePartition catalogIdarg databaseNamearg partitionInputarg tableNamearg =
  GluePartition
  { _gluePartitionCatalogId = catalogIdarg
  , _gluePartitionDatabaseName = databaseNamearg
  , _gluePartitionPartitionInput = partitionInputarg
  , _gluePartitionTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-catalogid
gpCatalogId :: Lens' GluePartition (Val Text)
gpCatalogId = lens _gluePartitionCatalogId (\s a -> s { _gluePartitionCatalogId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-databasename
gpDatabaseName :: Lens' GluePartition (Val Text)
gpDatabaseName = lens _gluePartitionDatabaseName (\s a -> s { _gluePartitionDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-partitioninput
gpPartitionInput :: Lens' GluePartition GluePartitionPartitionInput
gpPartitionInput = lens _gluePartitionPartitionInput (\s a -> s { _gluePartitionPartitionInput = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-partition.html#cfn-glue-partition-tablename
gpTableName :: Lens' GluePartition (Val Text)
gpTableName = lens _gluePartitionTableName (\s a -> s { _gluePartitionTableName = a })
