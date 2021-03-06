{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListener where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeHealthCheck
import Stratosphere.ResourceProperties.AppMeshVirtualNodePortMapping

-- | Full data type definition for AppMeshVirtualNodeListener. See
-- 'appMeshVirtualNodeListener' for a more convenient constructor.
data AppMeshVirtualNodeListener =
  AppMeshVirtualNodeListener
  { _appMeshVirtualNodeListenerHealthCheck :: Maybe AppMeshVirtualNodeHealthCheck
  , _appMeshVirtualNodeListenerPortMapping :: AppMeshVirtualNodePortMapping
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListener where
  toJSON AppMeshVirtualNodeListener{..} =
    object $
    catMaybes
    [ fmap (("HealthCheck",) . toJSON) _appMeshVirtualNodeListenerHealthCheck
    , (Just . ("PortMapping",) . toJSON) _appMeshVirtualNodeListenerPortMapping
    ]

-- | Constructor for 'AppMeshVirtualNodeListener' containing required fields
-- as arguments.
appMeshVirtualNodeListener
  :: AppMeshVirtualNodePortMapping -- ^ 'amvnlPortMapping'
  -> AppMeshVirtualNodeListener
appMeshVirtualNodeListener portMappingarg =
  AppMeshVirtualNodeListener
  { _appMeshVirtualNodeListenerHealthCheck = Nothing
  , _appMeshVirtualNodeListenerPortMapping = portMappingarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
amvnlHealthCheck :: Lens' AppMeshVirtualNodeListener (Maybe AppMeshVirtualNodeHealthCheck)
amvnlHealthCheck = lens _appMeshVirtualNodeListenerHealthCheck (\s a -> s { _appMeshVirtualNodeListenerHealthCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
amvnlPortMapping :: Lens' AppMeshVirtualNodeListener AppMeshVirtualNodePortMapping
amvnlPortMapping = lens _appMeshVirtualNodeListenerPortMapping (\s a -> s { _appMeshVirtualNodeListenerPortMapping = a })
