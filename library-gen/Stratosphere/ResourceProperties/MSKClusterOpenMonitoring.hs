
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-openmonitoring.html

module Stratosphere.ResourceProperties.MSKClusterOpenMonitoring where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterPrometheus

-- | Full data type definition for MSKClusterOpenMonitoring. See
-- 'mskClusterOpenMonitoring' for a more convenient constructor.
data MSKClusterOpenMonitoring =
  MSKClusterOpenMonitoring
  { _mSKClusterOpenMonitoringPrometheus :: MSKClusterPrometheus
  } deriving (Show, Eq)

instance ToJSON MSKClusterOpenMonitoring where
  toJSON MSKClusterOpenMonitoring{..} =
    object $
    catMaybes
    [ (Just . ("Prometheus",) . toJSON) _mSKClusterOpenMonitoringPrometheus
    ]

-- | Constructor for 'MSKClusterOpenMonitoring' containing required fields as
-- arguments.
mskClusterOpenMonitoring
  :: MSKClusterPrometheus -- ^ 'mskcomPrometheus'
  -> MSKClusterOpenMonitoring
mskClusterOpenMonitoring prometheusarg =
  MSKClusterOpenMonitoring
  { _mSKClusterOpenMonitoringPrometheus = prometheusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-openmonitoring.html#cfn-msk-cluster-openmonitoring-prometheus
mskcomPrometheus :: Lens' MSKClusterOpenMonitoring MSKClusterPrometheus
mskcomPrometheus = lens _mSKClusterOpenMonitoringPrometheus (\s a -> s { _mSKClusterOpenMonitoringPrometheus = a })
