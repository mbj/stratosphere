
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html

module Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorRange

-- | Full data type definition for CloudWatchAnomalyDetectorConfiguration. See
-- 'cloudWatchAnomalyDetectorConfiguration' for a more convenient
-- constructor.
data CloudWatchAnomalyDetectorConfiguration =
  CloudWatchAnomalyDetectorConfiguration
  { _cloudWatchAnomalyDetectorConfigurationExcludedTimeRanges :: Maybe [CloudWatchAnomalyDetectorRange]
  , _cloudWatchAnomalyDetectorConfigurationMetricTimeZone :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudWatchAnomalyDetectorConfiguration where
  toJSON CloudWatchAnomalyDetectorConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ExcludedTimeRanges",) . toJSON) _cloudWatchAnomalyDetectorConfigurationExcludedTimeRanges
    , fmap (("MetricTimeZone",) . toJSON) _cloudWatchAnomalyDetectorConfigurationMetricTimeZone
    ]

-- | Constructor for 'CloudWatchAnomalyDetectorConfiguration' containing
-- required fields as arguments.
cloudWatchAnomalyDetectorConfiguration
  :: CloudWatchAnomalyDetectorConfiguration
cloudWatchAnomalyDetectorConfiguration  =
  CloudWatchAnomalyDetectorConfiguration
  { _cloudWatchAnomalyDetectorConfigurationExcludedTimeRanges = Nothing
  , _cloudWatchAnomalyDetectorConfigurationMetricTimeZone = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-excludedtimeranges
cwadcExcludedTimeRanges :: Lens' CloudWatchAnomalyDetectorConfiguration (Maybe [CloudWatchAnomalyDetectorRange])
cwadcExcludedTimeRanges = lens _cloudWatchAnomalyDetectorConfigurationExcludedTimeRanges (\s a -> s { _cloudWatchAnomalyDetectorConfigurationExcludedTimeRanges = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-configuration.html#cfn-cloudwatch-anomalydetector-configuration-metrictimezone
cwadcMetricTimeZone :: Lens' CloudWatchAnomalyDetectorConfiguration (Maybe (Val Text))
cwadcMetricTimeZone = lens _cloudWatchAnomalyDetectorConfigurationMetricTimeZone (\s a -> s { _cloudWatchAnomalyDetectorConfigurationMetricTimeZone = a })
