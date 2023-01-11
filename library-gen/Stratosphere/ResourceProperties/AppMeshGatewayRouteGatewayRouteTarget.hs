
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutetarget.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteTarget where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteVirtualService

-- | Full data type definition for AppMeshGatewayRouteGatewayRouteTarget. See
-- 'appMeshGatewayRouteGatewayRouteTarget' for a more convenient
-- constructor.
data AppMeshGatewayRouteGatewayRouteTarget =
  AppMeshGatewayRouteGatewayRouteTarget
  { _appMeshGatewayRouteGatewayRouteTargetVirtualService :: AppMeshGatewayRouteGatewayRouteVirtualService
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGatewayRouteTarget where
  toJSON AppMeshGatewayRouteGatewayRouteTarget{..} =
    object $
    catMaybes
    [ (Just . ("VirtualService",) . toJSON) _appMeshGatewayRouteGatewayRouteTargetVirtualService
    ]

-- | Constructor for 'AppMeshGatewayRouteGatewayRouteTarget' containing
-- required fields as arguments.
appMeshGatewayRouteGatewayRouteTarget
  :: AppMeshGatewayRouteGatewayRouteVirtualService -- ^ 'amgrgrtVirtualService'
  -> AppMeshGatewayRouteGatewayRouteTarget
appMeshGatewayRouteGatewayRouteTarget virtualServicearg =
  AppMeshGatewayRouteGatewayRouteTarget
  { _appMeshGatewayRouteGatewayRouteTargetVirtualService = virtualServicearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutetarget.html#cfn-appmesh-gatewayroute-gatewayroutetarget-virtualservice
amgrgrtVirtualService :: Lens' AppMeshGatewayRouteGatewayRouteTarget AppMeshGatewayRouteGatewayRouteVirtualService
amgrgrtVirtualService = lens _appMeshGatewayRouteGatewayRouteTargetVirtualService (\s a -> s { _appMeshGatewayRouteGatewayRouteTargetVirtualService = a })
