
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRoute where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteAction
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteMatch
import Stratosphere.ResourceProperties.AppMeshRouteHttpRetryPolicy
import Stratosphere.ResourceProperties.AppMeshRouteHttpTimeout

-- | Full data type definition for AppMeshRouteHttpRoute. See
-- 'appMeshRouteHttpRoute' for a more convenient constructor.
data AppMeshRouteHttpRoute =
  AppMeshRouteHttpRoute
  { _appMeshRouteHttpRouteAction :: AppMeshRouteHttpRouteAction
  , _appMeshRouteHttpRouteMatch :: AppMeshRouteHttpRouteMatch
  , _appMeshRouteHttpRouteRetryPolicy :: Maybe AppMeshRouteHttpRetryPolicy
  , _appMeshRouteHttpRouteTimeout :: Maybe AppMeshRouteHttpTimeout
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRoute where
  toJSON AppMeshRouteHttpRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteHttpRouteAction
    , (Just . ("Match",) . toJSON) _appMeshRouteHttpRouteMatch
    , fmap (("RetryPolicy",) . toJSON) _appMeshRouteHttpRouteRetryPolicy
    , fmap (("Timeout",) . toJSON) _appMeshRouteHttpRouteTimeout
    ]

-- | Constructor for 'AppMeshRouteHttpRoute' containing required fields as
-- arguments.
appMeshRouteHttpRoute
  :: AppMeshRouteHttpRouteAction -- ^ 'amrhrAction'
  -> AppMeshRouteHttpRouteMatch -- ^ 'amrhrMatch'
  -> AppMeshRouteHttpRoute
appMeshRouteHttpRoute actionarg matcharg =
  AppMeshRouteHttpRoute
  { _appMeshRouteHttpRouteAction = actionarg
  , _appMeshRouteHttpRouteMatch = matcharg
  , _appMeshRouteHttpRouteRetryPolicy = Nothing
  , _appMeshRouteHttpRouteTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-action
amrhrAction :: Lens' AppMeshRouteHttpRoute AppMeshRouteHttpRouteAction
amrhrAction = lens _appMeshRouteHttpRouteAction (\s a -> s { _appMeshRouteHttpRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-match
amrhrMatch :: Lens' AppMeshRouteHttpRoute AppMeshRouteHttpRouteMatch
amrhrMatch = lens _appMeshRouteHttpRouteMatch (\s a -> s { _appMeshRouteHttpRouteMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-retrypolicy
amrhrRetryPolicy :: Lens' AppMeshRouteHttpRoute (Maybe AppMeshRouteHttpRetryPolicy)
amrhrRetryPolicy = lens _appMeshRouteHttpRouteRetryPolicy (\s a -> s { _appMeshRouteHttpRouteRetryPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-timeout
amrhrTimeout :: Lens' AppMeshRouteHttpRoute (Maybe AppMeshRouteHttpTimeout)
amrhrTimeout = lens _appMeshRouteHttpRouteTimeout (\s a -> s { _appMeshRouteHttpRouteTimeout = a })
