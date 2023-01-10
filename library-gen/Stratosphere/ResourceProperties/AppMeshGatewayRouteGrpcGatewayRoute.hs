
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRouteAction
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRouteMatch

-- | Full data type definition for AppMeshGatewayRouteGrpcGatewayRoute. See
-- 'appMeshGatewayRouteGrpcGatewayRoute' for a more convenient constructor.
data AppMeshGatewayRouteGrpcGatewayRoute =
  AppMeshGatewayRouteGrpcGatewayRoute
  { _appMeshGatewayRouteGrpcGatewayRouteAction :: AppMeshGatewayRouteGrpcGatewayRouteAction
  , _appMeshGatewayRouteGrpcGatewayRouteMatch :: AppMeshGatewayRouteGrpcGatewayRouteMatch
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGrpcGatewayRoute where
  toJSON AppMeshGatewayRouteGrpcGatewayRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshGatewayRouteGrpcGatewayRouteAction
    , (Just . ("Match",) . toJSON) _appMeshGatewayRouteGrpcGatewayRouteMatch
    ]

-- | Constructor for 'AppMeshGatewayRouteGrpcGatewayRoute' containing required
-- fields as arguments.
appMeshGatewayRouteGrpcGatewayRoute
  :: AppMeshGatewayRouteGrpcGatewayRouteAction -- ^ 'amgrggrAction'
  -> AppMeshGatewayRouteGrpcGatewayRouteMatch -- ^ 'amgrggrMatch'
  -> AppMeshGatewayRouteGrpcGatewayRoute
appMeshGatewayRouteGrpcGatewayRoute actionarg matcharg =
  AppMeshGatewayRouteGrpcGatewayRoute
  { _appMeshGatewayRouteGrpcGatewayRouteAction = actionarg
  , _appMeshGatewayRouteGrpcGatewayRouteMatch = matcharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-action
amgrggrAction :: Lens' AppMeshGatewayRouteGrpcGatewayRoute AppMeshGatewayRouteGrpcGatewayRouteAction
amgrggrAction = lens _appMeshGatewayRouteGrpcGatewayRouteAction (\s a -> s { _appMeshGatewayRouteGrpcGatewayRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroute.html#cfn-appmesh-gatewayroute-grpcgatewayroute-match
amgrggrMatch :: Lens' AppMeshGatewayRouteGrpcGatewayRoute AppMeshGatewayRouteGrpcGatewayRouteMatch
amgrggrMatch = lens _appMeshGatewayRouteGrpcGatewayRouteMatch (\s a -> s { _appMeshGatewayRouteGrpcGatewayRouteMatch = a })
