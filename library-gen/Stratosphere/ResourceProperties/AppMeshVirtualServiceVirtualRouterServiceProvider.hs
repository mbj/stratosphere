
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html

module Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualRouterServiceProvider where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- AppMeshVirtualServiceVirtualRouterServiceProvider. See
-- 'appMeshVirtualServiceVirtualRouterServiceProvider' for a more convenient
-- constructor.
data AppMeshVirtualServiceVirtualRouterServiceProvider =
  AppMeshVirtualServiceVirtualRouterServiceProvider
  { _appMeshVirtualServiceVirtualRouterServiceProviderVirtualRouterName :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualServiceVirtualRouterServiceProvider where
  toJSON AppMeshVirtualServiceVirtualRouterServiceProvider{..} =
    object $
    catMaybes
    [ (Just . ("VirtualRouterName",) . toJSON) _appMeshVirtualServiceVirtualRouterServiceProviderVirtualRouterName
    ]

-- | Constructor for 'AppMeshVirtualServiceVirtualRouterServiceProvider'
-- containing required fields as arguments.
appMeshVirtualServiceVirtualRouterServiceProvider
  :: Val Text -- ^ 'amvsvrspVirtualRouterName'
  -> AppMeshVirtualServiceVirtualRouterServiceProvider
appMeshVirtualServiceVirtualRouterServiceProvider virtualRouterNamearg =
  AppMeshVirtualServiceVirtualRouterServiceProvider
  { _appMeshVirtualServiceVirtualRouterServiceProviderVirtualRouterName = virtualRouterNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualrouterserviceprovider.html#cfn-appmesh-virtualservice-virtualrouterserviceprovider-virtualroutername
amvsvrspVirtualRouterName :: Lens' AppMeshVirtualServiceVirtualRouterServiceProvider (Val Text)
amvsvrspVirtualRouterName = lens _appMeshVirtualServiceVirtualRouterServiceProviderVirtualRouterName (\s a -> s { _appMeshVirtualServiceVirtualRouterServiceProviderVirtualRouterName = a })
