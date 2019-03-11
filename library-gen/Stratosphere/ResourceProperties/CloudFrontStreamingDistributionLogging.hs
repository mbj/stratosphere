{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html

module Stratosphere.ResourceProperties.CloudFrontStreamingDistributionLogging where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontStreamingDistributionLogging. See
-- 'cloudFrontStreamingDistributionLogging' for a more convenient
-- constructor.
data CloudFrontStreamingDistributionLogging =
  CloudFrontStreamingDistributionLogging
  { _cloudFrontStreamingDistributionLoggingBucket :: Val Text
  , _cloudFrontStreamingDistributionLoggingEnabled :: Val Bool
  , _cloudFrontStreamingDistributionLoggingPrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontStreamingDistributionLogging where
  toJSON CloudFrontStreamingDistributionLogging{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _cloudFrontStreamingDistributionLoggingBucket
    , (Just . ("Enabled",) . toJSON . fmap Bool') _cloudFrontStreamingDistributionLoggingEnabled
    , (Just . ("Prefix",) . toJSON) _cloudFrontStreamingDistributionLoggingPrefix
    ]

-- | Constructor for 'CloudFrontStreamingDistributionLogging' containing
-- required fields as arguments.
cloudFrontStreamingDistributionLogging
  :: Val Text -- ^ 'cfsdlBucket'
  -> Val Bool -- ^ 'cfsdlEnabled'
  -> Val Text -- ^ 'cfsdlPrefix'
  -> CloudFrontStreamingDistributionLogging
cloudFrontStreamingDistributionLogging bucketarg enabledarg prefixarg =
  CloudFrontStreamingDistributionLogging
  { _cloudFrontStreamingDistributionLoggingBucket = bucketarg
  , _cloudFrontStreamingDistributionLoggingEnabled = enabledarg
  , _cloudFrontStreamingDistributionLoggingPrefix = prefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-bucket
cfsdlBucket :: Lens' CloudFrontStreamingDistributionLogging (Val Text)
cfsdlBucket = lens _cloudFrontStreamingDistributionLoggingBucket (\s a -> s { _cloudFrontStreamingDistributionLoggingBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-enabled
cfsdlEnabled :: Lens' CloudFrontStreamingDistributionLogging (Val Bool)
cfsdlEnabled = lens _cloudFrontStreamingDistributionLoggingEnabled (\s a -> s { _cloudFrontStreamingDistributionLoggingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-streamingdistribution-logging.html#cfn-cloudfront-streamingdistribution-logging-prefix
cfsdlPrefix :: Lens' CloudFrontStreamingDistributionLogging (Val Text)
cfsdlPrefix = lens _cloudFrontStreamingDistributionLoggingPrefix (\s a -> s { _cloudFrontStreamingDistributionLoggingPrefix = a })
