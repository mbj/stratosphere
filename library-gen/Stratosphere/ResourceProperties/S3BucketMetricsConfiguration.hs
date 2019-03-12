{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html

module Stratosphere.ResourceProperties.S3BucketMetricsConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketTagFilter

-- | Full data type definition for S3BucketMetricsConfiguration. See
-- 's3BucketMetricsConfiguration' for a more convenient constructor.
data S3BucketMetricsConfiguration =
  S3BucketMetricsConfiguration
  { _s3BucketMetricsConfigurationId :: Val Text
  , _s3BucketMetricsConfigurationPrefix :: Maybe (Val Text)
  , _s3BucketMetricsConfigurationTagFilters :: Maybe [S3BucketTagFilter]
  } deriving (Show, Eq)

instance ToJSON S3BucketMetricsConfiguration where
  toJSON S3BucketMetricsConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _s3BucketMetricsConfigurationId
    , fmap (("Prefix",) . toJSON) _s3BucketMetricsConfigurationPrefix
    , fmap (("TagFilters",) . toJSON) _s3BucketMetricsConfigurationTagFilters
    ]

-- | Constructor for 'S3BucketMetricsConfiguration' containing required fields
-- as arguments.
s3BucketMetricsConfiguration
  :: Val Text -- ^ 'sbmcId'
  -> S3BucketMetricsConfiguration
s3BucketMetricsConfiguration idarg =
  S3BucketMetricsConfiguration
  { _s3BucketMetricsConfigurationId = idarg
  , _s3BucketMetricsConfigurationPrefix = Nothing
  , _s3BucketMetricsConfigurationTagFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-id
sbmcId :: Lens' S3BucketMetricsConfiguration (Val Text)
sbmcId = lens _s3BucketMetricsConfigurationId (\s a -> s { _s3BucketMetricsConfigurationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-prefix
sbmcPrefix :: Lens' S3BucketMetricsConfiguration (Maybe (Val Text))
sbmcPrefix = lens _s3BucketMetricsConfigurationPrefix (\s a -> s { _s3BucketMetricsConfigurationPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-metricsconfiguration.html#cfn-s3-bucket-metricsconfiguration-tagfilters
sbmcTagFilters :: Lens' S3BucketMetricsConfiguration (Maybe [S3BucketTagFilter])
sbmcTagFilters = lens _s3BucketMetricsConfigurationTagFilters (\s a -> s { _s3BucketMetricsConfigurationTagFilters = a })
