{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html

module Stratosphere.Resources.CloudWatchAnomalyDetector where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorConfiguration
import Stratosphere.ResourceProperties.CloudWatchAnomalyDetectorDimension

-- | Full data type definition for CloudWatchAnomalyDetector. See
-- 'cloudWatchAnomalyDetector' for a more convenient constructor.
data CloudWatchAnomalyDetector =
  CloudWatchAnomalyDetector
  { _cloudWatchAnomalyDetectorConfiguration :: Maybe CloudWatchAnomalyDetectorConfiguration
  , _cloudWatchAnomalyDetectorDimensions :: Maybe [CloudWatchAnomalyDetectorDimension]
  , _cloudWatchAnomalyDetectorMetricName :: Val Text
  , _cloudWatchAnomalyDetectorNamespace :: Val Text
  , _cloudWatchAnomalyDetectorStat :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CloudWatchAnomalyDetector where
  toResourceProperties CloudWatchAnomalyDetector{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudWatch::AnomalyDetector"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Configuration",) . toJSON) _cloudWatchAnomalyDetectorConfiguration
        , fmap (("Dimensions",) . toJSON) _cloudWatchAnomalyDetectorDimensions
        , (Just . ("MetricName",) . toJSON) _cloudWatchAnomalyDetectorMetricName
        , (Just . ("Namespace",) . toJSON) _cloudWatchAnomalyDetectorNamespace
        , (Just . ("Stat",) . toJSON) _cloudWatchAnomalyDetectorStat
        ]
    }

-- | Constructor for 'CloudWatchAnomalyDetector' containing required fields as
-- arguments.
cloudWatchAnomalyDetector
  :: Val Text -- ^ 'cwadMetricName'
  -> Val Text -- ^ 'cwadNamespace'
  -> Val Text -- ^ 'cwadStat'
  -> CloudWatchAnomalyDetector
cloudWatchAnomalyDetector metricNamearg namespacearg statarg =
  CloudWatchAnomalyDetector
  { _cloudWatchAnomalyDetectorConfiguration = Nothing
  , _cloudWatchAnomalyDetectorDimensions = Nothing
  , _cloudWatchAnomalyDetectorMetricName = metricNamearg
  , _cloudWatchAnomalyDetectorNamespace = namespacearg
  , _cloudWatchAnomalyDetectorStat = statarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-configuration
cwadConfiguration :: Lens' CloudWatchAnomalyDetector (Maybe CloudWatchAnomalyDetectorConfiguration)
cwadConfiguration = lens _cloudWatchAnomalyDetectorConfiguration (\s a -> s { _cloudWatchAnomalyDetectorConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-dimensions
cwadDimensions :: Lens' CloudWatchAnomalyDetector (Maybe [CloudWatchAnomalyDetectorDimension])
cwadDimensions = lens _cloudWatchAnomalyDetectorDimensions (\s a -> s { _cloudWatchAnomalyDetectorDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-metricname
cwadMetricName :: Lens' CloudWatchAnomalyDetector (Val Text)
cwadMetricName = lens _cloudWatchAnomalyDetectorMetricName (\s a -> s { _cloudWatchAnomalyDetectorMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-namespace
cwadNamespace :: Lens' CloudWatchAnomalyDetector (Val Text)
cwadNamespace = lens _cloudWatchAnomalyDetectorNamespace (\s a -> s { _cloudWatchAnomalyDetectorNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-anomalydetector.html#cfn-cloudwatch-anomalydetector-stat
cwadStat :: Lens' CloudWatchAnomalyDetector (Val Text)
cwadStat = lens _cloudWatchAnomalyDetectorStat (\s a -> s { _cloudWatchAnomalyDetectorStat = a })
