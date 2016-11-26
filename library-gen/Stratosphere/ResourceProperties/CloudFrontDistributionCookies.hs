{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues-cookies.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCookies where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionCookies. See
-- | 'cloudFrontDistributionCookies' for a more convenient constructor.
data CloudFrontDistributionCookies =
  CloudFrontDistributionCookies
  { _cloudFrontDistributionCookiesForward :: Val Text
  , _cloudFrontDistributionCookiesWhitelistedNames :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON CloudFrontDistributionCookies where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON CloudFrontDistributionCookies where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionCookies' containing required
-- | fields as arguments.
cloudFrontDistributionCookies
  :: Val Text -- ^ 'cfdcForward'
  -> CloudFrontDistributionCookies
cloudFrontDistributionCookies forwardarg =
  CloudFrontDistributionCookies
  { _cloudFrontDistributionCookiesForward = forwardarg
  , _cloudFrontDistributionCookiesWhitelistedNames = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues-cookies.html#cfn-cloudfront-forwardedvalues-cookies-forward
cfdcForward :: Lens' CloudFrontDistributionCookies (Val Text)
cfdcForward = lens _cloudFrontDistributionCookiesForward (\s a -> s { _cloudFrontDistributionCookiesForward = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues-cookies.html#cfn-cloudfront-forwardedvalues-cookies-whitelistednames
cfdcWhitelistedNames :: Lens' CloudFrontDistributionCookies (Maybe [Val Text])
cfdcWhitelistedNames = lens _cloudFrontDistributionCookiesWhitelistedNames (\s a -> s { _cloudFrontDistributionCookiesWhitelistedNames = a })
