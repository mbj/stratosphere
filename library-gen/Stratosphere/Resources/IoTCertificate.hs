{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html

module Stratosphere.Resources.IoTCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTCertificate. See 'ioTCertificate' for a
-- more convenient constructor.
data IoTCertificate =
  IoTCertificate
  { _ioTCertificateCACertificatePem :: Maybe (Val Text)
  , _ioTCertificateCertificateMode :: Maybe (Val Text)
  , _ioTCertificateCertificatePem :: Maybe (Val Text)
  , _ioTCertificateCertificateSigningRequest :: Maybe (Val Text)
  , _ioTCertificateStatus :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties IoTCertificate where
  toResourceProperties IoTCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::Certificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CACertificatePem",) . toJSON) _ioTCertificateCACertificatePem
        , fmap (("CertificateMode",) . toJSON) _ioTCertificateCertificateMode
        , fmap (("CertificatePem",) . toJSON) _ioTCertificateCertificatePem
        , fmap (("CertificateSigningRequest",) . toJSON) _ioTCertificateCertificateSigningRequest
        , (Just . ("Status",) . toJSON) _ioTCertificateStatus
        ]
    }

-- | Constructor for 'IoTCertificate' containing required fields as arguments.
ioTCertificate
  :: Val Text -- ^ 'itcStatus'
  -> IoTCertificate
ioTCertificate statusarg =
  IoTCertificate
  { _ioTCertificateCACertificatePem = Nothing
  , _ioTCertificateCertificateMode = Nothing
  , _ioTCertificateCertificatePem = Nothing
  , _ioTCertificateCertificateSigningRequest = Nothing
  , _ioTCertificateStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-cacertificatepem
itcCACertificatePem :: Lens' IoTCertificate (Maybe (Val Text))
itcCACertificatePem = lens _ioTCertificateCACertificatePem (\s a -> s { _ioTCertificateCACertificatePem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatemode
itcCertificateMode :: Lens' IoTCertificate (Maybe (Val Text))
itcCertificateMode = lens _ioTCertificateCertificateMode (\s a -> s { _ioTCertificateCertificateMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatepem
itcCertificatePem :: Lens' IoTCertificate (Maybe (Val Text))
itcCertificatePem = lens _ioTCertificateCertificatePem (\s a -> s { _ioTCertificateCertificatePem = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatesigningrequest
itcCertificateSigningRequest :: Lens' IoTCertificate (Maybe (Val Text))
itcCertificateSigningRequest = lens _ioTCertificateCertificateSigningRequest (\s a -> s { _ioTCertificateCertificateSigningRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-status
itcStatus :: Lens' IoTCertificate (Val Text)
itcStatus = lens _ioTCertificateStatus (\s a -> s { _ioTCertificateStatus = a })
