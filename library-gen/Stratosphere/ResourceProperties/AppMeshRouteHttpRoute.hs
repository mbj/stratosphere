{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteAction
import Stratosphere.ResourceProperties.AppMeshRouteHttpRouteMatch

-- | Full data type definition for AppMeshRouteHttpRoute. See
-- 'appMeshRouteHttpRoute' for a more convenient constructor.
data AppMeshRouteHttpRoute =
  AppMeshRouteHttpRoute
  { _appMeshRouteHttpRouteAction :: AppMeshRouteHttpRouteAction
  , _appMeshRouteHttpRouteMatch :: AppMeshRouteHttpRouteMatch
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRoute where
  toJSON AppMeshRouteHttpRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteHttpRouteAction
    , (Just . ("Match",) . toJSON) _appMeshRouteHttpRouteMatch
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
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-action
amrhrAction :: Lens' AppMeshRouteHttpRoute AppMeshRouteHttpRouteAction
amrhrAction = lens _appMeshRouteHttpRouteAction (\s a -> s { _appMeshRouteHttpRouteAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httproute.html#cfn-appmesh-route-httproute-match
amrhrMatch :: Lens' AppMeshRouteHttpRoute AppMeshRouteHttpRouteMatch
amrhrMatch = lens _appMeshRouteHttpRouteMatch (\s a -> s { _appMeshRouteHttpRouteMatch = a })
