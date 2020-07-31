{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-grpctimeout.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeGrpcTimeout where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeDuration

-- | Full data type definition for AppMeshVirtualNodeGrpcTimeout. See
-- 'appMeshVirtualNodeGrpcTimeout' for a more convenient constructor.
data AppMeshVirtualNodeGrpcTimeout =
  AppMeshVirtualNodeGrpcTimeout
  { _appMeshVirtualNodeGrpcTimeoutIdle :: Maybe AppMeshVirtualNodeDuration
  , _appMeshVirtualNodeGrpcTimeoutPerRequest :: Maybe AppMeshVirtualNodeDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeGrpcTimeout where
  toJSON AppMeshVirtualNodeGrpcTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshVirtualNodeGrpcTimeoutIdle
    , fmap (("PerRequest",) . toJSON) _appMeshVirtualNodeGrpcTimeoutPerRequest
    ]

-- | Constructor for 'AppMeshVirtualNodeGrpcTimeout' containing required
-- fields as arguments.
appMeshVirtualNodeGrpcTimeout
  :: AppMeshVirtualNodeGrpcTimeout
appMeshVirtualNodeGrpcTimeout  =
  AppMeshVirtualNodeGrpcTimeout
  { _appMeshVirtualNodeGrpcTimeoutIdle = Nothing
  , _appMeshVirtualNodeGrpcTimeoutPerRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-grpctimeout.html#cfn-appmesh-virtualnode-grpctimeout-idle
amvngtIdle :: Lens' AppMeshVirtualNodeGrpcTimeout (Maybe AppMeshVirtualNodeDuration)
amvngtIdle = lens _appMeshVirtualNodeGrpcTimeoutIdle (\s a -> s { _appMeshVirtualNodeGrpcTimeoutIdle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-grpctimeout.html#cfn-appmesh-virtualnode-grpctimeout-perrequest
amvngtPerRequest :: Lens' AppMeshVirtualNodeGrpcTimeout (Maybe AppMeshVirtualNodeDuration)
amvngtPerRequest = lens _appMeshVirtualNodeGrpcTimeoutPerRequest (\s a -> s { _appMeshVirtualNodeGrpcTimeoutPerRequest = a })
