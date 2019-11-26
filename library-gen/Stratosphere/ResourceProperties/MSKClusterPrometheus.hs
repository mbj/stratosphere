{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html

module Stratosphere.ResourceProperties.MSKClusterPrometheus where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterJmxExporter
import Stratosphere.ResourceProperties.MSKClusterNodeExporter

-- | Full data type definition for MSKClusterPrometheus. See
-- 'mskClusterPrometheus' for a more convenient constructor.
data MSKClusterPrometheus =
  MSKClusterPrometheus
  { _mSKClusterPrometheusJmxExporter :: Maybe MSKClusterJmxExporter
  , _mSKClusterPrometheusNodeExporter :: Maybe MSKClusterNodeExporter
  } deriving (Show, Eq)

instance ToJSON MSKClusterPrometheus where
  toJSON MSKClusterPrometheus{..} =
    object $
    catMaybes
    [ fmap (("JmxExporter",) . toJSON) _mSKClusterPrometheusJmxExporter
    , fmap (("NodeExporter",) . toJSON) _mSKClusterPrometheusNodeExporter
    ]

-- | Constructor for 'MSKClusterPrometheus' containing required fields as
-- arguments.
mskClusterPrometheus
  :: MSKClusterPrometheus
mskClusterPrometheus  =
  MSKClusterPrometheus
  { _mSKClusterPrometheusJmxExporter = Nothing
  , _mSKClusterPrometheusNodeExporter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-jmxexporter
mskcpJmxExporter :: Lens' MSKClusterPrometheus (Maybe MSKClusterJmxExporter)
mskcpJmxExporter = lens _mSKClusterPrometheusJmxExporter (\s a -> s { _mSKClusterPrometheusJmxExporter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-nodeexporter
mskcpNodeExporter :: Lens' MSKClusterPrometheus (Maybe MSKClusterNodeExporter)
mskcpNodeExporter = lens _mSKClusterPrometheusNodeExporter (\s a -> s { _mSKClusterPrometheusNodeExporter = a })
