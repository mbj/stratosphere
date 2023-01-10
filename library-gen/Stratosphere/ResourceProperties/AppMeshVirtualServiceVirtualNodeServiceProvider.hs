
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualnodeserviceprovider.html

module Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualNodeServiceProvider where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualServiceVirtualNodeServiceProvider. See
-- 'appMeshVirtualServiceVirtualNodeServiceProvider' for a more convenient
-- constructor.
data AppMeshVirtualServiceVirtualNodeServiceProvider =
  AppMeshVirtualServiceVirtualNodeServiceProvider
  { _appMeshVirtualServiceVirtualNodeServiceProviderVirtualNodeName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualServiceVirtualNodeServiceProvider where
  toJSON AppMeshVirtualServiceVirtualNodeServiceProvider{..} =
    object $
    catMaybes
    [ (Just . ("VirtualNodeName",) . toJSON) _appMeshVirtualServiceVirtualNodeServiceProviderVirtualNodeName
    ]

-- | Constructor for 'AppMeshVirtualServiceVirtualNodeServiceProvider'
-- containing required fields as arguments.
appMeshVirtualServiceVirtualNodeServiceProvider
  :: Val Text -- ^ 'amvsvnspVirtualNodeName'
  -> AppMeshVirtualServiceVirtualNodeServiceProvider
appMeshVirtualServiceVirtualNodeServiceProvider virtualNodeNamearg =
  AppMeshVirtualServiceVirtualNodeServiceProvider
  { _appMeshVirtualServiceVirtualNodeServiceProviderVirtualNodeName = virtualNodeNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualnodeserviceprovider.html#cfn-appmesh-virtualservice-virtualnodeserviceprovider-virtualnodename
amvsvnspVirtualNodeName :: Lens' AppMeshVirtualServiceVirtualNodeServiceProvider (Val Text)
amvsvnspVirtualNodeName = lens _appMeshVirtualServiceVirtualNodeServiceProviderVirtualNodeName (\s a -> s { _appMeshVirtualServiceVirtualNodeServiceProviderVirtualNodeName = a })
