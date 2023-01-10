
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRouteAction
import Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRouteMatch

-- | Full data type definition for AppMeshGatewayRouteHttpGatewayRoute. See
-- 'appMeshGatewayRouteHttpGatewayRoute' for a more convenient constructor.
data AppMeshGatewayRouteHttpGatewayRoute =
  AppMeshGatewayRouteHttpGatewayRoute
  { _appMeshGatewayRouteHttpGatewayRouteAction :: AppMeshGatewayRouteHttpGatewayRouteAction
  , _appMeshGatewayRouteHttpGatewayRouteMatch :: AppMeshGatewayRouteHttpGatewayRouteMatch
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteHttpGatewayRoute where
  toJSON AppMeshGatewayRouteHttpGatewayRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshGatewayRouteHttpGatewayRouteAction
    , (Just . ("Match",) . toJSON) _appMeshGatewayRouteHttpGatewayRouteMatch
    ]

-- | Constructor for 'AppMeshGatewayRouteHttpGatewayRoute' containing required
-- fields as arguments.
appMeshGatewayRouteHttpGatewayRoute
  :: AppMeshGatewayRouteHttpGatewayRouteAction -- ^ 'amgrhgrAction'
  -> AppMeshGatewayRouteHttpGatewayRouteMatch -- ^ 'amgrhgrMatch'
  -> AppMeshGatewayRouteHttpGatewayRoute
appMeshGatewayRouteHttpGatewayRoute actionarg matcharg =
  AppMeshGatewayRouteHttpGatewayRoute
  { _appMeshGatewayRouteHttpGatewayRouteAction = actionarg
  , _appMeshGatewayRouteHttpGatewayRouteMatch = matcharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-action
amgrhgrAction :: Lens' AppMeshGatewayRouteHttpGatewayRoute AppMeshGatewayRouteHttpGatewayRouteAction
amgrhgrAction = lens _appMeshGatewayRouteHttpGatewayRouteAction (\s a -> s { _appMeshGatewayRouteHttpGatewayRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroute.html#cfn-appmesh-gatewayroute-httpgatewayroute-match
amgrhgrMatch :: Lens' AppMeshGatewayRouteHttpGatewayRoute AppMeshGatewayRouteHttpGatewayRouteMatch
amgrhgrMatch = lens _appMeshGatewayRouteHttpGatewayRouteMatch (\s a -> s { _appMeshGatewayRouteHttpGatewayRouteMatch = a })
