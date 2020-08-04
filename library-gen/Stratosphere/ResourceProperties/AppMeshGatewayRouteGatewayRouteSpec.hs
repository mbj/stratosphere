{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutespec.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteSpec where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRoute
import Stratosphere.ResourceProperties.AppMeshGatewayRouteHttpGatewayRoute

-- | Full data type definition for AppMeshGatewayRouteGatewayRouteSpec. See
-- 'appMeshGatewayRouteGatewayRouteSpec' for a more convenient constructor.
data AppMeshGatewayRouteGatewayRouteSpec =
  AppMeshGatewayRouteGatewayRouteSpec
  { _appMeshGatewayRouteGatewayRouteSpecGrpcRoute :: Maybe AppMeshGatewayRouteGrpcGatewayRoute
  , _appMeshGatewayRouteGatewayRouteSpecHttp2Route :: Maybe AppMeshGatewayRouteHttpGatewayRoute
  , _appMeshGatewayRouteGatewayRouteSpecHttpRoute :: Maybe AppMeshGatewayRouteHttpGatewayRoute
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGatewayRouteSpec where
  toJSON AppMeshGatewayRouteGatewayRouteSpec{..} =
    object $
    catMaybes
    [ fmap (("GrpcRoute",) . toJSON) _appMeshGatewayRouteGatewayRouteSpecGrpcRoute
    , fmap (("Http2Route",) . toJSON) _appMeshGatewayRouteGatewayRouteSpecHttp2Route
    , fmap (("HttpRoute",) . toJSON) _appMeshGatewayRouteGatewayRouteSpecHttpRoute
    ]

-- | Constructor for 'AppMeshGatewayRouteGatewayRouteSpec' containing required
-- fields as arguments.
appMeshGatewayRouteGatewayRouteSpec
  :: AppMeshGatewayRouteGatewayRouteSpec
appMeshGatewayRouteGatewayRouteSpec  =
  AppMeshGatewayRouteGatewayRouteSpec
  { _appMeshGatewayRouteGatewayRouteSpecGrpcRoute = Nothing
  , _appMeshGatewayRouteGatewayRouteSpecHttp2Route = Nothing
  , _appMeshGatewayRouteGatewayRouteSpecHttpRoute = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutespec.html#cfn-appmesh-gatewayroute-gatewayroutespec-grpcroute
amgrgrsGrpcRoute :: Lens' AppMeshGatewayRouteGatewayRouteSpec (Maybe AppMeshGatewayRouteGrpcGatewayRoute)
amgrgrsGrpcRoute = lens _appMeshGatewayRouteGatewayRouteSpecGrpcRoute (\s a -> s { _appMeshGatewayRouteGatewayRouteSpecGrpcRoute = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutespec.html#cfn-appmesh-gatewayroute-gatewayroutespec-http2route
amgrgrsHttp2Route :: Lens' AppMeshGatewayRouteGatewayRouteSpec (Maybe AppMeshGatewayRouteHttpGatewayRoute)
amgrgrsHttp2Route = lens _appMeshGatewayRouteGatewayRouteSpecHttp2Route (\s a -> s { _appMeshGatewayRouteGatewayRouteSpecHttp2Route = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-gatewayroutespec.html#cfn-appmesh-gatewayroute-gatewayroutespec-httproute
amgrgrsHttpRoute :: Lens' AppMeshGatewayRouteGatewayRouteSpec (Maybe AppMeshGatewayRouteHttpGatewayRoute)
amgrgrsHttpRoute = lens _appMeshGatewayRouteGatewayRouteSpecHttpRoute (\s a -> s { _appMeshGatewayRouteGatewayRouteSpecHttpRoute = a })
