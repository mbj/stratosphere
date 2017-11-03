{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacys3origin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLegacyS3Origin where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionLegacyS3Origin. See
-- 'cloudFrontDistributionLegacyS3Origin' for a more convenient constructor.
data CloudFrontDistributionLegacyS3Origin =
  CloudFrontDistributionLegacyS3Origin
  { _cloudFrontDistributionLegacyS3OriginDNSName :: Val Text
  , _cloudFrontDistributionLegacyS3OriginOriginAccessIdentity :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionLegacyS3Origin where
  toJSON CloudFrontDistributionLegacyS3Origin{..} =
    object $
    catMaybes
    [ (Just . ("DNSName",) . toJSON) _cloudFrontDistributionLegacyS3OriginDNSName
    , fmap (("OriginAccessIdentity",) . toJSON) _cloudFrontDistributionLegacyS3OriginOriginAccessIdentity
    ]

instance FromJSON CloudFrontDistributionLegacyS3Origin where
  parseJSON (Object obj) =
    CloudFrontDistributionLegacyS3Origin <$>
      (obj .: "DNSName") <*>
      (obj .:? "OriginAccessIdentity")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionLegacyS3Origin' containing
-- required fields as arguments.
cloudFrontDistributionLegacyS3Origin
  :: Val Text -- ^ 'cfdlsoDNSName'
  -> CloudFrontDistributionLegacyS3Origin
cloudFrontDistributionLegacyS3Origin dNSNamearg =
  CloudFrontDistributionLegacyS3Origin
  { _cloudFrontDistributionLegacyS3OriginDNSName = dNSNamearg
  , _cloudFrontDistributionLegacyS3OriginOriginAccessIdentity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacys3origin.html#cfn-cloudfront-distribution-legacys3origin-dnsname
cfdlsoDNSName :: Lens' CloudFrontDistributionLegacyS3Origin (Val Text)
cfdlsoDNSName = lens _cloudFrontDistributionLegacyS3OriginDNSName (\s a -> s { _cloudFrontDistributionLegacyS3OriginDNSName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacys3origin.html#cfn-cloudfront-distribution-legacys3origin-originaccessidentity
cfdlsoOriginAccessIdentity :: Lens' CloudFrontDistributionLegacyS3Origin (Maybe (Val Text))
cfdlsoOriginAccessIdentity = lens _cloudFrontDistributionLegacyS3OriginOriginAccessIdentity (\s a -> s { _cloudFrontDistributionLegacyS3OriginOriginAccessIdentity = a })
