{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcptimeout.html

module Stratosphere.ResourceProperties.AppMeshRouteTcpTimeout where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteDuration

-- | Full data type definition for AppMeshRouteTcpTimeout. See
-- 'appMeshRouteTcpTimeout' for a more convenient constructor.
data AppMeshRouteTcpTimeout =
  AppMeshRouteTcpTimeout
  { _appMeshRouteTcpTimeoutIdle :: Maybe AppMeshRouteDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteTcpTimeout where
  toJSON AppMeshRouteTcpTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshRouteTcpTimeoutIdle
    ]

-- | Constructor for 'AppMeshRouteTcpTimeout' containing required fields as
-- arguments.
appMeshRouteTcpTimeout
  :: AppMeshRouteTcpTimeout
appMeshRouteTcpTimeout  =
  AppMeshRouteTcpTimeout
  { _appMeshRouteTcpTimeoutIdle = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcptimeout.html#cfn-appmesh-route-tcptimeout-idle
amrttIdle :: Lens' AppMeshRouteTcpTimeout (Maybe AppMeshRouteDuration)
amrttIdle = lens _appMeshRouteTcpTimeoutIdle (\s a -> s { _appMeshRouteTcpTimeoutIdle = a })
