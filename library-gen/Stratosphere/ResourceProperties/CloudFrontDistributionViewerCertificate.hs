{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html

module Stratosphere.ResourceProperties.CloudFrontDistributionViewerCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionViewerCertificate.
-- | See 'cloudFrontDistributionViewerCertificate' for a more convenient
-- | constructor.
data CloudFrontDistributionViewerCertificate =
  CloudFrontDistributionViewerCertificate
  { _cloudFrontDistributionViewerCertificateAcmCertificateArn :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate :: Maybe (Val Bool')
  , _cloudFrontDistributionViewerCertificateIamCertificateId :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateMinimumProtocolVersion :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateSslSupportMethod :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionViewerCertificate where
  toJSON CloudFrontDistributionViewerCertificate{..} =
    object $
    catMaybes
    [ ("AcmCertificateArn" .=) <$> _cloudFrontDistributionViewerCertificateAcmCertificateArn
    , ("CloudFrontDefaultCertificate" .=) <$> _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate
    , ("IamCertificateId" .=) <$> _cloudFrontDistributionViewerCertificateIamCertificateId
    , ("MinimumProtocolVersion" .=) <$> _cloudFrontDistributionViewerCertificateMinimumProtocolVersion
    , ("SslSupportMethod" .=) <$> _cloudFrontDistributionViewerCertificateSslSupportMethod
    ]

instance FromJSON CloudFrontDistributionViewerCertificate where
  parseJSON (Object obj) =
    CloudFrontDistributionViewerCertificate <$>
      obj .:? "AcmCertificateArn" <*>
      obj .:? "CloudFrontDefaultCertificate" <*>
      obj .:? "IamCertificateId" <*>
      obj .:? "MinimumProtocolVersion" <*>
      obj .:? "SslSupportMethod"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionViewerCertificate' containing
-- | required fields as arguments.
cloudFrontDistributionViewerCertificate
  :: CloudFrontDistributionViewerCertificate
cloudFrontDistributionViewerCertificate  =
  CloudFrontDistributionViewerCertificate
  { _cloudFrontDistributionViewerCertificateAcmCertificateArn = Nothing
  , _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate = Nothing
  , _cloudFrontDistributionViewerCertificateIamCertificateId = Nothing
  , _cloudFrontDistributionViewerCertificateMinimumProtocolVersion = Nothing
  , _cloudFrontDistributionViewerCertificateSslSupportMethod = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html#cfn-cloudfront-distributionconfig-viewercertificate-acmcertificatearn
cfdvcAcmCertificateArn :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcAcmCertificateArn = lens _cloudFrontDistributionViewerCertificateAcmCertificateArn (\s a -> s { _cloudFrontDistributionViewerCertificateAcmCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html#cfn-cloudfront-distributionconfig-viewercertificate-cloudfrontdefaultcertificate
cfdvcCloudFrontDefaultCertificate :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Bool'))
cfdvcCloudFrontDefaultCertificate = lens _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate (\s a -> s { _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html#cfn-cloudfront-distributionconfig-viewercertificate-iamcertificateid
cfdvcIamCertificateId :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcIamCertificateId = lens _cloudFrontDistributionViewerCertificateIamCertificateId (\s a -> s { _cloudFrontDistributionViewerCertificateIamCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html#cfn-cloudfront-distributionconfig-viewercertificate-sslsupportmethod
cfdvcMinimumProtocolVersion :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcMinimumProtocolVersion = lens _cloudFrontDistributionViewerCertificateMinimumProtocolVersion (\s a -> s { _cloudFrontDistributionViewerCertificateMinimumProtocolVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-viewercertificate.html#cfn-cloudfront-distributionconfig-viewercertificate-minimumprotocolversion
cfdvcSslSupportMethod :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcSslSupportMethod = lens _cloudFrontDistributionViewerCertificateSslSupportMethod (\s a -> s { _cloudFrontDistributionViewerCertificateSslSupportMethod = a })
