{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html

module Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualServiceProvider where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualNodeServiceProvider
import Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualRouterServiceProvider

-- | Full data type definition for
-- AppMeshVirtualServiceVirtualServiceProvider. See
-- 'appMeshVirtualServiceVirtualServiceProvider' for a more convenient
-- constructor.
data AppMeshVirtualServiceVirtualServiceProvider =
  AppMeshVirtualServiceVirtualServiceProvider
  { _appMeshVirtualServiceVirtualServiceProviderVirtualNode :: Maybe AppMeshVirtualServiceVirtualNodeServiceProvider
  , _appMeshVirtualServiceVirtualServiceProviderVirtualRouter :: Maybe AppMeshVirtualServiceVirtualRouterServiceProvider
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualServiceVirtualServiceProvider where
  toJSON AppMeshVirtualServiceVirtualServiceProvider{..} =
    object $
    catMaybes
    [ fmap (("VirtualNode",) . toJSON) _appMeshVirtualServiceVirtualServiceProviderVirtualNode
    , fmap (("VirtualRouter",) . toJSON) _appMeshVirtualServiceVirtualServiceProviderVirtualRouter
    ]

-- | Constructor for 'AppMeshVirtualServiceVirtualServiceProvider' containing
-- required fields as arguments.
appMeshVirtualServiceVirtualServiceProvider
  :: AppMeshVirtualServiceVirtualServiceProvider
appMeshVirtualServiceVirtualServiceProvider  =
  AppMeshVirtualServiceVirtualServiceProvider
  { _appMeshVirtualServiceVirtualServiceProviderVirtualNode = Nothing
  , _appMeshVirtualServiceVirtualServiceProviderVirtualRouter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualnode
amvsvspVirtualNode :: Lens' AppMeshVirtualServiceVirtualServiceProvider (Maybe AppMeshVirtualServiceVirtualNodeServiceProvider)
amvsvspVirtualNode = lens _appMeshVirtualServiceVirtualServiceProviderVirtualNode (\s a -> s { _appMeshVirtualServiceVirtualServiceProviderVirtualNode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualserviceprovider.html#cfn-appmesh-virtualservice-virtualserviceprovider-virtualrouter
amvsvspVirtualRouter :: Lens' AppMeshVirtualServiceVirtualServiceProvider (Maybe AppMeshVirtualServiceVirtualRouterServiceProvider)
amvsvspVirtualRouter = lens _appMeshVirtualServiceVirtualServiceProviderVirtualRouter (\s a -> s { _appMeshVirtualServiceVirtualServiceProviderVirtualRouter = a })
