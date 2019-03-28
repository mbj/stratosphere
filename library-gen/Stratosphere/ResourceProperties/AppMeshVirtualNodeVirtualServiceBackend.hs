{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeVirtualServiceBackend where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodeVirtualServiceBackend.
-- See 'appMeshVirtualNodeVirtualServiceBackend' for a more convenient
-- constructor.
data AppMeshVirtualNodeVirtualServiceBackend =
  AppMeshVirtualNodeVirtualServiceBackend
  { _appMeshVirtualNodeVirtualServiceBackendVirtualServiceName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeVirtualServiceBackend where
  toJSON AppMeshVirtualNodeVirtualServiceBackend{..} =
    object $
    catMaybes
    [ (Just . ("VirtualServiceName",) . toJSON) _appMeshVirtualNodeVirtualServiceBackendVirtualServiceName
    ]

-- | Constructor for 'AppMeshVirtualNodeVirtualServiceBackend' containing
-- required fields as arguments.
appMeshVirtualNodeVirtualServiceBackend
  :: Val Text -- ^ 'amvnvsbVirtualServiceName'
  -> AppMeshVirtualNodeVirtualServiceBackend
appMeshVirtualNodeVirtualServiceBackend virtualServiceNamearg =
  AppMeshVirtualNodeVirtualServiceBackend
  { _appMeshVirtualNodeVirtualServiceBackendVirtualServiceName = virtualServiceNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualservicebackend.html#cfn-appmesh-virtualnode-virtualservicebackend-virtualservicename
amvnvsbVirtualServiceName :: Lens' AppMeshVirtualNodeVirtualServiceBackend (Val Text)
amvnvsbVirtualServiceName = lens _appMeshVirtualNodeVirtualServiceBackendVirtualServiceName (\s a -> s { _appMeshVirtualNodeVirtualServiceBackendVirtualServiceName = a })
