{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cookiesconfig.html

module Stratosphere.ResourceProperties.CloudFrontCachePolicyCookiesConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontCachePolicyCookiesConfig. See
-- 'cloudFrontCachePolicyCookiesConfig' for a more convenient constructor.
data CloudFrontCachePolicyCookiesConfig =
  CloudFrontCachePolicyCookiesConfig
  { _cloudFrontCachePolicyCookiesConfigCookieBehavior :: Val Text
  , _cloudFrontCachePolicyCookiesConfigCookies :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontCachePolicyCookiesConfig where
  toJSON CloudFrontCachePolicyCookiesConfig{..} =
    object $
    catMaybes
    [ (Just . ("CookieBehavior",) . toJSON) _cloudFrontCachePolicyCookiesConfigCookieBehavior
    , fmap (("Cookies",) . toJSON) _cloudFrontCachePolicyCookiesConfigCookies
    ]

-- | Constructor for 'CloudFrontCachePolicyCookiesConfig' containing required
-- fields as arguments.
cloudFrontCachePolicyCookiesConfig
  :: Val Text -- ^ 'cfcpccCookieBehavior'
  -> CloudFrontCachePolicyCookiesConfig
cloudFrontCachePolicyCookiesConfig cookieBehaviorarg =
  CloudFrontCachePolicyCookiesConfig
  { _cloudFrontCachePolicyCookiesConfigCookieBehavior = cookieBehaviorarg
  , _cloudFrontCachePolicyCookiesConfigCookies = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cookiesconfig.html#cfn-cloudfront-cachepolicy-cookiesconfig-cookiebehavior
cfcpccCookieBehavior :: Lens' CloudFrontCachePolicyCookiesConfig (Val Text)
cfcpccCookieBehavior = lens _cloudFrontCachePolicyCookiesConfigCookieBehavior (\s a -> s { _cloudFrontCachePolicyCookiesConfigCookieBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-cookiesconfig.html#cfn-cloudfront-cachepolicy-cookiesconfig-cookies
cfcpccCookies :: Lens' CloudFrontCachePolicyCookiesConfig (Maybe (ValList Text))
cfcpccCookies = lens _cloudFrontCachePolicyCookiesConfigCookies (\s a -> s { _cloudFrontCachePolicyCookiesConfigCookies = a })
