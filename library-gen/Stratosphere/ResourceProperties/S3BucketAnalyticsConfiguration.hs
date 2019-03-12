{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html

module Stratosphere.ResourceProperties.S3BucketAnalyticsConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketStorageClassAnalysis
import Stratosphere.ResourceProperties.S3BucketTagFilter

-- | Full data type definition for S3BucketAnalyticsConfiguration. See
-- 's3BucketAnalyticsConfiguration' for a more convenient constructor.
data S3BucketAnalyticsConfiguration =
  S3BucketAnalyticsConfiguration
  { _s3BucketAnalyticsConfigurationId :: Val Text
  , _s3BucketAnalyticsConfigurationPrefix :: Maybe (Val Text)
  , _s3BucketAnalyticsConfigurationStorageClassAnalysis :: S3BucketStorageClassAnalysis
  , _s3BucketAnalyticsConfigurationTagFilters :: Maybe [S3BucketTagFilter]
  } deriving (Show, Eq)

instance ToJSON S3BucketAnalyticsConfiguration where
  toJSON S3BucketAnalyticsConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _s3BucketAnalyticsConfigurationId
    , fmap (("Prefix",) . toJSON) _s3BucketAnalyticsConfigurationPrefix
    , (Just . ("StorageClassAnalysis",) . toJSON) _s3BucketAnalyticsConfigurationStorageClassAnalysis
    , fmap (("TagFilters",) . toJSON) _s3BucketAnalyticsConfigurationTagFilters
    ]

-- | Constructor for 'S3BucketAnalyticsConfiguration' containing required
-- fields as arguments.
s3BucketAnalyticsConfiguration
  :: Val Text -- ^ 'sbacId'
  -> S3BucketStorageClassAnalysis -- ^ 'sbacStorageClassAnalysis'
  -> S3BucketAnalyticsConfiguration
s3BucketAnalyticsConfiguration idarg storageClassAnalysisarg =
  S3BucketAnalyticsConfiguration
  { _s3BucketAnalyticsConfigurationId = idarg
  , _s3BucketAnalyticsConfigurationPrefix = Nothing
  , _s3BucketAnalyticsConfigurationStorageClassAnalysis = storageClassAnalysisarg
  , _s3BucketAnalyticsConfigurationTagFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-id
sbacId :: Lens' S3BucketAnalyticsConfiguration (Val Text)
sbacId = lens _s3BucketAnalyticsConfigurationId (\s a -> s { _s3BucketAnalyticsConfigurationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-prefix
sbacPrefix :: Lens' S3BucketAnalyticsConfiguration (Maybe (Val Text))
sbacPrefix = lens _s3BucketAnalyticsConfigurationPrefix (\s a -> s { _s3BucketAnalyticsConfigurationPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-storageclassanalysis
sbacStorageClassAnalysis :: Lens' S3BucketAnalyticsConfiguration S3BucketStorageClassAnalysis
sbacStorageClassAnalysis = lens _s3BucketAnalyticsConfigurationStorageClassAnalysis (\s a -> s { _s3BucketAnalyticsConfigurationStorageClassAnalysis = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-analyticsconfiguration.html#cfn-s3-bucket-analyticsconfiguration-tagfilters
sbacTagFilters :: Lens' S3BucketAnalyticsConfiguration (Maybe [S3BucketTagFilter])
sbacTagFilters = lens _s3BucketAnalyticsConfigurationTagFilters (\s a -> s { _s3BucketAnalyticsConfigurationTagFilters = a })
