{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroutematch.html

module Stratosphere.ResourceProperties.AppMeshGatewayRouteGrpcGatewayRouteMatch where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshGatewayRouteGrpcGatewayRouteMatch.
-- See 'appMeshGatewayRouteGrpcGatewayRouteMatch' for a more convenient
-- constructor.
data AppMeshGatewayRouteGrpcGatewayRouteMatch =
  AppMeshGatewayRouteGrpcGatewayRouteMatch
  { _appMeshGatewayRouteGrpcGatewayRouteMatchServiceName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppMeshGatewayRouteGrpcGatewayRouteMatch where
  toJSON AppMeshGatewayRouteGrpcGatewayRouteMatch{..} =
    object $
    catMaybes
    [ fmap (("ServiceName",) . toJSON) _appMeshGatewayRouteGrpcGatewayRouteMatchServiceName
    ]

-- | Constructor for 'AppMeshGatewayRouteGrpcGatewayRouteMatch' containing
-- required fields as arguments.
appMeshGatewayRouteGrpcGatewayRouteMatch
  :: AppMeshGatewayRouteGrpcGatewayRouteMatch
appMeshGatewayRouteGrpcGatewayRouteMatch  =
  AppMeshGatewayRouteGrpcGatewayRouteMatch
  { _appMeshGatewayRouteGrpcGatewayRouteMatchServiceName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-gatewayroute-grpcgatewayroutematch.html#cfn-appmesh-gatewayroute-grpcgatewayroutematch-servicename
amgrggrmServiceName :: Lens' AppMeshGatewayRouteGrpcGatewayRouteMatch (Maybe (Val Text))
amgrggrmServiceName = lens _appMeshGatewayRouteGrpcGatewayRouteMatchServiceName (\s a -> s { _appMeshGatewayRouteGrpcGatewayRouteMatchServiceName = a })
