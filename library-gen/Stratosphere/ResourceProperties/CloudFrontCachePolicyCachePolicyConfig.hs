{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html

module Stratosphere.ResourceProperties.CloudFrontCachePolicyCachePolicyConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin

-- | Full data type definition for CloudFrontCachePolicyCachePolicyConfig. See
-- 'cloudFrontCachePolicyCachePolicyConfig' for a more convenient
-- constructor.
data CloudFrontCachePolicyCachePolicyConfig =
  CloudFrontCachePolicyCachePolicyConfig
  { _cloudFrontCachePolicyCachePolicyConfigComment :: Maybe (Val Text)
  , _cloudFrontCachePolicyCachePolicyConfigDefaultTTL :: Maybe (Val Double)
  , _cloudFrontCachePolicyCachePolicyConfigMaxTTL :: Maybe (Val Double)
  , _cloudFrontCachePolicyCachePolicyConfigMinTTL :: Val Double
  , _cloudFrontCachePolicyCachePolicyConfigName :: Val Text
  , _cloudFrontCachePolicyCachePolicyConfigParametersInCacheKeyAndForwardedToOrigin :: Maybe CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
  } deriving (Show, Eq)

instance ToJSON CloudFrontCachePolicyCachePolicyConfig where
  toJSON CloudFrontCachePolicyCachePolicyConfig{..} =
    object $
    catMaybes
    [ fmap (("Comment",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigComment
    , fmap (("DefaultTTL",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigDefaultTTL
    , fmap (("MaxTTL",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigMaxTTL
    , (Just . ("MinTTL",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigMinTTL
    , (Just . ("Name",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigName
    , fmap (("ParametersInCacheKeyAndForwardedToOrigin",) . toJSON) _cloudFrontCachePolicyCachePolicyConfigParametersInCacheKeyAndForwardedToOrigin
    ]

-- | Constructor for 'CloudFrontCachePolicyCachePolicyConfig' containing
-- required fields as arguments.
cloudFrontCachePolicyCachePolicyConfig
  :: Val Double -- ^ 'cfcpcpcMinTTL'
  -> Val Text -- ^ 'cfcpcpcName'
  -> CloudFrontCachePolicyCachePolicyConfig
cloudFrontCachePolicyCachePolicyConfig minTTLarg namearg =
  CloudFrontCachePolicyCachePolicyConfig
  { _cloudFrontCachePolicyCachePolicyConfigComment = Nothing
  , _cloudFrontCachePolicyCachePolicyConfigDefaultTTL = Nothing
  , _cloudFrontCachePolicyCachePolicyConfigMaxTTL = Nothing
  , _cloudFrontCachePolicyCachePolicyConfigMinTTL = minTTLarg
  , _cloudFrontCachePolicyCachePolicyConfigName = namearg
  , _cloudFrontCachePolicyCachePolicyConfigParametersInCacheKeyAndForwardedToOrigin = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-comment
cfcpcpcComment :: Lens' CloudFrontCachePolicyCachePolicyConfig (Maybe (Val Text))
cfcpcpcComment = lens _cloudFrontCachePolicyCachePolicyConfigComment (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-defaultttl
cfcpcpcDefaultTTL :: Lens' CloudFrontCachePolicyCachePolicyConfig (Maybe (Val Double))
cfcpcpcDefaultTTL = lens _cloudFrontCachePolicyCachePolicyConfigDefaultTTL (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigDefaultTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-maxttl
cfcpcpcMaxTTL :: Lens' CloudFrontCachePolicyCachePolicyConfig (Maybe (Val Double))
cfcpcpcMaxTTL = lens _cloudFrontCachePolicyCachePolicyConfigMaxTTL (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigMaxTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-minttl
cfcpcpcMinTTL :: Lens' CloudFrontCachePolicyCachePolicyConfig (Val Double)
cfcpcpcMinTTL = lens _cloudFrontCachePolicyCachePolicyConfigMinTTL (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-name
cfcpcpcName :: Lens' CloudFrontCachePolicyCachePolicyConfig (Val Text)
cfcpcpcName = lens _cloudFrontCachePolicyCachePolicyConfigName (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cachepolicyconfig.html#cfn-cloudfront-cachepolicy-cachepolicyconfig-parametersincachekeyandforwardedtoorigin
cfcpcpcParametersInCacheKeyAndForwardedToOrigin :: Lens' CloudFrontCachePolicyCachePolicyConfig (Maybe CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin)
cfcpcpcParametersInCacheKeyAndForwardedToOrigin = lens _cloudFrontCachePolicyCachePolicyConfigParametersInCacheKeyAndForwardedToOrigin (\s a -> s { _cloudFrontCachePolicyCachePolicyConfigParametersInCacheKeyAndForwardedToOrigin = a })
