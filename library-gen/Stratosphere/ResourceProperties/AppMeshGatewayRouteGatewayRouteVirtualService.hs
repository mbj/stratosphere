
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutevirtualservice.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteVirtualService where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshGatewayRouteGatewayRouteVirtualService. See
-- 'appMeshGatewayRouteGatewayRouteVirtualService' for a more convenient
-- constructor.
data AppMeshGatewayRouteGatewayRouteVirtualService =
  AppMeshGatewayRouteGatewayRouteVirtualService
  { _appMeshGatewayRouteGatewayRouteVirtualServiceVirtualServiceName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGatewayRouteVirtualService where
  toJSON AppMeshGatewayRouteGatewayRouteVirtualService{..} =
    object $
    catMaybes
    [ (Just . ("VirtualServiceName",) . toJSON) _appMeshGatewayRouteGatewayRouteVirtualServiceVirtualServiceName
    ]

-- | Constructor for 'AppMeshGatewayRouteGatewayRouteVirtualService'
-- containing required fields as arguments.
appMeshGatewayRouteGatewayRouteVirtualService
  :: Val Text -- ^ 'amgrgrvsVirtualServiceName'
  -> AppMeshGatewayRouteGatewayRouteVirtualService
appMeshGatewayRouteGatewayRouteVirtualService virtualServiceNamearg =
  AppMeshGatewayRouteGatewayRouteVirtualService
  { _appMeshGatewayRouteGatewayRouteVirtualServiceVirtualServiceName = virtualServiceNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutevirtualservice.html#cfn-appmesh-gatewayroute-gatewayroutevirtualservice-virtualservicename
amgrgrvsVirtualServiceName :: Lens' AppMeshGatewayRouteGatewayRouteVirtualService (Val Text)
amgrgrvsVirtualServiceName = lens _appMeshGatewayRouteGatewayRouteVirtualServiceVirtualServiceName (\s a -> s { _appMeshGatewayRouteGatewayRouteVirtualServiceVirtualServiceName = a })
