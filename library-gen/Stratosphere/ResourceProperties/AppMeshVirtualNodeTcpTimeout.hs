{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tcptimeout.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeTcpTimeout where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeDuration

-- | Full data type definition for AppMeshVirtualNodeTcpTimeout. See
-- 'appMeshVirtualNodeTcpTimeout' for a more convenient constructor.
data AppMeshVirtualNodeTcpTimeout =
  AppMeshVirtualNodeTcpTimeout
  { _appMeshVirtualNodeTcpTimeoutIdle :: Maybe AppMeshVirtualNodeDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeTcpTimeout where
  toJSON AppMeshVirtualNodeTcpTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshVirtualNodeTcpTimeoutIdle
    ]

-- | Constructor for 'AppMeshVirtualNodeTcpTimeout' containing required fields
-- as arguments.
appMeshVirtualNodeTcpTimeout
  :: AppMeshVirtualNodeTcpTimeout
appMeshVirtualNodeTcpTimeout  =
  AppMeshVirtualNodeTcpTimeout
  { _appMeshVirtualNodeTcpTimeoutIdle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-tcptimeout.html#cfn-appmesh-virtualnode-tcptimeout-idle
amvnttIdle :: Lens' AppMeshVirtualNodeTcpTimeout (Maybe AppMeshVirtualNodeDuration)
amvnttIdle = lens _appMeshVirtualNodeTcpTimeoutIdle (\s a -> s { _appMeshVirtualNodeTcpTimeoutIdle = a })
