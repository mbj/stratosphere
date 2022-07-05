{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-distribution.html

module Stratosphere.Resources.CloudFrontDistribution where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionDistributionConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for CloudFrontDistribution. See
-- 'cloudFrontDistribution' for a more convenient constructor.
data CloudFrontDistribution =
  CloudFrontDistribution
  { _cloudFrontDistributionDistributionConfig :: CloudFrontDistributionDistributionConfig
  , _cloudFrontDistributionTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontDistribution where
  toResourceProperties CloudFrontDistribution{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::Distribution"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("DistributionConfig",) . toJSON) _cloudFrontDistributionDistributionConfig
        , fmap (("Tags",) . toJSON) _cloudFrontDistributionTags
        ]
    }

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
