
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicy.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayClientPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayClientPolicyTls

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayClientPolicy. See
-- 'appMeshVirtualGatewayVirtualGatewayClientPolicy' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayClientPolicy =
  AppMeshVirtualGatewayVirtualGatewayClientPolicy
  { _appMeshVirtualGatewayVirtualGatewayClientPolicyTLS :: Maybe AppMeshVirtualGatewayVirtualGatewayClientPolicyTls
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayClientPolicy where
  toJSON AppMeshVirtualGatewayVirtualGatewayClientPolicy{..} =
    object $
    catMaybes
    [ fmap (("TLS",) . toJSON) _appMeshVirtualGatewayVirtualGatewayClientPolicyTLS
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayClientPolicy'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayClientPolicy
  :: AppMeshVirtualGatewayVirtualGatewayClientPolicy
appMeshVirtualGatewayVirtualGatewayClientPolicy  =
  AppMeshVirtualGatewayVirtualGatewayClientPolicy
  { _appMeshVirtualGatewayVirtualGatewayClientPolicyTLS = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayclientpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayclientpolicy-tls
amvgvgcpTLS :: Lens' AppMeshVirtualGatewayVirtualGatewayClientPolicy (Maybe AppMeshVirtualGatewayVirtualGatewayClientPolicyTls)
amvgvgcpTLS = lens _appMeshVirtualGatewayVirtualGatewayClientPolicyTLS (\s a -> s { _appMeshVirtualGatewayVirtualGatewayClientPolicyTLS = a })
