{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html

module Stratosphere.Resources.CloudFrontDistribution where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudFrontDistribution. See
-- 'cloudFrontDistribution' for a more convenient constructor.
data CloudFrontDistribution =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig :: CloudFrontDistributionDistributionConfig
  , _cloudFrontDistributionTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistribution where
  toJSON CloudFrontDistribution{..} =
    object $
    catMaybes
    [ (Just . ("DistributionConfig",) . toJSON) _cloudFrontDistributionDistributionConfig
    , fmap (("Tags",) . toJSON) _cloudFrontDistributionTags
    ]

instance FromJSON CloudFrontDistribution where
  parseJSON (Object obj) =
    CloudFrontDistribution <$>
      (obj .: "DistributionConfig") <*>
      (obj .:? "Tags")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistribution' containing required fields as
-- arguments.
cloudFrontDistribution
  :: CloudFrontDistributionDistributionConfig -- ^ 'cfdDistributionConfig'
  -> CloudFrontDistribution
cloudFrontDistribution distributionConfigarg =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig = distributionConfigarg
  , _cloudFrontDistributionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-distributionconfig
cfdDistributionConfig :: Lens' CloudFrontDistribution CloudFrontDistributionDistributionConfig
cfdDistributionConfig = lens _cloudFrontDistributionDistributionConfig (\s a -> s { _cloudFrontDistributionDistributionConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html#cfn-cloudfront-distribution-tags
cfdTags :: Lens' CloudFrontDistribution (Maybe [Tag])
cfdTags = lens _cloudFrontDistributionTags (\s a -> s { _cloudFrontDistributionTags = a })
