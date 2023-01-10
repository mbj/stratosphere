
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetS3DestinationConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTAnalyticsDatasetGlueConfiguration

-- | Full data type definition for
-- IoTAnalyticsDatasetS3DestinationConfiguration. See
-- 'ioTAnalyticsDatasetS3DestinationConfiguration' for a more convenient
-- constructor.
data IoTAnalyticsDatasetS3DestinationConfiguration =
  IoTAnalyticsDatasetS3DestinationConfiguration
  { _ioTAnalyticsDatasetS3DestinationConfigurationBucket :: Val Text
  , _ioTAnalyticsDatasetS3DestinationConfigurationGlueConfiguration :: Maybe IoTAnalyticsDatasetGlueConfiguration
  , _ioTAnalyticsDatasetS3DestinationConfigurationKey :: Val Text
  , _ioTAnalyticsDatasetS3DestinationConfigurationRoleArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetS3DestinationConfiguration where
  toJSON IoTAnalyticsDatasetS3DestinationConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _ioTAnalyticsDatasetS3DestinationConfigurationBucket
    , fmap (("GlueConfiguration",) . toJSON) _ioTAnalyticsDatasetS3DestinationConfigurationGlueConfiguration
    , (Just . ("Key",) . toJSON) _ioTAnalyticsDatasetS3DestinationConfigurationKey
    , (Just . ("RoleArn",) . toJSON) _ioTAnalyticsDatasetS3DestinationConfigurationRoleArn
    ]

-- | Constructor for 'IoTAnalyticsDatasetS3DestinationConfiguration'
-- containing required fields as arguments.
ioTAnalyticsDatasetS3DestinationConfiguration
  :: Val Text -- ^ 'itadsdcBucket'
  -> Val Text -- ^ 'itadsdcKey'
  -> Val Text -- ^ 'itadsdcRoleArn'
  -> IoTAnalyticsDatasetS3DestinationConfiguration
ioTAnalyticsDatasetS3DestinationConfiguration bucketarg keyarg roleArnarg =
  IoTAnalyticsDatasetS3DestinationConfiguration
  { _ioTAnalyticsDatasetS3DestinationConfigurationBucket = bucketarg
  , _ioTAnalyticsDatasetS3DestinationConfigurationGlueConfiguration = Nothing
  , _ioTAnalyticsDatasetS3DestinationConfigurationKey = keyarg
  , _ioTAnalyticsDatasetS3DestinationConfigurationRoleArn = roleArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-bucket
itadsdcBucket :: Lens' IoTAnalyticsDatasetS3DestinationConfiguration (Val Text)
itadsdcBucket = lens _ioTAnalyticsDatasetS3DestinationConfigurationBucket (\s a -> s { _ioTAnalyticsDatasetS3DestinationConfigurationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-glueconfiguration
itadsdcGlueConfiguration :: Lens' IoTAnalyticsDatasetS3DestinationConfiguration (Maybe IoTAnalyticsDatasetGlueConfiguration)
itadsdcGlueConfiguration = lens _ioTAnalyticsDatasetS3DestinationConfigurationGlueConfiguration (\s a -> s { _ioTAnalyticsDatasetS3DestinationConfigurationGlueConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-key
itadsdcKey :: Lens' IoTAnalyticsDatasetS3DestinationConfiguration (Val Text)
itadsdcKey = lens _ioTAnalyticsDatasetS3DestinationConfigurationKey (\s a -> s { _ioTAnalyticsDatasetS3DestinationConfigurationKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-s3destinationconfiguration.html#cfn-iotanalytics-dataset-s3destinationconfiguration-rolearn
itadsdcRoleArn :: Lens' IoTAnalyticsDatasetS3DestinationConfiguration (Val Text)
itadsdcRoleArn = lens _ioTAnalyticsDatasetS3DestinationConfigurationRoleArn (\s a -> s { _ioTAnalyticsDatasetS3DestinationConfigurationRoleArn = a })
