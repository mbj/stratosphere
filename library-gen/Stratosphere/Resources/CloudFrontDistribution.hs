{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution.html

module Stratosphere.Resources.CloudFrontDistribution where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig

-- | Full data type definition for CloudFrontDistribution. See
-- | 'cloudFrontDistribution' for a more convenient constructor.
data CloudFrontDistribution =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig :: CloudFrontDistributionDistributionConfig
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistribution where
  toJSON CloudFrontDistribution{..} =
    object $
    catMaybes
    [ Just ("DistributionConfig" .= _cloudFrontDistributionDistributionConfig)
    ]

instance FromJSON CloudFrontDistribution where
  parseJSON (Object obj) =
    CloudFrontDistribution <$>
      obj .: "DistributionConfig"
  parseJSON _ = mempty

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
