
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeHttpTimeout where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeDuration

-- | Full data type definition for AppMeshVirtualNodeHttpTimeout. See
-- 'appMeshVirtualNodeHttpTimeout' for a more convenient constructor.
data AppMeshVirtualNodeHttpTimeout =
  AppMeshVirtualNodeHttpTimeout
  { _appMeshVirtualNodeHttpTimeoutIdle :: Maybe AppMeshVirtualNodeDuration
  , _appMeshVirtualNodeHttpTimeoutPerRequest :: Maybe AppMeshVirtualNodeDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeHttpTimeout where
  toJSON AppMeshVirtualNodeHttpTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshVirtualNodeHttpTimeoutIdle
    , fmap (("PerRequest",) . toJSON) _appMeshVirtualNodeHttpTimeoutPerRequest
    ]

-- | Constructor for 'AppMeshVirtualNodeHttpTimeout' containing required
-- fields as arguments.
appMeshVirtualNodeHttpTimeout
  :: AppMeshVirtualNodeHttpTimeout
appMeshVirtualNodeHttpTimeout  =
  AppMeshVirtualNodeHttpTimeout
  { _appMeshVirtualNodeHttpTimeoutIdle = Nothing
  , _appMeshVirtualNodeHttpTimeoutPerRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html#cfn-appmesh-virtualnode-httptimeout-idle
amvnhtIdle :: Lens' AppMeshVirtualNodeHttpTimeout (Maybe AppMeshVirtualNodeDuration)
amvnhtIdle = lens _appMeshVirtualNodeHttpTimeoutIdle (\s a -> s { _appMeshVirtualNodeHttpTimeoutIdle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-httptimeout.html#cfn-appmesh-virtualnode-httptimeout-perrequest
amvnhtPerRequest :: Lens' AppMeshVirtualNodeHttpTimeout (Maybe AppMeshVirtualNodeDuration)
amvnhtPerRequest = lens _appMeshVirtualNodeHttpTimeoutPerRequest (\s a -> s { _appMeshVirtualNodeHttpTimeoutPerRequest = a })
