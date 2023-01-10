
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html

module Stratosphere.ResourceProperties.RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat. See
-- 'rdsdbProxyTargetGroupConnectionPoolConfigurationInfoFormat' for a more
-- convenient constructor.
data RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat =
  RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat
  { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatConnectionBorrowTimeout :: Maybe (Val Integer)
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatInitQuery :: Maybe (Val Text)
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxConnectionsPercent :: Maybe (Val Integer)
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxIdleConnectionsPercent :: Maybe (Val Integer)
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatSessionPinningFilters :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat where
  toJSON RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat{..} =
    object $
    catMaybes
    [ fmap (("ConnectionBorrowTimeout",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatConnectionBorrowTimeout
    , fmap (("InitQuery",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatInitQuery
    , fmap (("MaxConnectionsPercent",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxConnectionsPercent
    , fmap (("MaxIdleConnectionsPercent",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxIdleConnectionsPercent
    , fmap (("SessionPinningFilters",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatSessionPinningFilters
    ]

-- | Constructor for
-- 'RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat' containing
-- required fields as arguments.
rdsdbProxyTargetGroupConnectionPoolConfigurationInfoFormat
  :: RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat
rdsdbProxyTargetGroupConnectionPoolConfigurationInfoFormat  =
  RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat
  { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatConnectionBorrowTimeout = Nothing
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatInitQuery = Nothing
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxConnectionsPercent = Nothing
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxIdleConnectionsPercent = Nothing
  , _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatSessionPinningFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-connectionborrowtimeout
rdsdbptgcpcifConnectionBorrowTimeout :: Lens' RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat (Maybe (Val Integer))
rdsdbptgcpcifConnectionBorrowTimeout = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatConnectionBorrowTimeout (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatConnectionBorrowTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-initquery
rdsdbptgcpcifInitQuery :: Lens' RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat (Maybe (Val Text))
rdsdbptgcpcifInitQuery = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatInitQuery (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatInitQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-maxconnectionspercent
rdsdbptgcpcifMaxConnectionsPercent :: Lens' RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat (Maybe (Val Integer))
rdsdbptgcpcifMaxConnectionsPercent = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxConnectionsPercent (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxConnectionsPercent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-maxidleconnectionspercent
rdsdbptgcpcifMaxIdleConnectionsPercent :: Lens' RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat (Maybe (Val Integer))
rdsdbptgcpcifMaxIdleConnectionsPercent = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxIdleConnectionsPercent (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatMaxIdleConnectionsPercent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfoformat-sessionpinningfilters
rdsdbptgcpcifSessionPinningFilters :: Lens' RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat (Maybe (ValList Text))
rdsdbptgcpcifSessionPinningFilters = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatSessionPinningFilters (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormatSessionPinningFilters = a })
