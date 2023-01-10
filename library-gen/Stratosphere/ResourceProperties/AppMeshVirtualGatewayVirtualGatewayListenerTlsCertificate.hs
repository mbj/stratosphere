
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate. See
-- 'appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateACM :: Maybe AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateFile :: Maybe AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate where
  toJSON AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate{..} =
    object $
    catMaybes
    [ fmap (("ACM",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateACM
    , fmap (("File",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateFile
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
  :: AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
appMeshVirtualGatewayVirtualGatewayListenerTlsCertificate  =
  AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate
  { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateACM = Nothing
  , _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlscertificate-acm
amvgvgltcACM :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate (Maybe AppMeshVirtualGatewayVirtualGatewayListenerTlsAcmCertificate)
amvgvgltcACM = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateACM (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateACM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistenertlscertificate.html#cfn-appmesh-virtualgateway-virtualgatewaylistenertlscertificate-file
amvgvgltcFile :: Lens' AppMeshVirtualGatewayVirtualGatewayListenerTlsCertificate (Maybe AppMeshVirtualGatewayVirtualGatewayListenerTlsFileCertificate)
amvgvgltcFile = lens _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateFile (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTlsCertificateFile = a })
