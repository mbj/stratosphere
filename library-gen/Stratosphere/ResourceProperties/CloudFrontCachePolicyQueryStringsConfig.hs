{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html

module Stratosphere.ResourceProperties.CloudFrontCachePolicyQueryStringsConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontCachePolicyQueryStringsConfig.
-- See 'cloudFrontCachePolicyQueryStringsConfig' for a more convenient
-- constructor.
data CloudFrontCachePolicyQueryStringsConfig =
  CloudFrontCachePolicyQueryStringsConfig
  { _cloudFrontCachePolicyQueryStringsConfigQueryStringBehavior :: Val Text
  , _cloudFrontCachePolicyQueryStringsConfigQueryStrings :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontCachePolicyQueryStringsConfig where
  toJSON CloudFrontCachePolicyQueryStringsConfig{..} =
    object $
    catMaybes
    [ (Just . ("QueryStringBehavior",) . toJSON) _cloudFrontCachePolicyQueryStringsConfigQueryStringBehavior
    , fmap (("QueryStrings",) . toJSON) _cloudFrontCachePolicyQueryStringsConfigQueryStrings
    ]

-- | Constructor for 'CloudFrontCachePolicyQueryStringsConfig' containing
-- required fields as arguments.
cloudFrontCachePolicyQueryStringsConfig
  :: Val Text -- ^ 'cfcpqscQueryStringBehavior'
  -> CloudFrontCachePolicyQueryStringsConfig
cloudFrontCachePolicyQueryStringsConfig queryStringBehaviorarg =
  CloudFrontCachePolicyQueryStringsConfig
  { _cloudFrontCachePolicyQueryStringsConfigQueryStringBehavior = queryStringBehaviorarg
  , _cloudFrontCachePolicyQueryStringsConfigQueryStrings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html#cfn-cloudfront-cachepolicy-querystringsconfig-querystringbehavior
cfcpqscQueryStringBehavior :: Lens' CloudFrontCachePolicyQueryStringsConfig (Val Text)
cfcpqscQueryStringBehavior = lens _cloudFrontCachePolicyQueryStringsConfigQueryStringBehavior (\s a -> s { _cloudFrontCachePolicyQueryStringsConfigQueryStringBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-querystringsconfig.html#cfn-cloudfront-cachepolicy-querystringsconfig-querystrings
cfcpqscQueryStrings :: Lens' CloudFrontCachePolicyQueryStringsConfig (Maybe (ValList Text))
cfcpqscQueryStrings = lens _cloudFrontCachePolicyQueryStringsConfigQueryStrings (\s a -> s { _cloudFrontCachePolicyQueryStringsConfigQueryStrings = a })
