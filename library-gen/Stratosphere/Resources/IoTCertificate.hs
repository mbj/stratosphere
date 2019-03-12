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
  { _ioTCertificateCertificateSigningRequest :: Val Text
  , _ioTCertificateStatus :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties IoTCertificate where
  toResourceProperties IoTCertificate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IoT::Certificate"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("CertificateSigningRequest",) . toJSON) _ioTCertificateCertificateSigningRequest
        , (Just . ("Status",) . toJSON) _ioTCertificateStatus
        ]
    }

-- | Constructor for 'IoTCertificate' containing required fields as arguments.
ioTCertificate
  :: Val Text -- ^ 'itcCertificateSigningRequest'
  -> Val Text -- ^ 'itcStatus'
  -> IoTCertificate
ioTCertificate certificateSigningRequestarg statusarg =
  IoTCertificate
  { _ioTCertificateCertificateSigningRequest = certificateSigningRequestarg
  , _ioTCertificateStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-certificatesigningrequest
itcCertificateSigningRequest :: Lens' IoTCertificate (Val Text)
itcCertificateSigningRequest = lens _ioTCertificateCertificateSigningRequest (\s a -> s { _ioTCertificateCertificateSigningRequest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html#cfn-iot-certificate-status
itcStatus :: Lens' IoTCertificate (Val Text)
itcStatus = lens _ioTCertificateStatus (\s a -> s { _ioTCertificateStatus = a })
