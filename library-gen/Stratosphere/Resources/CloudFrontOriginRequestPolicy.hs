{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originrequestpolicy.html

module Stratosphere.Resources.CloudFrontOriginRequestPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontOriginRequestPolicyOriginRequestPolicyConfig

-- | Full data type definition for CloudFrontOriginRequestPolicy. See
-- 'cloudFrontOriginRequestPolicy' for a more convenient constructor.
data CloudFrontOriginRequestPolicy =
  CloudFrontOriginRequestPolicy
  { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfig :: CloudFrontOriginRequestPolicyOriginRequestPolicyConfig
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontOriginRequestPolicy where
  toResourceProperties CloudFrontOriginRequestPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::OriginRequestPolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("OriginRequestPolicyConfig",) . toJSON) _cloudFrontOriginRequestPolicyOriginRequestPolicyConfig
        ]
    }

-- | Constructor for 'CloudFrontOriginRequestPolicy' containing required
-- fields as arguments.
cloudFrontOriginRequestPolicy
  :: CloudFrontOriginRequestPolicyOriginRequestPolicyConfig -- ^ 'cforpOriginRequestPolicyConfig'
  -> CloudFrontOriginRequestPolicy
cloudFrontOriginRequestPolicy originRequestPolicyConfigarg =
  CloudFrontOriginRequestPolicy
  { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfig = originRequestPolicyConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-originrequestpolicy.html#cfn-cloudfront-originrequestpolicy-originrequestpolicyconfig
cforpOriginRequestPolicyConfig :: Lens' CloudFrontOriginRequestPolicy CloudFrontOriginRequestPolicyOriginRequestPolicyConfig
cforpOriginRequestPolicyConfig = lens _cloudFrontOriginRequestPolicyOriginRequestPolicyConfig (\s a -> s { _cloudFrontOriginRequestPolicyOriginRequestPolicyConfig = a })
