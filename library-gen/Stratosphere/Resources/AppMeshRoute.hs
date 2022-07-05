{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html

module Stratosphere.Resources.AppMeshRoute where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteRouteSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshRoute. See 'appMeshRoute' for a more
-- convenient constructor.
data AppMeshRoute =
  AppMeshRoute
  { _appMeshRouteMeshName :: Val Text
  , _appMeshRouteMeshOwner :: Maybe (Val Text)
  , _appMeshRouteRouteName :: Val Text
  , _appMeshRouteSpec :: AppMeshRouteRouteSpec
  , _appMeshRouteTags :: Maybe [Tag]
  , _appMeshRouteVirtualRouterName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshRoute where
  toResourceProperties AppMeshRoute{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::Route"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshRouteMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshRouteMeshOwner
        , (Just . ("RouteName",) . toJSON) _appMeshRouteRouteName
        , (Just . ("Spec",) . toJSON) _appMeshRouteSpec
        , fmap (("Tags",) . toJSON) _appMeshRouteTags
        , (Just . ("VirtualRouterName",) . toJSON) _appMeshRouteVirtualRouterName
        ]
    }

-- | Constructor for 'AppMeshRoute' containing required fields as arguments.
appMeshRoute
  :: Val Text -- ^ 'amrMeshName'
  -> Val Text -- ^ 'amrRouteName'
  -> AppMeshRouteRouteSpec -- ^ 'amrSpec'
  -> Val Text -- ^ 'amrVirtualRouterName'
  -> AppMeshRoute
appMeshRoute meshNamearg routeNamearg specarg virtualRouterNamearg =
  AppMeshRoute
  { _appMeshRouteMeshName = meshNamearg
  , _appMeshRouteMeshOwner = Nothing
  , _appMeshRouteRouteName = routeNamearg
  , _appMeshRouteSpec = specarg
  , _appMeshRouteTags = Nothing
  , _appMeshRouteVirtualRouterName = virtualRouterNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-meshname
amrMeshName :: Lens' AppMeshRoute (Val Text)
amrMeshName = lens _appMeshRouteMeshName (\s a -> s { _appMeshRouteMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-meshowner
amrMeshOwner :: Lens' AppMeshRoute (Maybe (Val Text))
amrMeshOwner = lens _appMeshRouteMeshOwner (\s a -> s { _appMeshRouteMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-routename
amrRouteName :: Lens' AppMeshRoute (Val Text)
amrRouteName = lens _appMeshRouteRouteName (\s a -> s { _appMeshRouteRouteName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-spec
amrSpec :: Lens' AppMeshRoute AppMeshRouteRouteSpec
amrSpec = lens _appMeshRouteSpec (\s a -> s { _appMeshRouteSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-tags
amrTags :: Lens' AppMeshRoute (Maybe [Tag])
amrTags = lens _appMeshRouteTags (\s a -> s { _appMeshRouteTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-route.html#cfn-appmesh-route-virtualroutername
amrVirtualRouterName :: Lens' AppMeshRoute (Val Text)
amrVirtualRouterName = lens _appMeshRouteVirtualRouterName (\s a -> s { _appMeshRouteVirtualRouterName = a })
