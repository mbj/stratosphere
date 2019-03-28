{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html

module Stratosphere.ResourceProperties.AppMeshRouteTcpRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteTcpRouteAction

-- | Full data type definition for AppMeshRouteTcpRoute. See
-- 'appMeshRouteTcpRoute' for a more convenient constructor.
data AppMeshRouteTcpRoute =
  AppMeshRouteTcpRoute
  { _appMeshRouteTcpRouteAction :: AppMeshRouteTcpRouteAction
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteTcpRoute where
  toJSON AppMeshRouteTcpRoute{..} =
    object $
    catMaybes
    [ (Just . ("Action",) . toJSON) _appMeshRouteTcpRouteAction
    ]

-- | Constructor for 'AppMeshRouteTcpRoute' containing required fields as
-- arguments.
appMeshRouteTcpRoute
  :: AppMeshRouteTcpRouteAction -- ^ 'amrtrAction'
  -> AppMeshRouteTcpRoute
appMeshRouteTcpRoute actionarg =
  AppMeshRouteTcpRoute
  { _appMeshRouteTcpRouteAction = actionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcproute.html#cfn-appmesh-route-tcproute-action
amrtrAction :: Lens' AppMeshRouteTcpRoute AppMeshRouteTcpRouteAction
amrtrAction = lens _appMeshRouteTcpRouteAction (\s a -> s { _appMeshRouteTcpRouteAction = a })
