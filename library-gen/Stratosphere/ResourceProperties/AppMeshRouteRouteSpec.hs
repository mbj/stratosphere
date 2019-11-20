{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html

module Stratosphere.ResourceProperties.AppMeshRouteRouteSpec where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteGrpcRoute
import Stratosphere.ResourceProperties.AppMeshRouteHttpRoute
import Stratosphere.ResourceProperties.AppMeshRouteTcpRoute

-- | Full data type definition for AppMeshRouteRouteSpec. See
-- 'appMeshRouteRouteSpec' for a more convenient constructor.
data AppMeshRouteRouteSpec =
  AppMeshRouteRouteSpec
  { _appMeshRouteRouteSpecGrpcRoute :: Maybe AppMeshRouteGrpcRoute
  , _appMeshRouteRouteSpecHttp2Route :: Maybe AppMeshRouteHttpRoute
  , _appMeshRouteRouteSpecHttpRoute :: Maybe AppMeshRouteHttpRoute
  , _appMeshRouteRouteSpecPriority :: Maybe (Val Integer)
  , _appMeshRouteRouteSpecTcpRoute :: Maybe AppMeshRouteTcpRoute
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteRouteSpec where
  toJSON AppMeshRouteRouteSpec{..} =
    object $
    catMaybes
    [ fmap (("GrpcRoute",) . toJSON) _appMeshRouteRouteSpecGrpcRoute
    , fmap (("Http2Route",) . toJSON) _appMeshRouteRouteSpecHttp2Route
    , fmap (("HttpRoute",) . toJSON) _appMeshRouteRouteSpecHttpRoute
    , fmap (("Priority",) . toJSON) _appMeshRouteRouteSpecPriority
    , fmap (("TcpRoute",) . toJSON) _appMeshRouteRouteSpecTcpRoute
    ]

-- | Constructor for 'AppMeshRouteRouteSpec' containing required fields as
-- arguments.
appMeshRouteRouteSpec
  :: AppMeshRouteRouteSpec
appMeshRouteRouteSpec  =
  AppMeshRouteRouteSpec
  { _appMeshRouteRouteSpecGrpcRoute = Nothing
  , _appMeshRouteRouteSpecHttp2Route = Nothing
  , _appMeshRouteRouteSpecHttpRoute = Nothing
  , _appMeshRouteRouteSpecPriority = Nothing
  , _appMeshRouteRouteSpecTcpRoute = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-grpcroute
amrrsGrpcRoute :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteGrpcRoute)
amrrsGrpcRoute = lens _appMeshRouteRouteSpecGrpcRoute (\s a -> s { _appMeshRouteRouteSpecGrpcRoute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-http2route
amrrsHttp2Route :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteHttpRoute)
amrrsHttp2Route = lens _appMeshRouteRouteSpecHttp2Route (\s a -> s { _appMeshRouteRouteSpecHttp2Route = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-httproute
amrrsHttpRoute :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteHttpRoute)
amrrsHttpRoute = lens _appMeshRouteRouteSpecHttpRoute (\s a -> s { _appMeshRouteRouteSpecHttpRoute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-priority
amrrsPriority :: Lens' AppMeshRouteRouteSpec (Maybe (Val Integer))
amrrsPriority = lens _appMeshRouteRouteSpecPriority (\s a -> s { _appMeshRouteRouteSpecPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-routespec.html#cfn-appmesh-route-routespec-tcproute
amrrsTcpRoute :: Lens' AppMeshRouteRouteSpec (Maybe AppMeshRouteTcpRoute)
amrrsTcpRoute = lens _appMeshRouteRouteSpecTcpRoute (\s a -> s { _appMeshRouteRouteSpecTcpRoute = a })
