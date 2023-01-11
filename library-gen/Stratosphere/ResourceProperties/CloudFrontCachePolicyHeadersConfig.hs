
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-headersconfig.html

module Stratosphere.ResourceProperties.CloudFrontCachePolicyHeadersConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontCachePolicyHeadersConfig. See
-- 'cloudFrontCachePolicyHeadersConfig' for a more convenient constructor.
data CloudFrontCachePolicyHeadersConfig =
  CloudFrontCachePolicyHeadersConfig
  { _cloudFrontCachePolicyHeadersConfigHeaderBehavior :: Val Text
  , _cloudFrontCachePolicyHeadersConfigHeaders :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontCachePolicyHeadersConfig where
  toJSON CloudFrontCachePolicyHeadersConfig{..} =
    object $
    catMaybes
    [ (Just . ("HeaderBehavior",) . toJSON) _cloudFrontCachePolicyHeadersConfigHeaderBehavior
    , fmap (("Headers",) . toJSON) _cloudFrontCachePolicyHeadersConfigHeaders
    ]

-- | Constructor for 'CloudFrontCachePolicyHeadersConfig' containing required
-- fields as arguments.
cloudFrontCachePolicyHeadersConfig
  :: Val Text -- ^ 'cfcphcHeaderBehavior'
  -> CloudFrontCachePolicyHeadersConfig
cloudFrontCachePolicyHeadersConfig headerBehaviorarg =
  CloudFrontCachePolicyHeadersConfig
  { _cloudFrontCachePolicyHeadersConfigHeaderBehavior = headerBehaviorarg
  , _cloudFrontCachePolicyHeadersConfigHeaders = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-headersconfig.html#cfn-cloudfront-cachepolicy-headersconfig-headerbehavior
cfcphcHeaderBehavior :: Lens' CloudFrontCachePolicyHeadersConfig (Val Text)
cfcphcHeaderBehavior = lens _cloudFrontCachePolicyHeadersConfigHeaderBehavior (\s a -> s { _cloudFrontCachePolicyHeadersConfigHeaderBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cachepolicy-headersconfig.html#cfn-cloudfront-cachepolicy-headersconfig-headers
cfcphcHeaders :: Lens' CloudFrontCachePolicyHeadersConfig (Maybe (ValList Text))
cfcphcHeaders = lens _cloudFrontCachePolicyHeadersConfigHeaders (\s a -> s { _cloudFrontCachePolicyHeadersConfigHeaders = a })
