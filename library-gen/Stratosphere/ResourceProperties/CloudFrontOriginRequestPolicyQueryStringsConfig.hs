
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html

module Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyQueryStringsConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CloudFrontOriginRequestPolicyQueryStringsConfig. See
-- 'cloudFrontOriginRequestPolicyQueryStringsConfig' for a more convenient
-- constructor.
data CloudFrontOriginRequestPolicyQueryStringsConfig =
  CloudFrontOriginRequestPolicyQueryStringsConfig
  { _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStringBehavior :: Val Text
  , _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStrings :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontOriginRequestPolicyQueryStringsConfig where
  toJSON CloudFrontOriginRequestPolicyQueryStringsConfig{..} =
    object $
    catMaybes
    [ (Just . ("QueryStringBehavior",) . toJSON) _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStringBehavior
    , fmap (("QueryStrings",) . toJSON) _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStrings
    ]

-- | Constructor for 'CloudFrontOriginRequestPolicyQueryStringsConfig'
-- containing required fields as arguments.
cloudFrontOriginRequestPolicyQueryStringsConfig
  :: Val Text -- ^ 'cforpqscQueryStringBehavior'
  -> CloudFrontOriginRequestPolicyQueryStringsConfig
cloudFrontOriginRequestPolicyQueryStringsConfig queryStringBehaviorarg =
  CloudFrontOriginRequestPolicyQueryStringsConfig
  { _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStringBehavior = queryStringBehaviorarg
  , _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStrings = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html#cfn-cloudfront-originrequestpolicy-querystringsconfig-querystringbehavior
cforpqscQueryStringBehavior :: Lens' CloudFrontOriginRequestPolicyQueryStringsConfig (Val Text)
cforpqscQueryStringBehavior = lens _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStringBehavior (\s a -> s { _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStringBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-originrequestpolicy-querystringsconfig.html#cfn-cloudfront-originrequestpolicy-querystringsconfig-querystrings
cforpqscQueryStrings :: Lens' CloudFrontOriginRequestPolicyQueryStringsConfig (Maybe (ValList Text))
cforpqscQueryStrings = lens _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStrings (\s a -> s { _cloudFrontOriginRequestPolicyQueryStringsConfigQueryStrings = a })
