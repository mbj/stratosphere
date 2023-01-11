
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeBackend where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeVirtualServiceBackend

-- | Full data type definition for AppMeshVirtualNodeBackend. See
-- 'appMeshVirtualNodeBackend' for a more convenient constructor.
data AppMeshVirtualNodeBackend =
  AppMeshVirtualNodeBackend
  { _appMeshVirtualNodeBackendVirtualService :: Maybe AppMeshVirtualNodeVirtualServiceBackend
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeBackend where
  toJSON AppMeshVirtualNodeBackend{..} =
    object $
    catMaybes
    [ fmap (("VirtualService",) . toJSON) _appMeshVirtualNodeBackendVirtualService
    ]

-- | Constructor for 'AppMeshVirtualNodeBackend' containing required fields as
-- arguments.
appMeshVirtualNodeBackend
  :: AppMeshVirtualNodeBackend
appMeshVirtualNodeBackend  =
  AppMeshVirtualNodeBackend
  { _appMeshVirtualNodeBackendVirtualService = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-backend.html#cfn-appmesh-virtualnode-backend-virtualservice
amvnbVirtualService :: Lens' AppMeshVirtualNodeBackend (Maybe AppMeshVirtualNodeVirtualServiceBackend)
amvnbVirtualService = lens _appMeshVirtualNodeBackendVirtualService (\s a -> s { _appMeshVirtualNodeBackendVirtualService = a })
