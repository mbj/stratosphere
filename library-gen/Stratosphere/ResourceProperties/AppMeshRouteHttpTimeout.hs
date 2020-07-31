{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httptimeout.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpTimeout where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteDuration

-- | Full data type definition for AppMeshRouteHttpTimeout. See
-- 'appMeshRouteHttpTimeout' for a more convenient constructor.
data AppMeshRouteHttpTimeout =
  AppMeshRouteHttpTimeout
  { _appMeshRouteHttpTimeoutIdle :: Maybe AppMeshRouteDuration
  , _appMeshRouteHttpTimeoutPerRequest :: Maybe AppMeshRouteDuration
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpTimeout where
  toJSON AppMeshRouteHttpTimeout{..} =
    object $
    catMaybes
    [ fmap (("Idle",) . toJSON) _appMeshRouteHttpTimeoutIdle
    , fmap (("PerRequest",) . toJSON) _appMeshRouteHttpTimeoutPerRequest
    ]

-- | Constructor for 'AppMeshRouteHttpTimeout' containing required fields as
-- arguments.
appMeshRouteHttpTimeout
  :: AppMeshRouteHttpTimeout
appMeshRouteHttpTimeout  =
  AppMeshRouteHttpTimeout
  { _appMeshRouteHttpTimeoutIdle = Nothing
  , _appMeshRouteHttpTimeoutPerRequest = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httptimeout.html#cfn-appmesh-route-httptimeout-idle
amrhtIdle :: Lens' AppMeshRouteHttpTimeout (Maybe AppMeshRouteDuration)
amrhtIdle = lens _appMeshRouteHttpTimeoutIdle (\s a -> s { _appMeshRouteHttpTimeoutIdle = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httptimeout.html#cfn-appmesh-route-httptimeout-perrequest
amrhtPerRequest :: Lens' AppMeshRouteHttpTimeout (Maybe AppMeshRouteDuration)
amrhtPerRequest = lens _appMeshRouteHttpTimeoutPerRequest (\s a -> s { _appMeshRouteHttpTimeoutPerRequest = a })
