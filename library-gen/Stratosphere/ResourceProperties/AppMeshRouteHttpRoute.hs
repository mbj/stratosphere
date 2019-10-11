{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHttpRetryPolicy
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteAction
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteMatch

-- | Full data type definition for AppMeshRouteHttpRoute. See
-- 'appMeshRouteHttpRoute' for a more convenient constructor.
data AppMeshRouteHttpRoute =
  AppMeshRouteHttpRoute
  { _appMeshRouteHttpRouteAction :: AppMeshRouteHttpRouteAction
  , _appMeshRouteHttpRouteMatch :: AppMeshRouteHttpRouteMatch
  , _appMeshRouteHttpRouteRetryPolicy :: Maybe AppMeshRouteHttpRetryPolicy
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRoute where
  toJSON AppMeshRouteHttpRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteHttpRouteAction
    , (Just . ("Match",) . toJSON) _appMeshRouteHttpRouteMatch
    , fmap (("RetryPolicy",) . toJSON) _appMeshRouteHttpRouteRetryPolicy
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
