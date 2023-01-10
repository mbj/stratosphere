
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeVirtualNodeSpec where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeBackendDefaults
import Stratosphere.ResourceProperties.AppMeshVirtualNodeBackend
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListener
import Stratosphere.ResourceProperties.AppMeshVirtualNodeLogging
import Stratosphere.ResourceProperties.AppMeshVirtualNodeServiceDiscovery

-- | Full data type definition for AppMeshVirtualNodeVirtualNodeSpec. See
-- 'appMeshVirtualNodeVirtualNodeSpec' for a more convenient constructor.
data AppMeshVirtualNodeVirtualNodeSpec =
  AppMeshVirtualNodeVirtualNodeSpec
  { _appMeshVirtualNodeVirtualNodeSpecBackendDefaults :: Maybe AppMeshVirtualNodeBackendDefaults
  , _appMeshVirtualNodeVirtualNodeSpecBackends :: Maybe [AppMeshVirtualNodeBackend]
  , _appMeshVirtualNodeVirtualNodeSpecListeners :: Maybe [AppMeshVirtualNodeListener]
  , _appMeshVirtualNodeVirtualNodeSpecLogging :: Maybe AppMeshVirtualNodeLogging
  , _appMeshVirtualNodeVirtualNodeSpecServiceDiscovery :: Maybe AppMeshVirtualNodeServiceDiscovery
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeVirtualNodeSpec where
  toJSON AppMeshVirtualNodeVirtualNodeSpec{..} =
    object $
    catMaybes
    [ fmap (("BackendDefaults",) . toJSON) _appMeshVirtualNodeVirtualNodeSpecBackendDefaults
    , fmap (("Backends",) . toJSON) _appMeshVirtualNodeVirtualNodeSpecBackends
    , fmap (("Listeners",) . toJSON) _appMeshVirtualNodeVirtualNodeSpecListeners
    , fmap (("Logging",) . toJSON) _appMeshVirtualNodeVirtualNodeSpecLogging
    , fmap (("ServiceDiscovery",) . toJSON) _appMeshVirtualNodeVirtualNodeSpecServiceDiscovery
    ]

-- | Constructor for 'AppMeshVirtualNodeVirtualNodeSpec' containing required
-- fields as arguments.
appMeshVirtualNodeVirtualNodeSpec
  :: AppMeshVirtualNodeVirtualNodeSpec
appMeshVirtualNodeVirtualNodeSpec  =
  AppMeshVirtualNodeVirtualNodeSpec
  { _appMeshVirtualNodeVirtualNodeSpecBackendDefaults = Nothing
  , _appMeshVirtualNodeVirtualNodeSpecBackends = Nothing
  , _appMeshVirtualNodeVirtualNodeSpecListeners = Nothing
  , _appMeshVirtualNodeVirtualNodeSpecLogging = Nothing
  , _appMeshVirtualNodeVirtualNodeSpecServiceDiscovery = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backenddefaults
amvnvnsBackendDefaults :: Lens' AppMeshVirtualNodeVirtualNodeSpec (Maybe AppMeshVirtualNodeBackendDefaults)
amvnvnsBackendDefaults = lens _appMeshVirtualNodeVirtualNodeSpecBackendDefaults (\s a -> s { _appMeshVirtualNodeVirtualNodeSpecBackendDefaults = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-backends
amvnvnsBackends :: Lens' AppMeshVirtualNodeVirtualNodeSpec (Maybe [AppMeshVirtualNodeBackend])
amvnvnsBackends = lens _appMeshVirtualNodeVirtualNodeSpecBackends (\s a -> s { _appMeshVirtualNodeVirtualNodeSpecBackends = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-listeners
amvnvnsListeners :: Lens' AppMeshVirtualNodeVirtualNodeSpec (Maybe [AppMeshVirtualNodeListener])
amvnvnsListeners = lens _appMeshVirtualNodeVirtualNodeSpecListeners (\s a -> s { _appMeshVirtualNodeVirtualNodeSpecListeners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-logging
amvnvnsLogging :: Lens' AppMeshVirtualNodeVirtualNodeSpec (Maybe AppMeshVirtualNodeLogging)
amvnvnsLogging = lens _appMeshVirtualNodeVirtualNodeSpecLogging (\s a -> s { _appMeshVirtualNodeVirtualNodeSpecLogging = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-virtualnodespec.html#cfn-appmesh-virtualnode-virtualnodespec-servicediscovery
amvnvnsServiceDiscovery :: Lens' AppMeshVirtualNodeVirtualNodeSpec (Maybe AppMeshVirtualNodeServiceDiscovery)
amvnvnsServiceDiscovery = lens _appMeshVirtualNodeVirtualNodeSpecServiceDiscovery (\s a -> s { _appMeshVirtualNodeVirtualNodeSpecServiceDiscovery = a })
