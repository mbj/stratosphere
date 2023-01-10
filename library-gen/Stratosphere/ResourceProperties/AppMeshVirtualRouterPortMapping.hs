
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html

module Stratosphere.ResourceProperties.AppMeshVirtualRouterPortMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshVirtualRouterPortMapping. See
-- 'appMeshVirtualRouterPortMapping' for a more convenient constructor.
data AppMeshVirtualRouterPortMapping =
  AppMeshVirtualRouterPortMapping
  { _appMeshVirtualRouterPortMappingPort :: Val Integer
  , _appMeshVirtualRouterPortMappingProtocol :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualRouterPortMapping where
  toJSON AppMeshVirtualRouterPortMapping{..} =
    object $
    catMaybes
    [ (Just . ("Port",) . toJSON) _appMeshVirtualRouterPortMappingPort
    , (Just . ("Protocol",) . toJSON) _appMeshVirtualRouterPortMappingProtocol
    ]

-- | Constructor for 'AppMeshVirtualRouterPortMapping' containing required
-- fields as arguments.
appMeshVirtualRouterPortMapping
  :: Val Integer -- ^ 'amvrpmPort'
  -> Val Text -- ^ 'amvrpmProtocol'
  -> AppMeshVirtualRouterPortMapping
appMeshVirtualRouterPortMapping portarg protocolarg =
  AppMeshVirtualRouterPortMapping
  { _appMeshVirtualRouterPortMappingPort = portarg
  , _appMeshVirtualRouterPortMappingProtocol = protocolarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html#cfn-appmesh-virtualrouter-portmapping-port
amvrpmPort :: Lens' AppMeshVirtualRouterPortMapping (Val Integer)
amvrpmPort = lens _appMeshVirtualRouterPortMappingPort (\s a -> s { _appMeshVirtualRouterPortMappingPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-portmapping.html#cfn-appmesh-virtualrouter-portmapping-protocol
amvrpmProtocol :: Lens' AppMeshVirtualRouterPortMapping (Val Text)
amvrpmProtocol = lens _appMeshVirtualRouterPortMappingProtocol (\s a -> s { _appMeshVirtualRouterPortMappingProtocol = a })
