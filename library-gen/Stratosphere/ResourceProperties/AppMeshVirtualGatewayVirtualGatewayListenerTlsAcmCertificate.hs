{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsacmcertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate. See
-- 'appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificateCertificateArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate where
  toJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificateCertificateArn
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
  :: Val Text -- ^ 'amvgvgltacCertificateArn'
  -> AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate certificateArnarg =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificateCertificateArn = certificateArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsacmcertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsacmcertificate-certificatearn
amvgvgltacCertificateArn :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate (Val Text)
amvgvgltacCertificateArn = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificateCertificateArn (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificateCertificateArn = a })
