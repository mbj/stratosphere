
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsAcmCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualNodeListenerTlsAcmCertificate. See
-- 'appMeshVirtualNodeListenerTlsAcmCertificate' for a more convenient
-- constructor.
data AppMeshVirtualNodeListenerTlsAcmCertificate =
  AppMeshVirtualNodeListenerTlsAcmCertificate
  { _appMeshVirtualNodeListenerTlsAcmCertificateCertificateArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListenerTlsAcmCertificate where
  toJSON AppMeshVirtualNodeListenerTlsAcmCertificate{..} =
    object $
    catMaybes
    [ (Just . ("CertificateArn",) . toJSON) _appMeshVirtualNodeListenerTlsAcmCertificateCertificateArn
    ]

-- | Constructor for 'AppMeshVirtualNodeListenerTlsAcmCertificate' containing
-- required fields as arguments.
appMeshVirtualNodeListenerTlsAcmCertificate
  :: Val Text -- ^ 'amvnltacCertificateArn'
  -> AppMeshVirtualNodeListenerTlsAcmCertificate
appMeshVirtualNodeListenerTlsAcmCertificate certificateArnarg =
  AppMeshVirtualNodeListenerTlsAcmCertificate
  { _appMeshVirtualNodeListenerTlsAcmCertificateCertificateArn = certificateArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlsacmcertificate.html#cfn-appmesh-virtualnode-listenertlsacmcertificate-certificatearn
amvnltacCertificateArn :: Lens' AppMeshVirtualNodeListenerTlsAcmCertificate (Val Text)
amvnltacCertificateArn = lens _appMeshVirtualNodeListenerTlsAcmCertificateCertificateArn (\s a -> s { _appMeshVirtualNodeListenerTlsAcmCertificateCertificateArn = a })
