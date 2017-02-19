{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html

module Stratosphere.Resources.IoTCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IoTCertificate. See 'ioTCertificate' for a
-- | more convenient constructor.
data IoTCertificate =
  IoTCertificate
  { _ioTCertificateCertificateSigningRequest :: Val Text
  , _ioTCertificateStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTCertificate where
  toJSON IoTCertificate{..} =
    object $
    catMaybes
    [ Just ("CertificateSigningRequest" .= _ioTCertificateCertificateSigningRequest)
    , Just ("Status" .= _ioTCertificateStatus)
    ]

instance FromJSON IoTCertificate where
  parseJSON (Object obj) =
    IoTCertificate <$>
      obj .: "CertificateSigningRequest" <*>
      obj .: "Status"
  parseJSON _ = mempty

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
