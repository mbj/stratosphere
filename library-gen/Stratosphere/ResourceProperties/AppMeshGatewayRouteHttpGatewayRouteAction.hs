
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRouteAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteTarget

-- | Full data type definition for AppMeshGatewayRouteHttpGatewayRouteAction.
-- See 'appMeshGatewayRouteHttpGatewayRouteAction' for a more convenient
-- constructor.
data AppMeshGatewayRouteHttpGatewayRouteAction =
  AppMeshGatewayRouteHttpGatewayRouteAction
  { _appMeshGatewayRouteHttpGatewayRouteActionTarget :: AppMeshGatewayRouteGatewayRouteTarget
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteHttpGatewayRouteAction where
  toJSON AppMeshGatewayRouteHttpGatewayRouteAction{..} =
    object $
    catMaybes
    [ (Just . ("Target",) . toJSON) _appMeshGatewayRouteHttpGatewayRouteActionTarget
    ]

-- | Constructor for 'AppMeshGatewayRouteHttpGatewayRouteAction' containing
-- required fields as arguments.
appMeshGatewayRouteHttpGatewayRouteAction
  :: AppMeshGatewayRouteGatewayRouteTarget -- ^ 'amgrhgraTarget'
  -> AppMeshGatewayRouteHttpGatewayRouteAction
appMeshGatewayRouteHttpGatewayRouteAction targetarg =
  AppMeshGatewayRouteHttpGatewayRouteAction
  { _appMeshGatewayRouteHttpGatewayRouteActionTarget = targetarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayrouteaction.html#cfn-appmesh-gatewayroute-httpgatewayrouteaction-target
amgrhgraTarget :: Lens' AppMeshGatewayRouteHttpGatewayRouteAction AppMeshGatewayRouteGatewayRouteTarget
amgrhgraTarget = lens _appMeshGatewayRouteHttpGatewayRouteActionTarget (\s a -> s { _appMeshGatewayRouteHttpGatewayRouteActionTarget = a })
