{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLogging where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionLogging. See
-- 'cloudFrontDistributionLogging' for a more convenient constructor.
data CloudFrontDistributionLogging =
  CloudFrontDistributionLogging
  { _cloudFrontDistributionLoggingBucket :: Val Text
  , _cloudFrontDistributionLoggingIncludeCookies :: Maybe (Val Bool)
  , _cloudFrontDistributionLoggingPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionLogging where
  toJSON CloudFrontDistributionLogging{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _cloudFrontDistributionLoggingBucket
    , fmap (("IncludeCookies",) . toJSON . fmap Bool') _cloudFrontDistributionLoggingIncludeCookies
    , fmap (("Prefix",) . toJSON) _cloudFrontDistributionLoggingPrefix
    ]

-- | Constructor for 'CloudFrontDistributionLogging' containing required
-- fields as arguments.
cloudFrontDistributionLogging
  :: Val Text -- ^ 'cfdlBucket'
  -> CloudFrontDistributionLogging
cloudFrontDistributionLogging bucketarg =
  CloudFrontDistributionLogging
  { _cloudFrontDistributionLoggingBucket = bucketarg
  , _cloudFrontDistributionLoggingIncludeCookies = Nothing
  , _cloudFrontDistributionLoggingPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-bucket
cfdlBucket :: Lens' CloudFrontDistributionLogging (Val Text)
cfdlBucket = lens _cloudFrontDistributionLoggingBucket (\s a -> s { _cloudFrontDistributionLoggingBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-includecookies
cfdlIncludeCookies :: Lens' CloudFrontDistributionLogging (Maybe (Val Bool))
cfdlIncludeCookies = lens _cloudFrontDistributionLoggingIncludeCookies (\s a -> s { _cloudFrontDistributionLoggingIncludeCookies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-logging.html#cfn-cloudfront-distribution-logging-prefix
cfdlPrefix :: Lens' CloudFrontDistributionLogging (Maybe (Val Text))
cfdlPrefix = lens _cloudFrontDistributionLoggingPrefix (\s a -> s { _cloudFrontDistributionLoggingPrefix = a })
