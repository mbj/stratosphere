{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html

module Stratosphere.ResourceProperties.S3BucketMetrics where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketReplicationTimeValue

-- | Full data type definition for S3BucketMetrics. See 's3BucketMetrics' for
-- a more convenient constructor.
data S3BucketMetrics =
  S3BucketMetrics
  { _s3BucketMetricsEventThreshold :: S3BucketReplicationTimeValue
  , _s3BucketMetricsStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketMetrics where
  toJSON S3BucketMetrics{..} =
    object $
    catMaybes
    [ (Just . ("EventThreshold",) . toJSON) _s3BucketMetricsEventThreshold
    , (Just . ("Status",) . toJSON) _s3BucketMetricsStatus
    ]

-- | Constructor for 'S3BucketMetrics' containing required fields as
-- arguments.
s3BucketMetrics
  :: S3BucketReplicationTimeValue -- ^ 'sbmEventThreshold'
  -> Val Text -- ^ 'sbmStatus'
  -> S3BucketMetrics
s3BucketMetrics eventThresholdarg statusarg =
  S3BucketMetrics
  { _s3BucketMetricsEventThreshold = eventThresholdarg
  , _s3BucketMetricsStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html#cfn-s3-bucket-metrics-eventthreshold
sbmEventThreshold :: Lens' S3BucketMetrics S3BucketReplicationTimeValue
sbmEventThreshold = lens _s3BucketMetricsEventThreshold (\s a -> s { _s3BucketMetricsEventThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metrics.html#cfn-s3-bucket-metrics-status
sbmStatus :: Lens' S3BucketMetrics (Val Text)
sbmStatus = lens _s3BucketMetricsStatus (\s a -> s { _s3BucketMetricsStatus = a })
