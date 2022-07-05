{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html

module Stratosphere.Resources.AppMeshVirtualNode where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeVirtualNodeSpec
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AppMeshVirtualNode. See
-- 'appMeshVirtualNode' for a more convenient constructor.
data AppMeshVirtualNode =
  AppMeshVirtualNode
  { _appMeshVirtualNodeMeshName :: Val Text
  , _appMeshVirtualNodeMeshOwner :: Maybe (Val Text)
  , _appMeshVirtualNodeSpec :: AppMeshVirtualNodeVirtualNodeSpec
  , _appMeshVirtualNodeTags :: Maybe [Tag]
  , _appMeshVirtualNodeVirtualNodeName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties AppMeshVirtualNode where
  toResourceProperties AppMeshVirtualNode{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AppMesh::VirtualNode"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MeshName",) . toJSON) _appMeshVirtualNodeMeshName
        , fmap (("MeshOwner",) . toJSON) _appMeshVirtualNodeMeshOwner
        , (Just . ("Spec",) . toJSON) _appMeshVirtualNodeSpec
        , fmap (("Tags",) . toJSON) _appMeshVirtualNodeTags
        , (Just . ("VirtualNodeName",) . toJSON) _appMeshVirtualNodeVirtualNodeName
        ]
    }

-- | Constructor for 'AppMeshVirtualNode' containing required fields as
-- arguments.
appMeshVirtualNode
  :: Val Text -- ^ 'amvnMeshName'
  -> AppMeshVirtualNodeVirtualNodeSpec -- ^ 'amvnSpec'
  -> Val Text -- ^ 'amvnVirtualNodeName'
  -> AppMeshVirtualNode
appMeshVirtualNode meshNamearg specarg virtualNodeNamearg =
  AppMeshVirtualNode
  { _appMeshVirtualNodeMeshName = meshNamearg
  , _appMeshVirtualNodeMeshOwner = Nothing
  , _appMeshVirtualNodeSpec = specarg
  , _appMeshVirtualNodeTags = Nothing
  , _appMeshVirtualNodeVirtualNodeName = virtualNodeNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-meshname
amvnMeshName :: Lens' AppMeshVirtualNode (Val Text)
amvnMeshName = lens _appMeshVirtualNodeMeshName (\s a -> s { _appMeshVirtualNodeMeshName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-meshowner
amvnMeshOwner :: Lens' AppMeshVirtualNode (Maybe (Val Text))
amvnMeshOwner = lens _appMeshVirtualNodeMeshOwner (\s a -> s { _appMeshVirtualNodeMeshOwner = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-spec
amvnSpec :: Lens' AppMeshVirtualNode AppMeshVirtualNodeVirtualNodeSpec
amvnSpec = lens _appMeshVirtualNodeSpec (\s a -> s { _appMeshVirtualNodeSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-tags
amvnTags :: Lens' AppMeshVirtualNode (Maybe [Tag])
amvnTags = lens _appMeshVirtualNodeTags (\s a -> s { _appMeshVirtualNodeTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appmesh-virtualnode.html#cfn-appmesh-virtualnode-virtualnodename
amvnVirtualNodeName :: Lens' AppMeshVirtualNode (Val Text)
amvnVirtualNodeName = lens _appMeshVirtualNodeVirtualNodeName (\s a -> s { _appMeshVirtualNodeVirtualNodeName = a })
