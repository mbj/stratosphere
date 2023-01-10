
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRoute where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteAction
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteMatch
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRetryPolicy
import Stratosphere.ResourceProperties.AppMeshRouteGrpcTimeout

-- | Full data type definition for AppMeshRouteGrpcRoute. See
-- 'appMeshRouteGrpcRoute' for a more convenient constructor.
data AppMeshRouteGrpcRoute =
  AppMeshRouteGrpcRoute
  { _appMeshRouteGrpcRouteAction :: AppMeshRouteGrpcRouteAction
  , _appMeshRouteGrpcRouteMatch :: AppMeshRouteGrpcRouteMatch
  , _appMeshRouteGrpcRouteRetryPolicy :: Maybe AppMeshRouteGrpcRetryPolicy
  , _appMeshRouteGrpcRouteTimeout :: Maybe AppMeshRouteGrpcTimeout
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRoute where
  toJSON AppMeshRouteGrpcRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteGrpcRouteAction
    , (Just . ("Match",) . toJSON) _appMeshRouteGrpcRouteMatch
    , fmap (("RetryPolicy",) . toJSON) _appMeshRouteGrpcRouteRetryPolicy
    , fmap (("Timeout",) . toJSON) _appMeshRouteGrpcRouteTimeout
    ]

-- | Constructor for 'AppMeshRouteGrpcRoute' containing required fields as
-- arguments.
appMeshRouteGrpcRoute
  :: AppMeshRouteGrpcRouteAction -- ^ 'amrgrAction'
  -> AppMeshRouteGrpcRouteMatch -- ^ 'amrgrMatch'
  -> AppMeshRouteGrpcRoute
appMeshRouteGrpcRoute actionarg matcharg =
  AppMeshRouteGrpcRoute
  { _appMeshRouteGrpcRouteAction = actionarg
  , _appMeshRouteGrpcRouteMatch = matcharg
  , _appMeshRouteGrpcRouteRetryPolicy = Nothing
  , _appMeshRouteGrpcRouteTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-action
amrgrAction :: Lens' AppMeshRouteGrpcRoute AppMeshRouteGrpcRouteAction
amrgrAction = lens _appMeshRouteGrpcRouteAction (\s a -> s { _appMeshRouteGrpcRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-match
amrgrMatch :: Lens' AppMeshRouteGrpcRoute AppMeshRouteGrpcRouteMatch
amrgrMatch = lens _appMeshRouteGrpcRouteMatch (\s a -> s { _appMeshRouteGrpcRouteMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-retrypolicy
amrgrRetryPolicy :: Lens' AppMeshRouteGrpcRoute (Maybe AppMeshRouteGrpcRetryPolicy)
amrgrRetryPolicy = lens _appMeshRouteGrpcRouteRetryPolicy (\s a -> s { _appMeshRouteGrpcRouteRetryPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcroute.html#cfn-appmesh-route-grpcroute-timeout
amrgrTimeout :: Lens' AppMeshRouteGrpcRoute (Maybe AppMeshRouteGrpcTimeout)
amrgrTimeout = lens _appMeshRouteGrpcRouteTimeout (\s a -> s { _appMeshRouteGrpcRouteTimeout = a })
