{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html

module Stratosphere.Resources.DMSCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for DMSCertificate. See 'dmsCertificate' for a
-- more convenient constructor.
data DMSCertificate =
  DMSCertificate
  { _dMSCertificateCertificateIdentifier :: Maybe (Val Text)
  , _dMSCertificateCertificatePem :: Maybe (Val Text)
  , _dMSCertificateCertificateWallet :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties DMSCertificate where
  toResourceProperties DMSCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::DMS::Certificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CertificateIdentifier",) . toJSON) _dMSCertificateCertificateIdentifier
        , fmap (("CertificatePem",) . toJSON) _dMSCertificateCertificatePem
        , fmap (("CertificateWallet",) . toJSON) _dMSCertificateCertificateWallet
        ]
    }

-- | Constructor for 'DMSCertificate' containing required fields as arguments.
dmsCertificate
  :: DMSCertificate
dmsCertificate  =
  DMSCertificate
  { _dMSCertificateCertificateIdentifier = Nothing
  , _dMSCertificateCertificatePem = Nothing
  , _dMSCertificateCertificateWallet = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificateidentifier
dmscCertificateIdentifier :: Lens' DMSCertificate (Maybe (Val Text))
dmscCertificateIdentifier = lens _dMSCertificateCertificateIdentifier (\s a -> s { _dMSCertificateCertificateIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatepem
dmscCertificatePem :: Lens' DMSCertificate (Maybe (Val Text))
dmscCertificatePem = lens _dMSCertificateCertificatePem (\s a -> s { _dMSCertificateCertificatePem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dms-certificate.html#cfn-dms-certificate-certificatewallet
dmscCertificateWallet :: Lens' DMSCertificate (Maybe (Val Text))
dmscCertificateWallet = lens _dMSCertificateCertificateWallet (\s a -> s { _dMSCertificateCertificateWallet = a })
