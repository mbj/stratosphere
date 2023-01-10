
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust. See
-- 'appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustACM :: Maybe AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust
  , _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustFile :: Maybe AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust where
  toJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust{..} =
    object $
    catMaybes
    [ fmap (("ACM",) . toJSON) _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustACM
    , fmap (("File",) . toJSON) _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustFile
    ]

-- | Constructor for
-- 'AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
  :: AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust  =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustACM = Nothing
  , _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-acm
amvgvgtvctACM :: Lens' AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust (Maybe AppMeshVirtualGatewayVirtualGatewayTlsValidationContextAcmTrust)
amvgvgtvctACM = lens _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustACM (\s a -> s { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustACM = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontexttrust-file
amvgvgtvctFile :: Lens' AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust (Maybe AppMeshVirtualGatewayVirtualGatewayTlsValidationContextFileTrust)
amvgvgtvctFile = lens _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustFile (\s a -> s { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrustFile = a })
