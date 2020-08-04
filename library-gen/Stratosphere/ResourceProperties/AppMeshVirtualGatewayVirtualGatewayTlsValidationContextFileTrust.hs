{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust. See
-- 'appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust' for a
-- more convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrustCertificateChain :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust where
  toJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust{..} =
    object $
    catMaybes
    [ (Just . ("CertificateChain",) . toJSON) _appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrustCertificateChain
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust
  :: Val Text -- ^ 'amvgvgtvcftCertificateChain'
  -> AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust
appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust certificateChainarg =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrustCertificateChain = certificateChainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontextfiletrust-certificatechain
amvgvgtvcftCertificateChain :: Lens' AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust (Val Text)
amvgvgtvcftCertificateChain = lens _appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrustCertificateChain (\s a -> s { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrustCertificateChain = a })
