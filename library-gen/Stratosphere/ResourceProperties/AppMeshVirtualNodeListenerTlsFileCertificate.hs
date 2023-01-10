
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsFileCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualNodeListenerTlsFileCertificate. See
-- 'appMeshVirtualNodeListenerTlsFileCertificate' for a more convenient
-- constructor.
data AppMeshVirtualNodeListenerTlsFileCertificate =
  AppMeshVirtualNodeListenerTlsFileCertificate
  { _appMeshVirtualNodeListenerTlsFileCertificateCertificateChain :: Val Text
  , _appMeshVirtualNodeListenerTlsFileCertificatePrivateKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListenerTlsFileCertificate where
  toJSON AppMeshVirtualNodeListenerTlsFileCertificate{..} =
    object $
    catMaybes
    [ (Just . ("CertificateChain",) . toJSON) _appMeshVirtualNodeListenerTlsFileCertificateCertificateChain
    , (Just . ("PrivateKey",) . toJSON) _appMeshVirtualNodeListenerTlsFileCertificatePrivateKey
    ]

-- | Constructor for 'AppMeshVirtualNodeListenerTlsFileCertificate' containing
-- required fields as arguments.
appMeshVirtualNodeListenerTlsFileCertificate
  :: Val Text -- ^ 'amvnltfcCertificateChain'
  -> Val Text -- ^ 'amvnltfcPrivateKey'
  -> AppMeshVirtualNodeListenerTlsFileCertificate
appMeshVirtualNodeListenerTlsFileCertificate certificateChainarg privateKeyarg =
  AppMeshVirtualNodeListenerTlsFileCertificate
  { _appMeshVirtualNodeListenerTlsFileCertificateCertificateChain = certificateChainarg
  , _appMeshVirtualNodeListenerTlsFileCertificatePrivateKey = privateKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html#cfn-appmesh-virtualnode-listenertlsfilecertificate-certificatechain
amvnltfcCertificateChain :: Lens' AppMeshVirtualNodeListenerTlsFileCertificate (Val Text)
amvnltfcCertificateChain = lens _appMeshVirtualNodeListenerTlsFileCertificateCertificateChain (\s a -> s { _appMeshVirtualNodeListenerTlsFileCertificateCertificateChain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsfilecertificate.html#cfn-appmesh-virtualnode-listenertlsfilecertificate-privatekey
amvnltfcPrivateKey :: Lens' AppMeshVirtualNodeListenerTlsFileCertificate (Val Text)
amvnltfcPrivateKey = lens _appMeshVirtualNodeListenerTlsFileCertificatePrivateKey (\s a -> s { _appMeshVirtualNodeListenerTlsFileCertificatePrivateKey = a })
