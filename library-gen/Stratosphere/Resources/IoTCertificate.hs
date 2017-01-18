{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iot-certificate.html

module Stratosphere.Resources.IoTCertificate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IoTCertificate. See 'ioTCertificate' for a
-- | more convenient constructor.
data IoTCertificate =
  IoTCertificate
  { _ioTCertificateCertificateSigningRequest :: Val Text
  , _ioTCertificateStatus :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IoTCertificate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON IoTCertificate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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
