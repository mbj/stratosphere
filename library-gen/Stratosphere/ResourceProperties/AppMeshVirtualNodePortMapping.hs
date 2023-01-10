
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodePortMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualNodePortMapping. See
-- 'appMeshVirtualNodePortMapping' for a more convenient constructor.
data AppMeshVirtualNodePortMapping =
  AppMeshVirtualNodePortMapping
  { _appMeshVirtualNodePortMappingPort :: Val Integer
  , _appMeshVirtualNodePortMappingProtocol :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodePortMapping where
  toJSON AppMeshVirtualNodePortMapping{..} =
    object $
    catMaybes
    [ (Just . ("Port",) . toJSON) _appMeshVirtualNodePortMappingPort
    , (Just . ("Protocol",) . toJSON) _appMeshVirtualNodePortMappingProtocol
    ]

-- | Constructor for 'AppMeshVirtualNodePortMapping' containing required
-- fields as arguments.
appMeshVirtualNodePortMapping
  :: Val Integer -- ^ 'amvnpmPort'
  -> Val Text -- ^ 'amvnpmProtocol'
  -> AppMeshVirtualNodePortMapping
appMeshVirtualNodePortMapping portarg protocolarg =
  AppMeshVirtualNodePortMapping
  { _appMeshVirtualNodePortMappingPort = portarg
  , _appMeshVirtualNodePortMappingProtocol = protocolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-port
amvnpmPort :: Lens' AppMeshVirtualNodePortMapping (Val Integer)
amvnpmPort = lens _appMeshVirtualNodePortMappingPort (\s a -> s { _appMeshVirtualNodePortMappingPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-portmapping.html#cfn-appmesh-virtualnode-portmapping-protocol
amvnpmProtocol :: Lens' AppMeshVirtualNodePortMapping (Val Text)
amvnpmProtocol = lens _appMeshVirtualNodePortMappingProtocol (\s a -> s { _appMeshVirtualNodePortMappingProtocol = a })
