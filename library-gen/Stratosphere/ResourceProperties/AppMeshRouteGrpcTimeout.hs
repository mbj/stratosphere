
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcTimeout where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteDuration

-- | Full data type definition for AppMeshRouteGrpcTimeout. See
-- 'appMeshRouteGrpcTimeout' for a more convenient constructor.
data AppMeshRouteGrpcTimeout =
  AppMeshRouteGrpcTimeout
  { _appMeshRouteGrpcTimeoutIdle :: Maybe AppMeshRouteDuration
  , _appMeshRouteGrpcTimeoutPerRequest :: Maybe AppMeshRouteDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcTimeout where
  toJSON AppMeshRouteGrpcTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshRouteGrpcTimeoutIdle
    , fmap (("PerRequest",) . toJSON) _appMeshRouteGrpcTimeoutPerRequest
    ]

-- | Constructor for 'AppMeshRouteGrpcTimeout' containing required fields as
-- arguments.
appMeshRouteGrpcTimeout
  :: AppMeshRouteGrpcTimeout
appMeshRouteGrpcTimeout  =
  AppMeshRouteGrpcTimeout
  { _appMeshRouteGrpcTimeoutIdle = Nothing
  , _appMeshRouteGrpcTimeoutPerRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html#cfn-appmesh-route-grpctimeout-idle
amrgtIdle :: Lens' AppMeshRouteGrpcTimeout (Maybe AppMeshRouteDuration)
amrgtIdle = lens _appMeshRouteGrpcTimeoutIdle (\s a -> s { _appMeshRouteGrpcTimeoutIdle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpctimeout.html#cfn-appmesh-route-grpctimeout-perrequest
amrgtPerRequest :: Lens' AppMeshRouteGrpcTimeout (Maybe AppMeshRouteDuration)
amrgtPerRequest = lens _appMeshRouteGrpcTimeoutPerRequest (\s a -> s { _appMeshRouteGrpcTimeoutPerRequest = a })
