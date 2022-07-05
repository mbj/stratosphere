{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html

module Stratosphere.Resources.AppMeshVirtualService where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualServiceSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshVirtualService. See
-- 'appMeshVirtualService' for a more convenient constructor.
data AppMeshVirtualService =
  AppMeshVirtualService
  { _appMeshVirtualServiceMeshName :: Val Text
  , _appMeshVirtualServiceMeshOwner :: Maybe (Val Text)
  , _appMeshVirtualServiceSpec :: AppMeshVirtualServiceVirtualServiceSpec
  , _appMeshVirtualServiceTags :: Maybe [Tag]
  , _appMeshVirtualServiceVirtualServiceName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshVirtualService where
  toResourceProperties AppMeshVirtualService{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::VirtualService"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshVirtualServiceMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshVirtualServiceMeshOwner
        , (Just . ("Spec",) . toJSON) _appMeshVirtualServiceSpec
        , fmap (("Tags",) . toJSON) _appMeshVirtualServiceTags
        , (Just . ("VirtualServiceName",) . toJSON) _appMeshVirtualServiceVirtualServiceName
        ]
    }

-- | Constructor for 'AppMeshVirtualService' containing required fields as
-- arguments.
appMeshVirtualService
  :: Val Text -- ^ 'amvsMeshName'
  -> AppMeshVirtualServiceVirtualServiceSpec -- ^ 'amvsSpec'
  -> Val Text -- ^ 'amvsVirtualServiceName'
  -> AppMeshVirtualService
appMeshVirtualService meshNamearg specarg virtualServiceNamearg =
  AppMeshVirtualService
  { _appMeshVirtualServiceMeshName = meshNamearg
  , _appMeshVirtualServiceMeshOwner = Nothing
  , _appMeshVirtualServiceSpec = specarg
  , _appMeshVirtualServiceTags = Nothing
  , _appMeshVirtualServiceVirtualServiceName = virtualServiceNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-meshname
amvsMeshName :: Lens' AppMeshVirtualService (Val Text)
amvsMeshName = lens _appMeshVirtualServiceMeshName (\s a -> s { _appMeshVirtualServiceMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-meshowner
amvsMeshOwner :: Lens' AppMeshVirtualService (Maybe (Val Text))
amvsMeshOwner = lens _appMeshVirtualServiceMeshOwner (\s a -> s { _appMeshVirtualServiceMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-spec
amvsSpec :: Lens' AppMeshVirtualService AppMeshVirtualServiceVirtualServiceSpec
amvsSpec = lens _appMeshVirtualServiceSpec (\s a -> s { _appMeshVirtualServiceSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-tags
amvsTags :: Lens' AppMeshVirtualService (Maybe [Tag])
amvsTags = lens _appMeshVirtualServiceTags (\s a -> s { _appMeshVirtualServiceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualservice.html#cfn-appmesh-virtualservice-virtualservicename
amvsVirtualServiceName :: Lens' AppMeshVirtualService (Val Text)
amvsVirtualServiceName = lens _appMeshVirtualServiceVirtualServiceName (\s a -> s { _appMeshVirtualServiceVirtualServiceName = a })
