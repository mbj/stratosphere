
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html

module Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyHeadersConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontOriginRequestPolicyHeadersConfig.
-- See 'cloudFrontOriginRequestPolicyHeadersConfig' for a more convenient
-- constructor.
data CloudFrontOriginRequestPolicyHeadersConfig =
  CloudFrontOriginRequestPolicyHeadersConfig
  { _cloudFrontOriginRequestPolicyHeadersConfigHeaderBehavior :: Val Text
  , _cloudFrontOriginRequestPolicyHeadersConfigHeaders :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontOriginRequestPolicyHeadersConfig where
  toJSON CloudFrontOriginRequestPolicyHeadersConfig{..} =
    object $
    catMaybes
    [ (Just . ("HeaderBehavior",) . toJSON) _cloudFrontOriginRequestPolicyHeadersConfigHeaderBehavior
    , fmap (("Headers",) . toJSON) _cloudFrontOriginRequestPolicyHeadersConfigHeaders
    ]

-- | Constructor for 'CloudFrontOriginRequestPolicyHeadersConfig' containing
-- required fields as arguments.
cloudFrontOriginRequestPolicyHeadersConfig
  :: Val Text -- ^ 'cforphcHeaderBehavior'
  -> CloudFrontOriginRequestPolicyHeadersConfig
cloudFrontOriginRequestPolicyHeadersConfig headerBehaviorarg =
  CloudFrontOriginRequestPolicyHeadersConfig
  { _cloudFrontOriginRequestPolicyHeadersConfigHeaderBehavior = headerBehaviorarg
  , _cloudFrontOriginRequestPolicyHeadersConfigHeaders = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headerbehavior
cforphcHeaderBehavior :: Lens' CloudFrontOriginRequestPolicyHeadersConfig (Val Text)
cforphcHeaderBehavior = lens _cloudFrontOriginRequestPolicyHeadersConfigHeaderBehavior (\s a -> s { _cloudFrontOriginRequestPolicyHeadersConfigHeaderBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-headersconfig.html#cfn-cloudfront-originrequestpolicy-headersconfig-headers
cforphcHeaders :: Lens' CloudFrontOriginRequestPolicyHeadersConfig (Maybe (ValList Text))
cforphcHeaders = lens _cloudFrontOriginRequestPolicyHeadersConfigHeaders (\s a -> s { _cloudFrontOriginRequestPolicyHeadersConfigHeaders = a })
