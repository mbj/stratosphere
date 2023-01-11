
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html

module Stratosphere.ResourceProperties.CassandraTableProvisionedThroughput where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CassandraTableProvisionedThroughput. See
-- 'cassandraTableProvisionedThroughput' for a more convenient constructor.
data CassandraTableProvisionedThroughput =
  CassandraTableProvisionedThroughput
  { _cassandraTableProvisionedThroughputReadCapacityUnits :: Val Integer
  , _cassandraTableProvisionedThroughputWriteCapacityUnits :: Val Integer
  } deriving (Show, Eq)

instance ToJSON CassandraTableProvisionedThroughput where
  toJSON CassandraTableProvisionedThroughput{..} =
    object $
    catMaybes
    [ (Just . ("ReadCapacityUnits",) . toJSON) _cassandraTableProvisionedThroughputReadCapacityUnits
    , (Just . ("WriteCapacityUnits",) . toJSON) _cassandraTableProvisionedThroughputWriteCapacityUnits
    ]

-- | Constructor for 'CassandraTableProvisionedThroughput' containing required
-- fields as arguments.
cassandraTableProvisionedThroughput
  :: Val Integer -- ^ 'ctptReadCapacityUnits'
  -> Val Integer -- ^ 'ctptWriteCapacityUnits'
  -> CassandraTableProvisionedThroughput
cassandraTableProvisionedThroughput readCapacityUnitsarg writeCapacityUnitsarg =
  CassandraTableProvisionedThroughput
  { _cassandraTableProvisionedThroughputReadCapacityUnits = readCapacityUnitsarg
  , _cassandraTableProvisionedThroughputWriteCapacityUnits = writeCapacityUnitsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-readcapacityunits
ctptReadCapacityUnits :: Lens' CassandraTableProvisionedThroughput (Val Integer)
ctptReadCapacityUnits = lens _cassandraTableProvisionedThroughputReadCapacityUnits (\s a -> s { _cassandraTableProvisionedThroughputReadCapacityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-provisionedthroughput.html#cfn-cassandra-table-provisionedthroughput-writecapacityunits
ctptWriteCapacityUnits :: Lens' CassandraTableProvisionedThroughput (Val Integer)
ctptWriteCapacityUnits = lens _cassandraTableProvisionedThroughputWriteCapacityUnits (\s a -> s { _cassandraTableProvisionedThroughputWriteCapacityUnits = a })
