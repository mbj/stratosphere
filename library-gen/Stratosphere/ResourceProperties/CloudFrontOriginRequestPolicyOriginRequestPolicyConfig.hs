
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html

module Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyOriginRequestPolicyConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyCookiesConfig
import Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyHeadersConfig
import Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyQueryStringsConfig

-- | Full data type definition for
-- CloudFrontOriginRequestPolicyOriginRequestPolicyConfig. See
-- 'cloudFrontOriginRequestPolicyOriginRequestPolicyConfig' for a more
-- convenient constructor.
data CloudFrontOriginRequestPolicyOriginRequestPolicyConfig =
  CloudFrontOriginRequestPolicyOriginRequestPolicyConfig
  { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigComment :: Maybe (Val Text)
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigCookiesConfig :: CloudFrontOriginRequestPolicyCookiesConfig
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigHeadersConfig :: CloudFrontOriginRequestPolicyHeadersConfig
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigName :: Val Text
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigQueryStringsConfig :: CloudFrontOriginRequestPolicyQueryStringsConfig
  } deriving (Show, Eq)

instance ToJSON CloudFrontOriginRequestPolicyOriginRequestPolicyConfig where
  toJSON CloudFrontOriginRequestPolicyOriginRequestPolicyConfig{..} =
    object $
    catMaybes
    [ fmap (("Comment",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigComment
    , (Just . ("CookiesConfig",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigCookiesConfig
    , (Just . ("HeadersConfig",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigHeadersConfig
    , (Just . ("Name",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigName
    , (Just . ("QueryStringsConfig",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigQueryStringsConfig
    ]

-- | Constructor for 'CloudFrontOriginRequestPolicyOriginRequestPolicyConfig'
-- containing required fields as arguments.
cloudFrontOriginRequestPolicyOriginRequestPolicyConfig
  :: CloudFrontOriginRequestPolicyCookiesConfig -- ^ 'cforporpcCookiesConfig'
  -> CloudFrontOriginRequestPolicyHeadersConfig -- ^ 'cforporpcHeadersConfig'
  -> Val Text -- ^ 'cforporpcName'
  -> CloudFrontOriginRequestPolicyQueryStringsConfig -- ^ 'cforporpcQueryStringsConfig'
  -> CloudFrontOriginRequestPolicyOriginRequestPolicyConfig
cloudFrontOriginRequestPolicyOriginRequestPolicyConfig cookiesConfigarg headersConfigarg namearg queryStringsConfigarg =
  CloudFrontOriginRequestPolicyOriginRequestPolicyConfig
  { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigComment = Nothing
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigCookiesConfig = cookiesConfigarg
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigHeadersConfig = headersConfigarg
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigName = namearg
  , _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigQueryStringsConfig = queryStringsConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-comment
cforporpcComment :: Lens' CloudFrontOriginRequestPolicyOriginRequestPolicyConfig (Maybe (Val Text))
cforporpcComment = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigComment (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigComment = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-cookiesconfig
cforporpcCookiesConfig :: Lens' CloudFrontOriginRequestPolicyOriginRequestPolicyConfig CloudFrontOriginRequestPolicyCookiesConfig
cforporpcCookiesConfig = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigCookiesConfig (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigCookiesConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-headersconfig
cforporpcHeadersConfig :: Lens' CloudFrontOriginRequestPolicyOriginRequestPolicyConfig CloudFrontOriginRequestPolicyHeadersConfig
cforporpcHeadersConfig = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigHeadersConfig (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigHeadersConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-name
cforporpcName :: Lens' CloudFrontOriginRequestPolicyOriginRequestPolicyConfig (Val Text)
cforporpcName = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigName (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-originrequestpolicyconfig.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig-querystringsconfig
cforporpcQueryStringsConfig :: Lens' CloudFrontOriginRequestPolicyOriginRequestPolicyConfig CloudFrontOriginRequestPolicyQueryStringsConfig
cforporpcQueryStringsConfig = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigQueryStringsConfig (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfigQueryStringsConfig = a })
