{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html

module Stratosphere.Resources.CloudFrontCloudFrontOriginAccessIdentity where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig

-- | Full data type definition for CloudFrontCloudFrontOriginAccessIdentity.
-- See 'cloudFrontCloudFrontOriginAccessIdentity' for a more convenient
-- constructor.
data CloudFrontCloudFrontOriginAccessIdentity =
  CloudFrontCloudFrontOriginAccessIdentity
  { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig :: CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
  } deriving (Show, Eq)

instance ToResourceProperties CloudFrontCloudFrontOriginAccessIdentity where
  toResourceProperties CloudFrontCloudFrontOriginAccessIdentity{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudFront::CloudFrontOriginAccessIdentity"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CloudFrontOriginAccessIdentityConfig",) . toJSON) _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
        ]
    }

-- | Constructor for 'CloudFrontCloudFrontOriginAccessIdentity' containing
-- required fields as arguments.
cloudFrontCloudFrontOriginAccessIdentity
  :: CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig -- ^ 'cfcfoaiCloudFrontOriginAccessIdentityConfig'
  -> CloudFrontCloudFrontOriginAccessIdentity
cloudFrontCloudFrontOriginAccessIdentity cloudFrontOriginAccessIdentityConfigarg =
  CloudFrontCloudFrontOriginAccessIdentity
  { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig = cloudFrontOriginAccessIdentityConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudfront-cloudfrontoriginaccessidentity.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig
cfcfoaiCloudFrontOriginAccessIdentityConfig :: Lens' CloudFrontCloudFrontOriginAccessIdentity CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
cfcfoaiCloudFrontOriginAccessIdentityConfig = lens _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig (\s a -> s { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig = a })
