{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html

module Stratosphere.Resources.AppMeshVirtualRouter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualRouterVirtualRouterSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshVirtualRouter. See
-- 'appMeshVirtualRouter' for a more convenient constructor.
data AppMeshVirtualRouter =
  AppMeshVirtualRouter
  { _appMeshVirtualRouterMeshName :: Val Text
  , _appMeshVirtualRouterMeshOwner :: Maybe (Val Text)
  , _appMeshVirtualRouterSpec :: AppMeshVirtualRouterVirtualRouterSpec
  , _appMeshVirtualRouterTags :: Maybe [Tag]
  , _appMeshVirtualRouterVirtualRouterName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshVirtualRouter where
  toResourceProperties AppMeshVirtualRouter{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::VirtualRouter"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshVirtualRouterMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshVirtualRouterMeshOwner
        , (Just . ("Spec",) . toJSON) _appMeshVirtualRouterSpec
        , fmap (("Tags",) . toJSON) _appMeshVirtualRouterTags
        , (Just . ("VirtualRouterName",) . toJSON) _appMeshVirtualRouterVirtualRouterName
        ]
    }

-- | Constructor for 'AppMeshVirtualRouter' containing required fields as
-- arguments.
appMeshVirtualRouter
  :: Val Text -- ^ 'amvrMeshName'
  -> AppMeshVirtualRouterVirtualRouterSpec -- ^ 'amvrSpec'
  -> Val Text -- ^ 'amvrVirtualRouterName'
  -> AppMeshVirtualRouter
appMeshVirtualRouter meshNamearg specarg virtualRouterNamearg =
  AppMeshVirtualRouter
  { _appMeshVirtualRouterMeshName = meshNamearg
  , _appMeshVirtualRouterMeshOwner = Nothing
  , _appMeshVirtualRouterSpec = specarg
  , _appMeshVirtualRouterTags = Nothing
  , _appMeshVirtualRouterVirtualRouterName = virtualRouterNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-meshname
amvrMeshName :: Lens' AppMeshVirtualRouter (Val Text)
amvrMeshName = lens _appMeshVirtualRouterMeshName (\s a -> s { _appMeshVirtualRouterMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-meshowner
amvrMeshOwner :: Lens' AppMeshVirtualRouter (Maybe (Val Text))
amvrMeshOwner = lens _appMeshVirtualRouterMeshOwner (\s a -> s { _appMeshVirtualRouterMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-spec
amvrSpec :: Lens' AppMeshVirtualRouter AppMeshVirtualRouterVirtualRouterSpec
amvrSpec = lens _appMeshVirtualRouterSpec (\s a -> s { _appMeshVirtualRouterSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-tags
amvrTags :: Lens' AppMeshVirtualRouter (Maybe [Tag])
amvrTags = lens _appMeshVirtualRouterTags (\s a -> s { _appMeshVirtualRouterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualrouter.html#cfn-appmesh-virtualrouter-virtualroutername
amvrVirtualRouterName :: Lens' AppMeshVirtualRouter (Val Text)
amvrVirtualRouterName = lens _appMeshVirtualRouterVirtualRouterName (\s a -> s { _appMeshVirtualRouterVirtualRouterName = a })
