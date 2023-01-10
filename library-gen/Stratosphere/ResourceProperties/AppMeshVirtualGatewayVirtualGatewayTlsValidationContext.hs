
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContext where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayTlsValidationContext. See
-- 'appMeshVirtualGatewayVirtualGatewayTlsValidationContext' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayTlsValidationContext =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContext
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust :: AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContext where
  toJSON AppMeshVirtualGatewayVirtualGatewayTlsValidationContext{..} =
    object $
    catMaybes
    [ (Just . ("Trust",) . toJSON) _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayTlsValidationContext'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayTlsValidationContext
  :: AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust -- ^ 'amvgvgtvcTrust'
  -> AppMeshVirtualGatewayVirtualGatewayTlsValidationContext
appMeshVirtualGatewayVirtualGatewayTlsValidationContext trustarg =
  AppMeshVirtualGatewayVirtualGatewayTlsValidationContext
  { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust = trustarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext.html#cfn-appmesh-virtualgateway-virtualgatewaytlsvalidationcontext-trust
amvgvgtvcTrust :: Lens' AppMeshVirtualGatewayVirtualGatewayTlsValidationContext AppMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust
amvgvgtvcTrust = lens _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust (\s a -> s { _appMeshVirtualGatewayVirtualGatewayTlsValidationContextTrust = a })
