
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html

module Stratosphere.ResourceProperties.AppMeshRouteTcpRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteTcpRouteAction
import Stratosphere.ResourceProperties.AppMeshRouteTcpTimeout

-- | Full data type definition for AppMeshRouteTcpRoute. See
-- 'appMeshRouteTcpRoute' for a more convenient constructor.
data AppMeshRouteTcpRoute =
  AppMeshRouteTcpRoute
  { _appMeshRouteTcpRouteAction :: AppMeshRouteTcpRouteAction
  , _appMeshRouteTcpRouteTimeout :: Maybe AppMeshRouteTcpTimeout
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteTcpRoute where
  toJSON AppMeshRouteTcpRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteTcpRouteAction
    , fmap (("Timeout",) . toJSON) _appMeshRouteTcpRouteTimeout
    ]

-- | Constructor for 'AppMeshRouteTcpRoute' containing required fields as
-- arguments.
appMeshRouteTcpRoute
  :: AppMeshRouteTcpRouteAction -- ^ 'amrtrAction'
  -> AppMeshRouteTcpRoute
appMeshRouteTcpRoute actionarg =
  AppMeshRouteTcpRoute
  { _appMeshRouteTcpRouteAction = actionarg
  , _appMeshRouteTcpRouteTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-action
amrtrAction :: Lens' AppMeshRouteTcpRoute AppMeshRouteTcpRouteAction
amrtrAction = lens _appMeshRouteTcpRouteAction (\s a -> s { _appMeshRouteTcpRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-timeout
amrtrTimeout :: Lens' AppMeshRouteTcpRoute (Maybe AppMeshRouteTcpTimeout)
amrtrTimeout = lens _appMeshRouteTcpRouteTimeout (\s a -> s { _appMeshRouteTcpRouteTimeout = a })
