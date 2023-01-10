
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetVersioningConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetVersioningConfiguration.
-- See 'ioTAnalyticsDatasetVersioningConfiguration' for a more convenient
-- constructor.
data IoTAnalyticsDatasetVersioningConfiguration =
  IoTAnalyticsDatasetVersioningConfiguration
  { _ioTAnalyticsDatasetVersioningConfigurationMaxVersions :: Maybe (Val Integer)
  , _ioTAnalyticsDatasetVersioningConfigurationUnlimited :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetVersioningConfiguration where
  toJSON IoTAnalyticsDatasetVersioningConfiguration{..} =
    object $
    catMaybes
    [ fmap (("MaxVersions",) . toJSON) _ioTAnalyticsDatasetVersioningConfigurationMaxVersions
    , fmap (("Unlimited",) . toJSON) _ioTAnalyticsDatasetVersioningConfigurationUnlimited
    ]

-- | Constructor for 'IoTAnalyticsDatasetVersioningConfiguration' containing
-- required fields as arguments.
ioTAnalyticsDatasetVersioningConfiguration
  :: IoTAnalyticsDatasetVersioningConfiguration
ioTAnalyticsDatasetVersioningConfiguration  =
  IoTAnalyticsDatasetVersioningConfiguration
  { _ioTAnalyticsDatasetVersioningConfigurationMaxVersions = Nothing
  , _ioTAnalyticsDatasetVersioningConfigurationUnlimited = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-maxversions
itadvcMaxVersions :: Lens' IoTAnalyticsDatasetVersioningConfiguration (Maybe (Val Integer))
itadvcMaxVersions = lens _ioTAnalyticsDatasetVersioningConfigurationMaxVersions (\s a -> s { _ioTAnalyticsDatasetVersioningConfigurationMaxVersions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-versioningconfiguration.html#cfn-iotanalytics-dataset-versioningconfiguration-unlimited
itadvcUnlimited :: Lens' IoTAnalyticsDatasetVersioningConfiguration (Maybe (Val Bool))
itadvcUnlimited = lens _ioTAnalyticsDatasetVersioningConfigurationUnlimited (\s a -> s { _ioTAnalyticsDatasetVersioningConfigurationUnlimited = a })
