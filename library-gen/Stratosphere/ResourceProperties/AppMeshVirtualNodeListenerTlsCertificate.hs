
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlscertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsCertificate where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsAcmCertificate
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTlsFileCertificate

-- | Full data type definition for AppMeshVirtualNodeListenerTlsCertificate.
-- See 'appMeshVirtualNodeListenerTlsCertificate' for a more convenient
-- constructor.
data AppMeshVirtualNodeListenerTlsCertificate =
  AppMeshVirtualNodeListenerTlsCertificate
  { _appMeshVirtualNodeListenerTlsCertificateACM :: Maybe AppMeshVirtualNodeListenerTlsAcmCertificate
  , _appMeshVirtualNodeListenerTlsCertificateFile :: Maybe AppMeshVirtualNodeListenerTlsFileCertificate
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListenerTlsCertificate where
  toJSON AppMeshVirtualNodeListenerTlsCertificate{..} =
    object $
    catMaybes
    [ fmap (("ACM",) . toJSON) _appMeshVirtualNodeListenerTlsCertificateACM
    , fmap (("File",) . toJSON) _appMeshVirtualNodeListenerTlsCertificateFile
    ]

-- | Constructor for 'AppMeshVirtualNodeListenerTlsCertificate' containing
-- required fields as arguments.
appMeshVirtualNodeListenerTlsCertificate
  :: AppMeshVirtualNodeListenerTlsCertificate
appMeshVirtualNodeListenerTlsCertificate  =
  AppMeshVirtualNodeListenerTlsCertificate
  { _appMeshVirtualNodeListenerTlsCertificateACM = Nothing
  , _appMeshVirtualNodeListenerTlsCertificateFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlscertificate.html#cfn-appmesh-virtualnode-listenertlscertificate-acm
amvnltcACM :: Lens' AppMeshVirtualNodeListenerTlsCertificate (Maybe AppMeshVirtualNodeListenerTlsAcmCertificate)
amvnltcACM = lens _appMeshVirtualNodeListenerTlsCertificateACM (\s a -> s { _appMeshVirtualNodeListenerTlsCertificateACM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listenertlscertificate.html#cfn-appmesh-virtualnode-listenertlscertificate-file
amvnltcFile :: Lens' AppMeshVirtualNodeListenerTlsCertificate (Maybe AppMeshVirtualNodeListenerTlsFileCertificate)
amvnltcFile = lens _appMeshVirtualNodeListenerTlsCertificateFile (\s a -> s { _appMeshVirtualNodeListenerTlsCertificateFile = a })
