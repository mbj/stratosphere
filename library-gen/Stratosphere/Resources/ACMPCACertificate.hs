{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html

module Stratosphere.Resources.ACMPCACertificate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ACMPCACertificateValidity

-- | Full data type definition for ACMPCACertificate. See 'acmpcaCertificate'
-- for a more convenient constructor.
data ACMPCACertificate =
  ACMPCACertificate
  { _aCMPCACertificateCertificateAuthorityArn :: Val Text
  , _aCMPCACertificateCertificateSigningRequest :: Val Text
  , _aCMPCACertificateSigningAlgorithm :: Val Text
  , _aCMPCACertificateTemplateArn :: Maybe (Val Text)
  , _aCMPCACertificateValidity :: ACMPCACertificateValidity
  } deriving (Show, Eq)

instance ToResourceProperties ACMPCACertificate where
  toResourceProperties ACMPCACertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ACMPCA::Certificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("CertificateAuthorityArn",) . toJSON) _aCMPCACertificateCertificateAuthorityArn
        , (Just . ("CertificateSigningRequest",) . toJSON) _aCMPCACertificateCertificateSigningRequest
        , (Just . ("SigningAlgorithm",) . toJSON) _aCMPCACertificateSigningAlgorithm
        , fmap (("TemplateArn",) . toJSON) _aCMPCACertificateTemplateArn
        , (Just . ("Validity",) . toJSON) _aCMPCACertificateValidity
        ]
    }

-- | Constructor for 'ACMPCACertificate' containing required fields as
-- arguments.
acmpcaCertificate
  :: Val Text -- ^ 'acmpcacCertificateAuthorityArn'
  -> Val Text -- ^ 'acmpcacCertificateSigningRequest'
  -> Val Text -- ^ 'acmpcacSigningAlgorithm'
  -> ACMPCACertificateValidity -- ^ 'acmpcacValidity'
  -> ACMPCACertificate
acmpcaCertificate certificateAuthorityArnarg certificateSigningRequestarg signingAlgorithmarg validityarg =
  ACMPCACertificate
  { _aCMPCACertificateCertificateAuthorityArn = certificateAuthorityArnarg
  , _aCMPCACertificateCertificateSigningRequest = certificateSigningRequestarg
  , _aCMPCACertificateSigningAlgorithm = signingAlgorithmarg
  , _aCMPCACertificateTemplateArn = Nothing
  , _aCMPCACertificateValidity = validityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html#cfn-acmpca-certificate-certificateauthorityarn
acmpcacCertificateAuthorityArn :: Lens' ACMPCACertificate (Val Text)
acmpcacCertificateAuthorityArn = lens _aCMPCACertificateCertificateAuthorityArn (\s a -> s { _aCMPCACertificateCertificateAuthorityArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html#cfn-acmpca-certificate-certificatesigningrequest
acmpcacCertificateSigningRequest :: Lens' ACMPCACertificate (Val Text)
acmpcacCertificateSigningRequest = lens _aCMPCACertificateCertificateSigningRequest (\s a -> s { _aCMPCACertificateCertificateSigningRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html#cfn-acmpca-certificate-signingalgorithm
acmpcacSigningAlgorithm :: Lens' ACMPCACertificate (Val Text)
acmpcacSigningAlgorithm = lens _aCMPCACertificateSigningAlgorithm (\s a -> s { _aCMPCACertificateSigningAlgorithm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html#cfn-acmpca-certificate-templatearn
acmpcacTemplateArn :: Lens' ACMPCACertificate (Maybe (Val Text))
acmpcacTemplateArn = lens _aCMPCACertificateTemplateArn (\s a -> s { _aCMPCACertificateTemplateArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-acmpca-certificate.html#cfn-acmpca-certificate-validity
acmpcacValidity :: Lens' ACMPCACertificate ACMPCACertificateValidity
acmpcacValidity = lens _aCMPCACertificateValidity (\s a -> s { _aCMPCACertificateValidity = a })
