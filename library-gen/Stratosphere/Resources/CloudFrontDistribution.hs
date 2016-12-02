{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution.html

module Stratosphere.Resources.CloudFrontDistribution where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig

-- | Full data type definition for CloudFrontDistribution. See
-- | 'cloudFrontDistribution' for a more convenient constructor.
data CloudFrontDistribution =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig :: CloudFrontDistributionDistributionConfig
  } deriving (Show, Generic)

instance ToJSON CloudFrontDistribution where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON CloudFrontDistribution where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistribution' containing required fields as
-- | arguments.
cloudFrontDistribution
  :: CloudFrontDistributionDistributionConfig -- ^ 'cfdDistributionConfig'
  -> CloudFrontDistribution
cloudFrontDistribution distributionConfigarg =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig = distributionConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution.html#cfn-cloudfront-distribution-distributionconfig
cfdDistributionConfig :: Lens' CloudFrontDistribution CloudFrontDistributionDistributionConfig
cfdDistributionConfig = lens _cloudFrontDistributionDistributionConfig (\s a -> s { _cloudFrontDistributionDistributionConfig = a })
