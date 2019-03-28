{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html

module Stratosphere.ResourceProperties.AppMeshRouteRouteSpec where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteHttpRoute
import Stratosphere.ResourceProperties.AppMeshRouteTcpRoute

-- | Full data type definition for AppMeshRouteRouteSpec. See
-- 'appMeshRouteRouteSpec' for a more convenient constructor.
data AppMeshRouteRouteSpec =
  AppMeshRouteRouteSpec
  { _appMeshRouteRouteSpecHttpRoute :: Maybe AppMeshRouteHttpRoute
  , _appMeshRouteRouteSpecTcpRoute :: Maybe AppMeshRouteTcpRoute
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteRouteSpec where
  toJSON AppMeshRouteRouteSpec{..} =
    object $
    catMaybes
    [ fmap (("HttpRoute",) . toJSON) _appMeshRouteRouteSpecHttpRoute
    , fmap (("TcpRoute",) . toJSON) _appMeshRouteRouteSpecTcpRoute
    ]

-- | Constructor for 'AppMeshRouteRouteSpec' containing required fields as
-- arguments.
appMeshRouteRouteSpec
  :: AppMeshRouteRouteSpec
appMeshRouteRouteSpec  =
  AppMeshRouteRouteSpec
  { _appMeshRouteRouteSpecHttpRoute = Nothing
  , _appMeshRouteRouteSpecTcpRoute = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
amrrsHttpRoute :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteHttpRoute)
amrrsHttpRoute = lens _appMeshRouteRouteSpecHttpRoute (\s a -> s { _appMeshRouteRouteSpecHttpRoute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute
amrrsTcpRoute :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteTcpRoute)
amrrsTcpRoute = lens _appMeshRouteRouteSpecTcpRoute (\s a -> s { _appMeshRouteRouteSpecTcpRoute = a })
