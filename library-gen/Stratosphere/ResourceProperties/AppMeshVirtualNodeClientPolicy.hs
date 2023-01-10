
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeClientPolicy where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeClientPolicyTls

-- | Full data type definition for AppMeshVirtualNodeClientPolicy. See
-- 'appMeshVirtualNodeClientPolicy' for a more convenient constructor.
data AppMeshVirtualNodeClientPolicy =
  AppMeshVirtualNodeClientPolicy
  { _appMeshVirtualNodeClientPolicyTLS :: Maybe AppMeshVirtualNodeClientPolicyTls
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeClientPolicy where
  toJSON AppMeshVirtualNodeClientPolicy{..} =
    object $
    catMaybes
    [ fmap (("TLS",) . toJSON) _appMeshVirtualNodeClientPolicyTLS
    ]

-- | Constructor for 'AppMeshVirtualNodeClientPolicy' containing required
-- fields as arguments.
appMeshVirtualNodeClientPolicy
  :: AppMeshVirtualNodeClientPolicy
appMeshVirtualNodeClientPolicy  =
  AppMeshVirtualNodeClientPolicy
  { _appMeshVirtualNodeClientPolicyTLS = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-clientpolicy.html#cfn-appmesh-virtualnode-clientpolicy-tls
amvncpTLS :: Lens' AppMeshVirtualNodeClientPolicy (Maybe AppMeshVirtualNodeClientPolicyTls)
amvncpTLS = lens _appMeshVirtualNodeClientPolicyTLS (\s a -> s { _appMeshVirtualNodeClientPolicyTLS = a })
