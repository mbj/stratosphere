
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust. See
-- 'appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust' for a
-- more convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrustCertificateAuthorityArns :: ValList Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust where
  toJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust{..} =
    object $
    catMaybes
    [ (Just . ("CertificateAuthorityArns",) . toJSON) _appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrustCertificateAuthorityArns
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
  :: ValList Text -- ^ 'amvgvgtvcatCertificateAuthorityArns'
  -> AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust certificateAuthorityArnsarg =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrustCertificateAuthorityArns = certificateAuthorityArnsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextacmtrust-certificateauthorityarns
amvgvgtvcatCertificateAuthorityArns :: Lens' AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust (ValList Text)
amvgvgtvcatCertificateAuthorityArns = lens _appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrustCertificateAuthorityArns (\s a -> s { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrustCertificateAuthorityArns = a })
