{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html

module Stratosphere.ResourceProperties.CloudWatchAlarmMetric where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAlarmDimension

-- | Full data type definition for CloudWatchAlarmMetric. See
-- 'cloudWatchAlarmMetric' for a more convenient constructor.
data CloudWatchAlarmMetric =
  CloudWatchAlarmMetric
  { _cloudWatchAlarmMetricDimensions :: Maybe [CloudWatchAlarmDimension]
  , _cloudWatchAlarmMetricMetricName :: Maybe (Val Text)
  , _cloudWatchAlarmMetricNamespace :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudWatchAlarmMetric where
  toJSON CloudWatchAlarmMetric{..} =
    object $
    catMaybes
    [ fmap (("Dimensions",) . toJSON) _cloudWatchAlarmMetricDimensions
    , fmap (("MetricName",) . toJSON) _cloudWatchAlarmMetricMetricName
    , fmap (("Namespace",) . toJSON) _cloudWatchAlarmMetricNamespace
    ]

instance FromJSON CloudWatchAlarmMetric where
  parseJSON (Object obj) =
    CloudWatchAlarmMetric <$>
      (obj .:? "Dimensions") <*>
      (obj .:? "MetricName") <*>
      (obj .:? "Namespace")
  parseJSON _ = mempty

-- | Constructor for 'CloudWatchAlarmMetric' containing required fields as
-- arguments.
cloudWatchAlarmMetric
  :: CloudWatchAlarmMetric
cloudWatchAlarmMetric  =
  CloudWatchAlarmMetric
  { _cloudWatchAlarmMetricDimensions = Nothing
  , _cloudWatchAlarmMetricMetricName = Nothing
  , _cloudWatchAlarmMetricNamespace = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-dimensions
cwamDimensions :: Lens' CloudWatchAlarmMetric (Maybe [CloudWatchAlarmDimension])
cwamDimensions = lens _cloudWatchAlarmMetricDimensions (\s a -> s { _cloudWatchAlarmMetricDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-metricname
cwamMetricName :: Lens' CloudWatchAlarmMetric (Maybe (Val Text))
cwamMetricName = lens _cloudWatchAlarmMetricMetricName (\s a -> s { _cloudWatchAlarmMetricMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-metric.html#cfn-cloudwatch-alarm-metric-namespace
cwamNamespace :: Lens' CloudWatchAlarmMetric (Maybe (Val Text))
cwamNamespace = lens _cloudWatchAlarmMetricNamespace (\s a -> s { _cloudWatchAlarmMetricNamespace = a })
