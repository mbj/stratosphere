
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextfiletrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextFileTrust where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualNodeTlsValidationContextFileTrust. See
-- 'appMeshVirtualNodeTlsValidationContextFileTrust' for a more convenient
-- constructor.
data AppMeshVirtualNodeTlsValidationContextFileTrust =
  AppMeshVirtualNodeTlsValidationContextFileTrust
  { _appMeshVirtualNodeTlsValidationContextFileTrustCertificateChain :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTlsValidationContextFileTrust where
  toJSON AppMeshVirtualNodeTlsValidationContextFileTrust{..} =
    object $
    catMaybes
    [ (Just . ("CertificateChain",) . toJSON) _appMeshVirtualNodeTlsValidationContextFileTrustCertificateChain
    ]

-- | Constructor for 'AppMeshVirtualNodeTlsValidationContextFileTrust'
-- containing required fields as arguments.
appMeshVirtualNodeTlsValidationContextFileTrust
  :: Val Text -- ^ 'amvntvcftCertificateChain'
  -> AppMeshVirtualNodeTlsValidationContextFileTrust
appMeshVirtualNodeTlsValidationContextFileTrust certificateChainarg =
  AppMeshVirtualNodeTlsValidationContextFileTrust
  { _appMeshVirtualNodeTlsValidationContextFileTrustCertificateChain = certificateChainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextfiletrust.html#cfn-appmesh-virtualnode-tlsvalidationcontextfiletrust-certificatechain
amvntvcftCertificateChain :: Lens' AppMeshVirtualNodeTlsValidationContextFileTrust (Val Text)
amvntvcftCertificateChain = lens _appMeshVirtualNodeTlsValidationContextFileTrustCertificateChain (\s a -> s { _appMeshVirtualNodeTlsValidationContextFileTrustCertificateChain = a })
