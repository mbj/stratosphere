
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backenddefaults.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeBackendDefaults where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeClientPolicy

-- | Full data type definition for AppMeshVirtualNodeBackendDefaults. See
-- 'appMeshVirtualNodeBackendDefaults' for a more convenient constructor.
data AppMeshVirtualNodeBackendDefaults =
  AppMeshVirtualNodeBackendDefaults
  { _appMeshVirtualNodeBackendDefaultsClientPolicy :: Maybe AppMeshVirtualNodeClientPolicy
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeBackendDefaults where
  toJSON AppMeshVirtualNodeBackendDefaults{..} =
    object $
    catMaybes
    [ fmap (("ClientPolicy",) . toJSON) _appMeshVirtualNodeBackendDefaultsClientPolicy
    ]

-- | Constructor for 'AppMeshVirtualNodeBackendDefaults' containing required
-- fields as arguments.
appMeshVirtualNodeBackendDefaults
  :: AppMeshVirtualNodeBackendDefaults
appMeshVirtualNodeBackendDefaults  =
  AppMeshVirtualNodeBackendDefaults
  { _appMeshVirtualNodeBackendDefaultsClientPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backenddefaults.html#cfn-appmesh-virtualnode-backenddefaults-clientpolicy
amvnbdClientPolicy :: Lens' AppMeshVirtualNodeBackendDefaults (Maybe AppMeshVirtualNodeClientPolicy)
amvnbdClientPolicy = lens _appMeshVirtualNodeBackendDefaultsClientPolicy (\s a -> s { _appMeshVirtualNodeBackendDefaultsClientPolicy = a })
