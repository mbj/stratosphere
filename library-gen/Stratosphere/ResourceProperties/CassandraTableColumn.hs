
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html

module Stratosphere.ResourceProperties.CassandraTableColumn where

import Stratosphere.ResourceImports


-- | Full data type definition for CassandraTableColumn. See
-- 'cassandraTableColumn' for a more convenient constructor.
data CassandraTableColumn =
  CassandraTableColumn
  { _cassandraTableColumnColumnName :: Val Text
  , _cassandraTableColumnColumnType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CassandraTableColumn where
  toJSON CassandraTableColumn{..} =
    object $
    catMaybes
    [ (Just . ("ColumnName",) . toJSON) _cassandraTableColumnColumnName
    , (Just . ("ColumnType",) . toJSON) _cassandraTableColumnColumnType
    ]

-- | Constructor for 'CassandraTableColumn' containing required fields as
-- arguments.
cassandraTableColumn
  :: Val Text -- ^ 'ctcColumnName'
  -> Val Text -- ^ 'ctcColumnType'
  -> CassandraTableColumn
cassandraTableColumn columnNamearg columnTypearg =
  CassandraTableColumn
  { _cassandraTableColumnColumnName = columnNamearg
  , _cassandraTableColumnColumnType = columnTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html#cfn-cassandra-table-column-columnname
ctcColumnName :: Lens' CassandraTableColumn (Val Text)
ctcColumnName = lens _cassandraTableColumnColumnName (\s a -> s { _cassandraTableColumnColumnName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-column.html#cfn-cassandra-table-column-columntype
ctcColumnType :: Lens' CassandraTableColumn (Val Text)
ctcColumnType = lens _cassandraTableColumnColumnType (\s a -> s { _cassandraTableColumnColumnType = a })
