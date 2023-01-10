
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaybackenddefaults.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayBackendDefaults where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayClientPolicy

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayBackendDefaults. See
-- 'appMeshVirtualGatewayVirtualGatewayBackendDefaults' for a more
-- convenient constructor.
data AppMeshVirtualGatewayVirtualGatewayBackendDefaults =
  AppMeshVirtualGatewayVirtualGatewayBackendDefaults
  { _appMeshVirtualGatewayVirtualGatewayBackendDefaultsClientPolicy :: Maybe AppMeshVirtualGatewayVirtualGatewayClientPolicy
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayBackendDefaults where
  toJSON AppMeshVirtualGatewayVirtualGatewayBackendDefaults{..} =
    object $
    catMaybes
    [ fmap (("ClientPolicy",) . toJSON) _appMeshVirtualGatewayVirtualGatewayBackendDefaultsClientPolicy
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayBackendDefaults'
-- containing required fields as arguments.
appMeshVirtualGatewayVirtualGatewayBackendDefaults
  :: AppMeshVirtualGatewayVirtualGatewayBackendDefaults
appMeshVirtualGatewayVirtualGatewayBackendDefaults  =
  AppMeshVirtualGatewayVirtualGatewayBackendDefaults
  { _appMeshVirtualGatewayVirtualGatewayBackendDefaultsClientPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaybackenddefaults.html#cfn-appmesh-virtualgateway-virtualgatewaybackenddefaults-clientpolicy
amvgvgbdClientPolicy :: Lens' AppMeshVirtualGatewayVirtualGatewayBackendDefaults (Maybe AppMeshVirtualGatewayVirtualGatewayClientPolicy)
amvgvgbdClientPolicy = lens _appMeshVirtualGatewayVirtualGatewayBackendDefaultsClientPolicy (\s a -> s { _appMeshVirtualGatewayVirtualGatewayBackendDefaultsClientPolicy = a })
