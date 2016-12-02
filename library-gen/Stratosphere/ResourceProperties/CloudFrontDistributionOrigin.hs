{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOrigin where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionCustomOriginConfig
import Stratosphere.ResourceProperties.CloudFrontDistributionOriginCustomHeader
import Stratosphere.ResourceProperties.CloudFrontDistributionS3OriginConfig

-- | Full data type definition for CloudFrontDistributionOrigin. See
-- | 'cloudFrontDistributionOrigin' for a more convenient constructor.
data CloudFrontDistributionOrigin =
  CloudFrontDistributionOrigin
  { _cloudFrontDistributionOriginCustomOriginConfig :: Maybe CloudFrontDistributionCustomOriginConfig
  , _cloudFrontDistributionOriginDomainName :: Val Text
  , _cloudFrontDistributionOriginId :: Val Text
  , _cloudFrontDistributionOriginOriginCustomHeaders :: Maybe [CloudFrontDistributionOriginCustomHeader]
  , _cloudFrontDistributionOriginOriginPath :: Maybe (Val Text)
  , _cloudFrontDistributionOriginS3OriginConfig :: Maybe CloudFrontDistributionS3OriginConfig
  } deriving (Show, Generic)

instance ToJSON CloudFrontDistributionOrigin where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

instance FromJSON CloudFrontDistributionOrigin where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 29, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionOrigin' containing required fields
-- | as arguments.
cloudFrontDistributionOrigin
  :: Val Text -- ^ 'cfdoDomainName'
  -> Val Text -- ^ 'cfdoId'
  -> CloudFrontDistributionOrigin
cloudFrontDistributionOrigin domainNamearg idarg =
  CloudFrontDistributionOrigin
  { _cloudFrontDistributionOriginCustomOriginConfig = Nothing
  , _cloudFrontDistributionOriginDomainName = domainNamearg
  , _cloudFrontDistributionOriginId = idarg
  , _cloudFrontDistributionOriginOriginCustomHeaders = Nothing
  , _cloudFrontDistributionOriginOriginPath = Nothing
  , _cloudFrontDistributionOriginS3OriginConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-customorigin
cfdoCustomOriginConfig :: Lens' CloudFrontDistributionOrigin (Maybe CloudFrontDistributionCustomOriginConfig)
cfdoCustomOriginConfig = lens _cloudFrontDistributionOriginCustomOriginConfig (\s a -> s { _cloudFrontDistributionOriginCustomOriginConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-domainname
cfdoDomainName :: Lens' CloudFrontDistributionOrigin (Val Text)
cfdoDomainName = lens _cloudFrontDistributionOriginDomainName (\s a -> s { _cloudFrontDistributionOriginDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-id
cfdoId :: Lens' CloudFrontDistributionOrigin (Val Text)
cfdoId = lens _cloudFrontDistributionOriginId (\s a -> s { _cloudFrontDistributionOriginId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-origincustomheaders
cfdoOriginCustomHeaders :: Lens' CloudFrontDistributionOrigin (Maybe [CloudFrontDistributionOriginCustomHeader])
cfdoOriginCustomHeaders = lens _cloudFrontDistributionOriginOriginCustomHeaders (\s a -> s { _cloudFrontDistributionOriginOriginCustomHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-originpath
cfdoOriginPath :: Lens' CloudFrontDistributionOrigin (Maybe (Val Text))
cfdoOriginPath = lens _cloudFrontDistributionOriginOriginPath (\s a -> s { _cloudFrontDistributionOriginOriginPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-origin.html#cfn-cloudfront-origin-s3origin
cfdoS3OriginConfig :: Lens' CloudFrontDistributionOrigin (Maybe CloudFrontDistributionS3OriginConfig)
cfdoS3OriginConfig = lens _cloudFrontDistributionOriginS3OriginConfig (\s a -> s { _cloudFrontDistributionOriginS3OriginConfig = a })
