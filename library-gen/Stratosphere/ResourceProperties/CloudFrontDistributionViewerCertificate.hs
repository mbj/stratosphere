
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html

module Stratosphere.ResourceProperties.CloudFrontDistributionViewerCertificate where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionViewerCertificate.
-- See 'cloudFrontDistributionViewerCertificate' for a more convenient
-- constructor.
data CloudFrontDistributionViewerCertificate =
  CloudFrontDistributionViewerCertificate
  { _cloudFrontDistributionViewerCertificateAcmCertificateArn :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate :: Maybe (Val Bool)
  , _cloudFrontDistributionViewerCertificateIamCertificateId :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateMinimumProtocolVersion :: Maybe (Val Text)
  , _cloudFrontDistributionViewerCertificateSslSupportMethod :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionViewerCertificate where
  toJSON CloudFrontDistributionViewerCertificate{..} =
    object $
    catMaybes
    [ fmap (("AcmCertificateArn",) . toJSON) _cloudFrontDistributionViewerCertificateAcmCertificateArn
    , fmap (("CloudFrontDefaultCertificate",) . toJSON) _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate
    , fmap (("IamCertificateId",) . toJSON) _cloudFrontDistributionViewerCertificateIamCertificateId
    , fmap (("MinimumProtocolVersion",) . toJSON) _cloudFrontDistributionViewerCertificateMinimumProtocolVersion
    , fmap (("SslSupportMethod",) . toJSON) _cloudFrontDistributionViewerCertificateSslSupportMethod
    ]

-- | Constructor for 'CloudFrontDistributionViewerCertificate' containing
-- required fields as arguments.
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-acmcertificatearn
cfdvcAcmCertificateArn :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcAcmCertificateArn = lens _cloudFrontDistributionViewerCertificateAcmCertificateArn (\s a -> s { _cloudFrontDistributionViewerCertificateAcmCertificateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-cloudfrontdefaultcertificate
cfdvcCloudFrontDefaultCertificate :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Bool))
cfdvcCloudFrontDefaultCertificate = lens _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate (\s a -> s { _cloudFrontDistributionViewerCertificateCloudFrontDefaultCertificate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-iamcertificateid
cfdvcIamCertificateId :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcIamCertificateId = lens _cloudFrontDistributionViewerCertificateIamCertificateId (\s a -> s { _cloudFrontDistributionViewerCertificateIamCertificateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-minimumprotocolversion
cfdvcMinimumProtocolVersion :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcMinimumProtocolVersion = lens _cloudFrontDistributionViewerCertificateMinimumProtocolVersion (\s a -> s { _cloudFrontDistributionViewerCertificateMinimumProtocolVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-viewercertificate.html#cfn-cloudfront-distribution-viewercertificate-sslsupportmethod
cfdvcSslSupportMethod :: Lens' CloudFrontDistributionViewerCertificate (Maybe (Val Text))
cfdvcSslSupportMethod = lens _cloudFrontDistributionViewerCertificateSslSupportMethod (\s a -> s { _cloudFrontDistributionViewerCertificateSslSupportMethod = a })
