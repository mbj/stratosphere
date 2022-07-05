{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html

module Stratosphere.Resources.AppMeshGatewayRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshGatewayRouteGatewayRouteSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshGatewayRoute. See
-- 'appMeshGatewayRoute' for a more convenient constructor.
data AppMeshGatewayRoute =
  AppMeshGatewayRoute
  { _appMeshGatewayRouteGatewayRouteName :: Val Text
  , _appMeshGatewayRouteMeshName :: Val Text
  , _appMeshGatewayRouteMeshOwner :: Maybe (Val Text)
  , _appMeshGatewayRouteSpec :: AppMeshGatewayRouteGatewayRouteSpec
  , _appMeshGatewayRouteTags :: Maybe [Tag]
  , _appMeshGatewayRouteVirtualGatewayName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshGatewayRoute where
  toResourceProperties AppMeshGatewayRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::GatewayRoute"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("GatewayRouteName",) . toJSON) _appMeshGatewayRouteGatewayRouteName
        , (Just . ("MeshName",) . toJSON) _appMeshGatewayRouteMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshGatewayRouteMeshOwner
        , (Just . ("Spec",) . toJSON) _appMeshGatewayRouteSpec
        , fmap (("Tags",) . toJSON) _appMeshGatewayRouteTags
        , (Just . ("VirtualGatewayName",) . toJSON) _appMeshGatewayRouteVirtualGatewayName
        ]
    }

-- | Constructor for 'AppMeshGatewayRoute' containing required fields as
-- arguments.
appMeshGatewayRoute
  :: Val Text -- ^ 'amgrGatewayRouteName'
  -> Val Text -- ^ 'amgrMeshName'
  -> AppMeshGatewayRouteGatewayRouteSpec -- ^ 'amgrSpec'
  -> Val Text -- ^ 'amgrVirtualGatewayName'
  -> AppMeshGatewayRoute
appMeshGatewayRoute gatewayRouteNamearg meshNamearg specarg virtualGatewayNamearg =
  AppMeshGatewayRoute
  { _appMeshGatewayRouteGatewayRouteName = gatewayRouteNamearg
  , _appMeshGatewayRouteMeshName = meshNamearg
  , _appMeshGatewayRouteMeshOwner = Nothing
  , _appMeshGatewayRouteSpec = specarg
  , _appMeshGatewayRouteTags = Nothing
  , _appMeshGatewayRouteVirtualGatewayName = virtualGatewayNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-gatewayroutename
amgrGatewayRouteName :: Lens' AppMeshGatewayRoute (Val Text)
amgrGatewayRouteName = lens _appMeshGatewayRouteGatewayRouteName (\s a -> s { _appMeshGatewayRouteGatewayRouteName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-meshname
amgrMeshName :: Lens' AppMeshGatewayRoute (Val Text)
amgrMeshName = lens _appMeshGatewayRouteMeshName (\s a -> s { _appMeshGatewayRouteMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-meshowner
amgrMeshOwner :: Lens' AppMeshGatewayRoute (Maybe (Val Text))
amgrMeshOwner = lens _appMeshGatewayRouteMeshOwner (\s a -> s { _appMeshGatewayRouteMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-spec
amgrSpec :: Lens' AppMeshGatewayRoute AppMeshGatewayRouteGatewayRouteSpec
amgrSpec = lens _appMeshGatewayRouteSpec (\s a -> s { _appMeshGatewayRouteSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-tags
amgrTags :: Lens' AppMeshGatewayRoute (Maybe [Tag])
amgrTags = lens _appMeshGatewayRouteTags (\s a -> s { _appMeshGatewayRouteTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-gatewayroute.html#cfn-appmesh-gatewayroute-virtualgatewayname
amgrVirtualGatewayName :: Lens' AppMeshGatewayRoute (Val Text)
amgrVirtualGatewayName = lens _appMeshGatewayRouteVirtualGatewayName (\s a -> s { _appMeshGatewayRouteVirtualGatewayName = a })
