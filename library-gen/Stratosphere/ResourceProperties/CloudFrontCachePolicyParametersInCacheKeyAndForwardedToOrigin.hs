
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html

module Stratosphere.ResourceProperties.CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontCachePolicyCookiesConfig
import Stratosphere.ResourceProperties.CloudFrontCachePolicyHeadersConfig
import Stratosphere.ResourceProperties.CloudFrontCachePolicyQueryStringsConfig

-- | Full data type definition for
-- CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin. See
-- 'cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin' for a
-- more convenient constructor.
data CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin =
  CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
  { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig :: CloudFrontCachePolicyCookiesConfig
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginEnableAcceptEncodingGzip :: Val Bool
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig :: CloudFrontCachePolicyHeadersConfig
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig :: CloudFrontCachePolicyQueryStringsConfig
  } deriving (Show, Eq)

instance ToJSON CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin where
  toJSON CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin{..} =
    object $
    catMaybes
    [ (Just . ("CookiesConfig",) . toJSON) _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig
    , (Just . ("EnableAcceptEncodingGzip",) . toJSON) _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginEnableAcceptEncodingGzip
    , (Just . ("HeadersConfig",) . toJSON) _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig
    , (Just . ("QueryStringsConfig",) . toJSON) _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig
    ]

-- | Constructor for
-- 'CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin'
-- containing required fields as arguments.
cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
  :: CloudFrontCachePolicyCookiesConfig -- ^ 'cfcppickaftoCookiesConfig'
  -> Val Bool -- ^ 'cfcppickaftoEnableAcceptEncodingGzip'
  -> CloudFrontCachePolicyHeadersConfig -- ^ 'cfcppickaftoHeadersConfig'
  -> CloudFrontCachePolicyQueryStringsConfig -- ^ 'cfcppickaftoQueryStringsConfig'
  -> CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin cookiesConfigarg enableAcceptEncodingGziparg headersConfigarg queryStringsConfigarg =
  CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin
  { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig = cookiesConfigarg
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginEnableAcceptEncodingGzip = enableAcceptEncodingGziparg
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig = headersConfigarg
  , _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig = queryStringsConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-cookiesconfig
cfcppickaftoCookiesConfig :: Lens' CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin CloudFrontCachePolicyCookiesConfig
cfcppickaftoCookiesConfig = lens _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig (\s a -> s { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-enableacceptencodinggzip
cfcppickaftoEnableAcceptEncodingGzip :: Lens' CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin (Val Bool)
cfcppickaftoEnableAcceptEncodingGzip = lens _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginEnableAcceptEncodingGzip (\s a -> s { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginEnableAcceptEncodingGzip = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-headersconfig
cfcppickaftoHeadersConfig :: Lens' CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin CloudFrontCachePolicyHeadersConfig
cfcppickaftoHeadersConfig = lens _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig (\s a -> s { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin.html#cfn-cloudfront-cachepolicy-parametersincachekeyandforwardedtoorigin-querystringsconfig
cfcppickaftoQueryStringsConfig :: Lens' CloudFrontCachePolicyParametersInCacheKeyAndForwardedToOrigin CloudFrontCachePolicyQueryStringsConfig
cfcppickaftoQueryStringsConfig = lens _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig (\s a -> s { _cloudFrontCachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfig = a })
