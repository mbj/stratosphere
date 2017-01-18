{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin-origincustomheader.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginCustomHeader where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionOriginCustomHeader.
-- | See 'cloudFrontDistributionOriginCustomHeader' for a more convenient
-- | constructor.
data CloudFrontDistributionOriginCustomHeader =
  CloudFrontDistributionOriginCustomHeader
  { _cloudFrontDistributionOriginCustomHeaderHeaderName :: Val Text
  , _cloudFrontDistributionOriginCustomHeaderHeaderValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionOriginCustomHeader where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON CloudFrontDistributionOriginCustomHeader where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionOriginCustomHeader' containing
-- | required fields as arguments.
cloudFrontDistributionOriginCustomHeader
  :: Val Text -- ^ 'cfdochHeaderName'
  -> Val Text -- ^ 'cfdochHeaderValue'
  -> CloudFrontDistributionOriginCustomHeader
cloudFrontDistributionOriginCustomHeader headerNamearg headerValuearg =
  CloudFrontDistributionOriginCustomHeader
  { _cloudFrontDistributionOriginCustomHeaderHeaderName = headerNamearg
  , _cloudFrontDistributionOriginCustomHeaderHeaderValue = headerValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin-origincustomheader.html#cfn-cloudfront-origin-origincustomheader-headername
cfdochHeaderName :: Lens' CloudFrontDistributionOriginCustomHeader (Val Text)
cfdochHeaderName = lens _cloudFrontDistributionOriginCustomHeaderHeaderName (\s a -> s { _cloudFrontDistributionOriginCustomHeaderHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin-origincustomheader.html#cfn-cloudfront-origin-origincustomheader-headervalue
cfdochHeaderValue :: Lens' CloudFrontDistributionOriginCustomHeader (Val Text)
cfdochHeaderValue = lens _cloudFrontDistributionOriginCustomHeaderHeaderValue (\s a -> s { _cloudFrontDistributionOriginCustomHeaderHeaderValue = a })
