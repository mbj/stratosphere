{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html

module Stratosphere.ResourceProperties.CloudFrontDistributionS3OriginConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionS3OriginConfig. See
-- 'cloudFrontDistributionS3OriginConfig' for a more convenient constructor.
data CloudFrontDistributionS3OriginConfig =
  CloudFrontDistributionS3OriginConfig
  { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionS3OriginConfig where
  toJSON CloudFrontDistributionS3OriginConfig{..} =
    object $
    catMaybes
    [ fmap (("OriginAccessIdentity",) . toJSON) _cloudFrontDistributionS3OriginConfigOriginAccessIdentity
    ]

-- | Constructor for 'CloudFrontDistributionS3OriginConfig' containing
-- required fields as arguments.
cloudFrontDistributionS3OriginConfig
  :: CloudFrontDistributionS3OriginConfig
cloudFrontDistributionS3OriginConfig  =
  CloudFrontDistributionS3OriginConfig
  { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-s3originconfig.html#cfn-cloudfront-distribution-s3originconfig-originaccessidentity
cfdsocOriginAccessIdentity :: Lens' CloudFrontDistributionS3OriginConfig (Maybe (Val Text))
cfdsocOriginAccessIdentity = lens _cloudFrontDistributionS3OriginConfigOriginAccessIdentity (\s a -> s { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = a })
