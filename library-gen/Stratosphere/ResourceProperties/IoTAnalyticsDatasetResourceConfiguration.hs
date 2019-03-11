{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetResourceConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetResourceConfiguration.
-- See 'ioTAnalyticsDatasetResourceConfiguration' for a more convenient
-- constructor.
data IoTAnalyticsDatasetResourceConfiguration =
  IoTAnalyticsDatasetResourceConfiguration
  { _ioTAnalyticsDatasetResourceConfigurationComputeType :: Val Text
  , _ioTAnalyticsDatasetResourceConfigurationVolumeSizeInGB :: Val Integer
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetResourceConfiguration where
  toJSON IoTAnalyticsDatasetResourceConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("ComputeType",) . toJSON) _ioTAnalyticsDatasetResourceConfigurationComputeType
    , (Just . ("VolumeSizeInGB",) . toJSON . fmap Integer') _ioTAnalyticsDatasetResourceConfigurationVolumeSizeInGB
    ]

-- | Constructor for 'IoTAnalyticsDatasetResourceConfiguration' containing
-- required fields as arguments.
ioTAnalyticsDatasetResourceConfiguration
  :: Val Text -- ^ 'itadrcComputeType'
  -> Val Integer -- ^ 'itadrcVolumeSizeInGB'
  -> IoTAnalyticsDatasetResourceConfiguration
ioTAnalyticsDatasetResourceConfiguration computeTypearg volumeSizeInGBarg =
  IoTAnalyticsDatasetResourceConfiguration
  { _ioTAnalyticsDatasetResourceConfigurationComputeType = computeTypearg
  , _ioTAnalyticsDatasetResourceConfigurationVolumeSizeInGB = volumeSizeInGBarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-computetype
itadrcComputeType :: Lens' IoTAnalyticsDatasetResourceConfiguration (Val Text)
itadrcComputeType = lens _ioTAnalyticsDatasetResourceConfigurationComputeType (\s a -> s { _ioTAnalyticsDatasetResourceConfigurationComputeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-resourceconfiguration.html#cfn-iotanalytics-dataset-resourceconfiguration-volumesizeingb
itadrcVolumeSizeInGB :: Lens' IoTAnalyticsDatasetResourceConfiguration (Val Integer)
itadrcVolumeSizeInGB = lens _ioTAnalyticsDatasetResourceConfigurationVolumeSizeInGB (\s a -> s { _ioTAnalyticsDatasetResourceConfigurationVolumeSizeInGB = a })
