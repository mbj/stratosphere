{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html

module Stratosphere.Resources.AppMeshMesh where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshMeshMeshSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshMesh. See 'appMeshMesh' for a more
-- convenient constructor.
data AppMeshMesh =
  AppMeshMesh
  { _appMeshMeshMeshName :: Val Text
  , _appMeshMeshSpec :: Maybe AppMeshMeshMeshSpec
  , _appMeshMeshTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshMesh where
  toResourceProperties AppMeshMesh{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::Mesh"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshMeshMeshName
        , fmap (("Spec",) . toJSON) _appMeshMeshSpec
        , fmap (("Tags",) . toJSON) _appMeshMeshTags
        ]
    }

-- | Constructor for 'AppMeshMesh' containing required fields as arguments.
appMeshMesh
  :: Val Text -- ^ 'ammMeshName'
  -> AppMeshMesh
appMeshMesh meshNamearg =
  AppMeshMesh
  { _appMeshMeshMeshName = meshNamearg
  , _appMeshMeshSpec = Nothing
  , _appMeshMeshTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-meshname
ammMeshName :: Lens' AppMeshMesh (Val Text)
ammMeshName = lens _appMeshMeshMeshName (\s a -> s { _appMeshMeshMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-spec
ammSpec :: Lens' AppMeshMesh (Maybe AppMeshMeshMeshSpec)
ammSpec = lens _appMeshMeshSpec (\s a -> s { _appMeshMeshSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-mesh.html#cfn-appmesh-mesh-tags
ammTags :: Lens' AppMeshMesh (Maybe [Tag])
ammTags = lens _appMeshMeshTags (\s a -> s { _appMeshMeshTags = a })
