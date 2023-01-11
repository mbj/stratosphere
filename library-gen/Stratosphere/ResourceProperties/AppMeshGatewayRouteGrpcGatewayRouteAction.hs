
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouteaction.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRouteAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteTarget

-- | Full data type definition for AppMeshGatewayRouteGrpcGatewayRouteAction.
-- See 'appMeshGatewayRouteGrpcGatewayRouteAction' for a more convenient
-- constructor.
data AppMeshGatewayRouteGrpcGatewayRouteAction =
  AppMeshGatewayRouteGrpcGatewayRouteAction
  { _appMeshGatewayRouteGrpcGatewayRouteActionTarget :: AppMeshGatewayRouteGatewayRouteTarget
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGrpcGatewayRouteAction where
  toJSON AppMeshGatewayRouteGrpcGatewayRouteAction{..} =
    object $
    catMaybes
    [ (Just . ("Target",) . toJSON) _appMeshGatewayRouteGrpcGatewayRouteActionTarget
    ]

-- | Constructor for 'AppMeshGatewayRouteGrpcGatewayRouteAction' containing
-- required fields as arguments.
appMeshGatewayRouteGrpcGatewayRouteAction
  :: AppMeshGatewayRouteGatewayRouteTarget -- ^ 'amgrggraTarget'
  -> AppMeshGatewayRouteGrpcGatewayRouteAction
appMeshGatewayRouteGrpcGatewayRouteAction targetarg =
  AppMeshGatewayRouteGrpcGatewayRouteAction
  { _appMeshGatewayRouteGrpcGatewayRouteActionTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayrouteaction.html#cfn-appmesh-gatewayroute-grpcgatewayrouteaction-target
amgrggraTarget :: Lens' AppMeshGatewayRouteGrpcGatewayRouteAction AppMeshGatewayRouteGatewayRouteTarget
amgrggraTarget = lens _appMeshGatewayRouteGrpcGatewayRouteActionTarget (\s a -> s { _appMeshGatewayRouteGrpcGatewayRouteActionTarget = a })
