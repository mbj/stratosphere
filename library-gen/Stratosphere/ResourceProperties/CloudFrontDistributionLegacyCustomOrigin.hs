{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLegacyCustomOrigin where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionLegacyCustomOrigin.
-- See 'cloudFrontDistributionLegacyCustomOrigin' for a more convenient
-- constructor.
data CloudFrontDistributionLegacyCustomOrigin =
  CloudFrontDistributionLegacyCustomOrigin
  { _cloudFrontDistributionLegacyCustomOriginDNSName :: Val Text
  , _cloudFrontDistributionLegacyCustomOriginHTTPPort :: Maybe (Val Integer)
  , _cloudFrontDistributionLegacyCustomOriginHTTPSPort :: Maybe (Val Integer)
  , _cloudFrontDistributionLegacyCustomOriginOriginProtocolPolicy :: Val Text
  , _cloudFrontDistributionLegacyCustomOriginOriginSSLProtocols :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionLegacyCustomOrigin where
  toJSON CloudFrontDistributionLegacyCustomOrigin{..} =
    object $
    catMaybes
    [ (Just . ("DNSName",) . toJSON) _cloudFrontDistributionLegacyCustomOriginDNSName
    , fmap (("HTTPPort",) . toJSON . fmap Integer') _cloudFrontDistributionLegacyCustomOriginHTTPPort
    , fmap (("HTTPSPort",) . toJSON . fmap Integer') _cloudFrontDistributionLegacyCustomOriginHTTPSPort
    , (Just . ("OriginProtocolPolicy",) . toJSON) _cloudFrontDistributionLegacyCustomOriginOriginProtocolPolicy
    , fmap (("OriginSSLProtocols",) . toJSON) _cloudFrontDistributionLegacyCustomOriginOriginSSLProtocols
    ]

instance FromJSON CloudFrontDistributionLegacyCustomOrigin where
  parseJSON (Object obj) =
    CloudFrontDistributionLegacyCustomOrigin <$>
      (obj .: "DNSName") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "HTTPPort") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "HTTPSPort") <*>
      (obj .: "OriginProtocolPolicy") <*>
      (obj .:? "OriginSSLProtocols")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionLegacyCustomOrigin' containing
-- required fields as arguments.
cloudFrontDistributionLegacyCustomOrigin
  :: Val Text -- ^ 'cfdlcoDNSName'
  -> Val Text -- ^ 'cfdlcoOriginProtocolPolicy'
  -> CloudFrontDistributionLegacyCustomOrigin
cloudFrontDistributionLegacyCustomOrigin dNSNamearg originProtocolPolicyarg =
  CloudFrontDistributionLegacyCustomOrigin
  { _cloudFrontDistributionLegacyCustomOriginDNSName = dNSNamearg
  , _cloudFrontDistributionLegacyCustomOriginHTTPPort = Nothing
  , _cloudFrontDistributionLegacyCustomOriginHTTPSPort = Nothing
  , _cloudFrontDistributionLegacyCustomOriginOriginProtocolPolicy = originProtocolPolicyarg
  , _cloudFrontDistributionLegacyCustomOriginOriginSSLProtocols = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html#cfn-cloudfront-distribution-legacycustomorigin-dnsname
cfdlcoDNSName :: Lens' CloudFrontDistributionLegacyCustomOrigin (Val Text)
cfdlcoDNSName = lens _cloudFrontDistributionLegacyCustomOriginDNSName (\s a -> s { _cloudFrontDistributionLegacyCustomOriginDNSName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html#cfn-cloudfront-distribution-legacycustomorigin-httpport
cfdlcoHTTPPort :: Lens' CloudFrontDistributionLegacyCustomOrigin (Maybe (Val Integer))
cfdlcoHTTPPort = lens _cloudFrontDistributionLegacyCustomOriginHTTPPort (\s a -> s { _cloudFrontDistributionLegacyCustomOriginHTTPPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html#cfn-cloudfront-distribution-legacycustomorigin-httpsport
cfdlcoHTTPSPort :: Lens' CloudFrontDistributionLegacyCustomOrigin (Maybe (Val Integer))
cfdlcoHTTPSPort = lens _cloudFrontDistributionLegacyCustomOriginHTTPSPort (\s a -> s { _cloudFrontDistributionLegacyCustomOriginHTTPSPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html#cfn-cloudfront-distribution-legacycustomorigin-originprotocolpolicy
cfdlcoOriginProtocolPolicy :: Lens' CloudFrontDistributionLegacyCustomOrigin (Val Text)
cfdlcoOriginProtocolPolicy = lens _cloudFrontDistributionLegacyCustomOriginOriginProtocolPolicy (\s a -> s { _cloudFrontDistributionLegacyCustomOriginOriginProtocolPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-legacycustomorigin.html#cfn-cloudfront-distribution-legacycustomorigin-originsslprotocols
cfdlcoOriginSSLProtocols :: Lens' CloudFrontDistributionLegacyCustomOrigin (Maybe (ValList Text))
cfdlcoOriginSSLProtocols = lens _cloudFrontDistributionLegacyCustomOriginOriginSSLProtocols (\s a -> s { _cloudFrontDistributionLegacyCustomOriginOriginSSLProtocols = a })
