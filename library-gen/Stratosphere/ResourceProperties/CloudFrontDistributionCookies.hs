{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues-cookies.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCookies where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionCookies. See
-- 'cloudFrontDistributionCookies' for a more convenient constructor.
data CloudFrontDistributionCookies =
  CloudFrontDistributionCookies
  { _cloudFrontDistributionCookiesForward :: Val Text
  , _cloudFrontDistributionCookiesWhitelistedNames :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionCookies where
  toJSON CloudFrontDistributionCookies{..} =
    object $
    catMaybes
    [ Just ("Forward" .= _cloudFrontDistributionCookiesForward)
    , ("WhitelistedNames" .=) <$> _cloudFrontDistributionCookiesWhitelistedNames
    ]

instance FromJSON CloudFrontDistributionCookies where
  parseJSON (Object obj) =
    CloudFrontDistributionCookies <$>
      obj .: "Forward" <*>
      obj .:? "WhitelistedNames"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionCookies' containing required
-- fields as arguments.
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
cfdcWhitelistedNames :: Lens' CloudFrontDistributionCookies (Maybe (ValList Text))
cfdcWhitelistedNames = lens _cloudFrontDistributionCookiesWhitelistedNames (\s a -> s { _cloudFrontDistributionCookiesWhitelistedNames = a })
