{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html

module Stratosphere.ResourceProperties.CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig.
-- See
-- 'cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig'
-- for a more convenient constructor.
data CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig =
  CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
  { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfigComment :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig where
  toJSON CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig{..} =
    object $
    catMaybes
    [ (Just . ("Comment",) . toJSON) _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfigComment
    ]

-- | Constructor for
-- 'CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig'
-- containing required fields as arguments.
cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
  :: Val Text -- ^ 'cfcfoaicfoaicComment'
  -> CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig commentarg =
  CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig
  { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfigComment = commentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig.html#cfn-cloudfront-cloudfrontoriginaccessidentity-cloudfrontoriginaccessidentityconfig-comment
cfcfoaicfoaicComment :: Lens' CloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfig (Val Text)
cfcfoaicfoaicComment = lens _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfigComment (\s a -> s { _cloudFrontCloudFrontOriginAccessIdentityCloudFrontOriginAccessIdentityConfigComment = a })
