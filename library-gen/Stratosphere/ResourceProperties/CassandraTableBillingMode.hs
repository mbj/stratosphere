
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html

module Stratosphere.ResourceProperties.CassandraTableBillingMode where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CassandraTableProvisionedThroughput

-- | Full data type definition for CassandraTableBillingMode. See
-- 'cassandraTableBillingMode' for a more convenient constructor.
data CassandraTableBillingMode =
  CassandraTableBillingMode
  { _cassandraTableBillingModeMode :: Val Text
  , _cassandraTableBillingModeProvisionedThroughput :: Maybe CassandraTableProvisionedThroughput
  } deriving (Show, Eq)

instance ToJSON CassandraTableBillingMode where
  toJSON CassandraTableBillingMode{..} =
    object $
    catMaybes
    [ (Just . ("Mode",) . toJSON) _cassandraTableBillingModeMode
    , fmap (("ProvisionedThroughput",) . toJSON) _cassandraTableBillingModeProvisionedThroughput
    ]

-- | Constructor for 'CassandraTableBillingMode' containing required fields as
-- arguments.
cassandraTableBillingMode
  :: Val Text -- ^ 'ctbmMode'
  -> CassandraTableBillingMode
cassandraTableBillingMode modearg =
  CassandraTableBillingMode
  { _cassandraTableBillingModeMode = modearg
  , _cassandraTableBillingModeProvisionedThroughput = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-mode
ctbmMode :: Lens' CassandraTableBillingMode (Val Text)
ctbmMode = lens _cassandraTableBillingModeMode (\s a -> s { _cassandraTableBillingModeMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cassandra-table-billingmode.html#cfn-cassandra-table-billingmode-provisionedthroughput
ctbmProvisionedThroughput :: Lens' CassandraTableBillingMode (Maybe CassandraTableProvisionedThroughput)
ctbmProvisionedThroughput = lens _cassandraTableBillingModeProvisionedThroughput (\s a -> s { _cassandraTableBillingModeProvisionedThroughput = a })
