
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsfilecertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate. See
-- 'appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate' for a
-- more convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificateCertificateChain :: Val Text
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificatePrivateKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate where
  toJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate{..} =
    object $
    catMaybes
    [ (Just . ("CertificateChain",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificateCertificateChain
    , (Just . ("PrivateKey",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificatePrivateKey
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate
  :: Val Text -- ^ 'amvgvgltfcCertificateChain'
  -> Val Text -- ^ 'amvgvgltfcPrivateKey'
  -> AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate
appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate certificateChainarg privateKeyarg =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificateCertificateChain = certificateChainarg
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificatePrivateKey = privateKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsfilecertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsfilecertificate-certificatechain
amvgvgltfcCertificateChain :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate (Val Text)
amvgvgltfcCertificateChain = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificateCertificateChain (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificateCertificateChain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlsfilecertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlsfilecertificate-privatekey
amvgvgltfcPrivateKey :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate (Val Text)
amvgvgltfcPrivateKey = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificatePrivateKey (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificatePrivateKey = a })
