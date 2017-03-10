{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-s3origin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionS3OriginConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("OriginAccessIdentity" .=) <$> _cloudFrontDistributionS3OriginConfigOriginAccessIdentity
    ]

instance FromJSON CloudFrontDistributionS3OriginConfig where
  parseJSON (Object obj) =
    CloudFrontDistributionS3OriginConfig <$>
      obj .:? "OriginAccessIdentity"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionS3OriginConfig' containing
-- required fields as arguments.
cloudFrontDistributionS3OriginConfig
  :: CloudFrontDistributionS3OriginConfig
cloudFrontDistributionS3OriginConfig  =
  CloudFrontDistributionS3OriginConfig
  { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-s3origin.html#cfn-cloudfront-s3origin-originaccessidentity
cfdsocOriginAccessIdentity :: Lens' CloudFrontDistributionS3OriginConfig (Maybe (Val Text))
cfdsocOriginAccessIdentity = lens _cloudFrontDistributionS3OriginConfigOriginAccessIdentity (\s a -> s { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = a })
