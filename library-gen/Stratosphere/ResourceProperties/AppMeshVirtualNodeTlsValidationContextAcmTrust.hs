{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTlsValidationContextAcmTrust where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualNodeTlsValidationContextAcmTrust. See
-- 'appMeshVirtualNodeTlsValidationContextAcmTrust' for a more convenient
-- constructor.
data AppMeshVirtualNodeTlsValidationContextAcmTrust =
  AppMeshVirtualNodeTlsValidationContextAcmTrust
  { _appMeshVirtualNodeTlsValidationContextAcmTrustCertificateAuthorityArns :: ValList Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTlsValidationContextAcmTrust where
  toJSON AppMeshVirtualNodeTlsValidationContextAcmTrust{..} =
    object $
    catMaybes
    [ (Just . ("CertificateAuthorityArns",) . toJSON) _appMeshVirtualNodeTlsValidationContextAcmTrustCertificateAuthorityArns
    ]

-- | Constructor for 'AppMeshVirtualNodeTlsValidationContextAcmTrust'
-- containing required fields as arguments.
appMeshVirtualNodeTlsValidationContextAcmTrust
  :: ValList Text -- ^ 'amvntvcatCertificateAuthorityArns'
  -> AppMeshVirtualNodeTlsValidationContextAcmTrust
appMeshVirtualNodeTlsValidationContextAcmTrust certificateAuthorityArnsarg =
  AppMeshVirtualNodeTlsValidationContextAcmTrust
  { _appMeshVirtualNodeTlsValidationContextAcmTrustCertificateAuthorityArns = certificateAuthorityArnsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tlsvalidationcontextacmtrust.html#cfn-appmesh-virtualnode-tlsvalidationcontextacmtrust-certificateauthorityarns
amvntvcatCertificateAuthorityArns :: Lens' AppMeshVirtualNodeTlsValidationContextAcmTrust (ValList Text)
amvntvcatCertificateAuthorityArns = lens _appMeshVirtualNodeTlsValidationContextAcmTrustCertificateAuthorityArns (\s a -> s { _appMeshVirtualNodeTlsValidationContextAcmTrustCertificateAuthorityArns = a })
