{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html

module Stratosphere.ResourceProperties.CassandraTableClusteringKeyColumn where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CassandraTableColumn

-- | Full data type definition for CassandraTableClusteringKeyColumn. See
-- 'cassandraTableClusteringKeyColumn' for a more convenient constructor.
data CassandraTableClusteringKeyColumn =
  CassandraTableClusteringKeyColumn
  { _cassandraTableClusteringKeyColumnColumn :: CassandraTableColumn
  , _cassandraTableClusteringKeyColumnOrderBy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CassandraTableClusteringKeyColumn where
  toJSON CassandraTableClusteringKeyColumn{..} =
    object $
    catMaybes
    [ (Just . ("Column",) . toJSON) _cassandraTableClusteringKeyColumnColumn
    , fmap (("OrderBy",) . toJSON) _cassandraTableClusteringKeyColumnOrderBy
    ]

-- | Constructor for 'CassandraTableClusteringKeyColumn' containing required
-- fields as arguments.
cassandraTableClusteringKeyColumn
  :: CassandraTableColumn -- ^ 'ctckcColumn'
  -> CassandraTableClusteringKeyColumn
cassandraTableClusteringKeyColumn columnarg =
  CassandraTableClusteringKeyColumn
  { _cassandraTableClusteringKeyColumnColumn = columnarg
  , _cassandraTableClusteringKeyColumnOrderBy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html#cfn-cassandra-table-clusteringkeycolumn-column
ctckcColumn :: Lens' CassandraTableClusteringKeyColumn CassandraTableColumn
ctckcColumn = lens _cassandraTableClusteringKeyColumnColumn (\s a -> s { _cassandraTableClusteringKeyColumnColumn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-clusteringkeycolumn.html#cfn-cassandra-table-clusteringkeycolumn-orderby
ctckcOrderBy :: Lens' CassandraTableClusteringKeyColumn (Maybe (Val Text))
ctckcOrderBy = lens _cassandraTableClusteringKeyColumnOrderBy (\s a -> s { _cassandraTableClusteringKeyColumnOrderBy = a })
