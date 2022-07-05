{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html

module Stratosphere.Resources.RDSDBProxyTargetGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat

-- | Full data type definition for RDSDBProxyTargetGroup. See
-- 'rdsdbProxyTargetGroup' for a more convenient constructor.
data RDSDBProxyTargetGroup =
  RDSDBProxyTargetGroup
  { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfo :: Maybe RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat
  , _rDSDBProxyTargetGroupDBClusterIdentifiers :: Maybe (ValList Text)
  , _rDSDBProxyTargetGroupDBInstanceIdentifiers :: Maybe (ValList Text)
  , _rDSDBProxyTargetGroupDBProxyName :: Val Text
  , _rDSDBProxyTargetGroupTargetGroupName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBProxyTargetGroup where
  toResourceProperties RDSDBProxyTargetGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBProxyTargetGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ConnectionPoolConfigurationInfo",) . toJSON) _rDSDBProxyTargetGroupConnectionPoolConfigurationInfo
        , fmap (("DBClusterIdentifiers",) . toJSON) _rDSDBProxyTargetGroupDBClusterIdentifiers
        , fmap (("DBInstanceIdentifiers",) . toJSON) _rDSDBProxyTargetGroupDBInstanceIdentifiers
        , (Just . ("DBProxyName",) . toJSON) _rDSDBProxyTargetGroupDBProxyName
        , (Just . ("TargetGroupName",) . toJSON) _rDSDBProxyTargetGroupTargetGroupName
        ]
    }

-- | Constructor for 'RDSDBProxyTargetGroup' containing required fields as
-- arguments.
rdsdbProxyTargetGroup
  :: Val Text -- ^ 'rdsdbptgDBProxyName'
  -> Val Text -- ^ 'rdsdbptgTargetGroupName'
  -> RDSDBProxyTargetGroup
rdsdbProxyTargetGroup dBProxyNamearg targetGroupNamearg =
  RDSDBProxyTargetGroup
  { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfo = Nothing
  , _rDSDBProxyTargetGroupDBClusterIdentifiers = Nothing
  , _rDSDBProxyTargetGroupDBInstanceIdentifiers = Nothing
  , _rDSDBProxyTargetGroupDBProxyName = dBProxyNamearg
  , _rDSDBProxyTargetGroupTargetGroupName = targetGroupNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html#cfn-rds-dbproxytargetgroup-connectionpoolconfigurationinfo
rdsdbptgConnectionPoolConfigurationInfo :: Lens' RDSDBProxyTargetGroup (Maybe RDSDBProxyTargetGroupConnectionPoolConfigurationInfoFormat)
rdsdbptgConnectionPoolConfigurationInfo = lens _rDSDBProxyTargetGroupConnectionPoolConfigurationInfo (\s a -> s { _rDSDBProxyTargetGroupConnectionPoolConfigurationInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html#cfn-rds-dbproxytargetgroup-dbclusteridentifiers
rdsdbptgDBClusterIdentifiers :: Lens' RDSDBProxyTargetGroup (Maybe (ValList Text))
rdsdbptgDBClusterIdentifiers = lens _rDSDBProxyTargetGroupDBClusterIdentifiers (\s a -> s { _rDSDBProxyTargetGroupDBClusterIdentifiers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html#cfn-rds-dbproxytargetgroup-dbinstanceidentifiers
rdsdbptgDBInstanceIdentifiers :: Lens' RDSDBProxyTargetGroup (Maybe (ValList Text))
rdsdbptgDBInstanceIdentifiers = lens _rDSDBProxyTargetGroupDBInstanceIdentifiers (\s a -> s { _rDSDBProxyTargetGroupDBInstanceIdentifiers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html#cfn-rds-dbproxytargetgroup-dbproxyname
rdsdbptgDBProxyName :: Lens' RDSDBProxyTargetGroup (Val Text)
rdsdbptgDBProxyName = lens _rDSDBProxyTargetGroupDBProxyName (\s a -> s { _rDSDBProxyTargetGroupDBProxyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbproxytargetgroup.html#cfn-rds-dbproxytargetgroup-targetgroupname
rdsdbptgTargetGroupName :: Lens' RDSDBProxyTargetGroup (Val Text)
rdsdbptgTargetGroupName = lens _rDSDBProxyTargetGroupTargetGroupName (\s a -> s { _rDSDBProxyTargetGroupTargetGroupName = a })
