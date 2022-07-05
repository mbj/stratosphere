{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cachepolicy.html

module Stratosphere.Resources.CloudFrontCachePolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontCachePolicyCachePolicyConfig

-- | Full data type definition for CloudFrontCachePolicy. See
-- 'cloudFrontCachePolicy' for a more convenient constructor.
data CloudFrontCachePolicy =
  CloudFrontCachePolicy
  { _cloudFrontCachePolicyCachePolicyConfig :: CloudFrontCachePolicyCachePolicyConfig
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontCachePolicy where
  toResourceProperties CloudFrontCachePolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::CachePolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CachePolicyConfig",) . toJSON) _cloudFrontCachePolicyCachePolicyConfig
        ]
    }

-- | Constructor for 'CloudFrontCachePolicy' containing required fields as
-- arguments.
cloudFrontCachePolicy
  :: CloudFrontCachePolicyCachePolicyConfig -- ^ 'cfcpCachePolicyConfig'
  -> CloudFrontCachePolicy
cloudFrontCachePolicy cachePolicyConfigarg =
  CloudFrontCachePolicy
  { _cloudFrontCachePolicyCachePolicyConfig = cachePolicyConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cachepolicy.html#cfn-cloudfront-cachepolicy-cachepolicyconfig
cfcpCachePolicyConfig :: Lens' CloudFrontCachePolicy CloudFrontCachePolicyCachePolicyConfig
cfcpCachePolicyConfig = lens _cloudFrontCachePolicyCachePolicyConfig (\s a -> s { _cloudFrontCachePolicyCachePolicyConfig = a })
