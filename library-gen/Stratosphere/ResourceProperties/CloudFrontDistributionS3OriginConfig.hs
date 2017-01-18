{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-s3origin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionS3OriginConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionS3OriginConfig. See
-- | 'cloudFrontDistributionS3OriginConfig' for a more convenient constructor.
data CloudFrontDistributionS3OriginConfig =
  CloudFrontDistributionS3OriginConfig
  { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionS3OriginConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

instance FromJSON CloudFrontDistributionS3OriginConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 37, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionS3OriginConfig' containing
-- | required fields as arguments.
cloudFrontDistributionS3OriginConfig
  :: CloudFrontDistributionS3OriginConfig
cloudFrontDistributionS3OriginConfig  =
  CloudFrontDistributionS3OriginConfig
  { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-s3origin.html#cfn-cloudfront-s3origin-originaccessidentity
cfdsocOriginAccessIdentity :: Lens' CloudFrontDistributionS3OriginConfig (Maybe (Val Text))
cfdsocOriginAccessIdentity = lens _cloudFrontDistributionS3OriginConfigOriginAccessIdentity (\s a -> s { _cloudFrontDistributionS3OriginConfigOriginAccessIdentity = a })
