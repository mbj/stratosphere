
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroutematch.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRouteMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshGatewayRouteHttpGatewayRouteMatch.
-- See 'appMeshGatewayRouteHttpGatewayRouteMatch' for a more convenient
-- constructor.
data AppMeshGatewayRouteHttpGatewayRouteMatch =
  AppMeshGatewayRouteHttpGatewayRouteMatch
  { _appMeshGatewayRouteHttpGatewayRouteMatchPrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteHttpGatewayRouteMatch where
  toJSON AppMeshGatewayRouteHttpGatewayRouteMatch{..} =
    object $
    catMaybes
    [ (Just . ("Prefix",) . toJSON) _appMeshGatewayRouteHttpGatewayRouteMatchPrefix
    ]

-- | Constructor for 'AppMeshGatewayRouteHttpGatewayRouteMatch' containing
-- required fields as arguments.
appMeshGatewayRouteHttpGatewayRouteMatch
  :: Val Text -- ^ 'amgrhgrmPrefix'
  -> AppMeshGatewayRouteHttpGatewayRouteMatch
appMeshGatewayRouteHttpGatewayRouteMatch prefixarg =
  AppMeshGatewayRouteHttpGatewayRouteMatch
  { _appMeshGatewayRouteHttpGatewayRouteMatchPrefix = prefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-httpgatewayroutematch.html#cfn-appmesh-gatewayroute-httpgatewayroutematch-prefix
amgrhgrmPrefix :: Lens' AppMeshGatewayRouteHttpGatewayRouteMatch (Val Text)
amgrhgrmPrefix = lens _appMeshGatewayRouteHttpGatewayRouteMatchPrefix (\s a -> s { _appMeshGatewayRouteHttpGatewayRouteMatchPrefix = a })
