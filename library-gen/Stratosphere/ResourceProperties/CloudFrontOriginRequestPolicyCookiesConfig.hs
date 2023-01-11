
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-cookiesconfig.html

module Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyCookiesConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontOriginRequestPolicyCookiesConfig.
-- See 'cloudFrontOriginRequestPolicyCookiesConfig' for a more convenient
-- constructor.
data CloudFrontOriginRequestPolicyCookiesConfig =
  CloudFrontOriginRequestPolicyCookiesConfig
  { _cloudFrontOriginRequestPolicyCookiesConfigCookieBehavior :: Val Text
  , _cloudFrontOriginRequestPolicyCookiesConfigCookies :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontOriginRequestPolicyCookiesConfig where
  toJSON CloudFrontOriginRequestPolicyCookiesConfig{..} =
    object $
    catMaybes
    [ (Just . ("CookieBehavior",) . toJSON) _cloudFrontOriginRequestPolicyCookiesConfigCookieBehavior
    , fmap (("Cookies",) . toJSON) _cloudFrontOriginRequestPolicyCookiesConfigCookies
    ]

-- | Constructor for 'CloudFrontOriginRequestPolicyCookiesConfig' containing
-- required fields as arguments.
cloudFrontOriginRequestPolicyCookiesConfig
  :: Val Text -- ^ 'cforpccCookieBehavior'
  -> CloudFrontOriginRequestPolicyCookiesConfig
cloudFrontOriginRequestPolicyCookiesConfig cookieBehaviorarg =
  CloudFrontOriginRequestPolicyCookiesConfig
  { _cloudFrontOriginRequestPolicyCookiesConfigCookieBehavior = cookieBehaviorarg
  , _cloudFrontOriginRequestPolicyCookiesConfigCookies = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-cookiesconfig.html#cfn-cloudfront-originrequestpolicy-cookiesconfig-cookiebehavior
cforpccCookieBehavior :: Lens' CloudFrontOriginRequestPolicyCookiesConfig (Val Text)
cforpccCookieBehavior = lens _cloudFrontOriginRequestPolicyCookiesConfigCookieBehavior (\s a -> s { _cloudFrontOriginRequestPolicyCookiesConfigCookieBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-cookiesconfig.html#cfn-cloudfront-originrequestpolicy-cookiesconfig-cookies
cforpccCookies :: Lens' CloudFrontOriginRequestPolicyCookiesConfig (Maybe (ValList Text))
cforpccCookies = lens _cloudFrontOriginRequestPolicyCookiesConfigCookies (\s a -> s { _cloudFrontOriginRequestPolicyCookiesConfigCookies = a })
