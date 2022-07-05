{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html

module Stratosphere.Resources.CassandraTable where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CassandraTableBillingMode
import Stratosphere.ResourceProperties.CassandraTableClusteringKeyColumn
import Stratosphere.ResourceProperties.CassandraTableColumn

-- | Full data type definition for CassandraTable. See 'cassandraTable' for a
-- more convenient constructor.
data CassandraTable =
  CassandraTable
  { _cassandraTableBillingMode :: Maybe CassandraTableBillingMode
  , _cassandraTableClusteringKeyColumns :: Maybe [CassandraTableClusteringKeyColumn]
  , _cassandraTableKeyspaceName :: Val Text
  , _cassandraTablePartitionKeyColumns :: [CassandraTableColumn]
  , _cassandraTableRegularColumns :: Maybe [CassandraTableColumn]
  , _cassandraTableTableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CassandraTable where
  toResourceProperties CassandraTable{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cassandra::Table"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BillingMode",) . toJSON) _cassandraTableBillingMode
        , fmap (("ClusteringKeyColumns",) . toJSON) _cassandraTableClusteringKeyColumns
        , (Just . ("KeyspaceName",) . toJSON) _cassandraTableKeyspaceName
        , (Just . ("PartitionKeyColumns",) . toJSON) _cassandraTablePartitionKeyColumns
        , fmap (("RegularColumns",) . toJSON) _cassandraTableRegularColumns
        , fmap (("TableName",) . toJSON) _cassandraTableTableName
        ]
    }

-- | Constructor for 'CassandraTable' containing required fields as arguments.
cassandraTable
  :: Val Text -- ^ 'ctKeyspaceName'
  -> [CassandraTableColumn] -- ^ 'ctPartitionKeyColumns'
  -> CassandraTable
cassandraTable keyspaceNamearg partitionKeyColumnsarg =
  CassandraTable
  { _cassandraTableBillingMode = Nothing
  , _cassandraTableClusteringKeyColumns = Nothing
  , _cassandraTableKeyspaceName = keyspaceNamearg
  , _cassandraTablePartitionKeyColumns = partitionKeyColumnsarg
  , _cassandraTableRegularColumns = Nothing
  , _cassandraTableTableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-billingmode
ctBillingMode :: Lens' CassandraTable (Maybe CassandraTableBillingMode)
ctBillingMode = lens _cassandraTableBillingMode (\s a -> s { _cassandraTableBillingMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-clusteringkeycolumns
ctClusteringKeyColumns :: Lens' CassandraTable (Maybe [CassandraTableClusteringKeyColumn])
ctClusteringKeyColumns = lens _cassandraTableClusteringKeyColumns (\s a -> s { _cassandraTableClusteringKeyColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-keyspacename
ctKeyspaceName :: Lens' CassandraTable (Val Text)
ctKeyspaceName = lens _cassandraTableKeyspaceName (\s a -> s { _cassandraTableKeyspaceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-partitionkeycolumns
ctPartitionKeyColumns :: Lens' CassandraTable [CassandraTableColumn]
ctPartitionKeyColumns = lens _cassandraTablePartitionKeyColumns (\s a -> s { _cassandraTablePartitionKeyColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-regularcolumns
ctRegularColumns :: Lens' CassandraTable (Maybe [CassandraTableColumn])
ctRegularColumns = lens _cassandraTableRegularColumns (\s a -> s { _cassandraTableRegularColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cassandra-table.html#cfn-cassandra-table-tablename
ctTableName :: Lens' CassandraTable (Maybe (Val Text))
ctTableName = lens _cassandraTableTableName (\s a -> s { _cassandraTableTableName = a })
