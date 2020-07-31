{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html

module Stratosphere.ResourceProperties.AppMeshVirtualNodeListener where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualNodeHealthCheck
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTimeout
import Stratosphere.ResourceProperties.AppMeshVirtualNodeListenerTls
import Stratosphere.ResourceProperties.AppMeshVirtualNodePortMapping

-- | Full data type definition for AppMeshVirtualNodeListener. See
-- 'appMeshVirtualNodeListener' for a more convenient constructor.
data AppMeshVirtualNodeListener =
  AppMeshVirtualNodeListener
  { _appMeshVirtualNodeListenerHealthCheck :: Maybe AppMeshVirtualNodeHealthCheck
  , _appMeshVirtualNodeListenerPortMapping :: AppMeshVirtualNodePortMapping
  , _appMeshVirtualNodeListenerTLS :: Maybe AppMeshVirtualNodeListenerTls
  , _appMeshVirtualNodeListenerTimeout :: Maybe AppMeshVirtualNodeListenerTimeout
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualNodeListener where
  toJSON AppMeshVirtualNodeListener{..} =
    object $
    catMaybes
    [ fmap (("HealthCheck",) . toJSON) _appMeshVirtualNodeListenerHealthCheck
    , (Just . ("PortMapping",) . toJSON) _appMeshVirtualNodeListenerPortMapping
    , fmap (("TLS",) . toJSON) _appMeshVirtualNodeListenerTLS
    , fmap (("Timeout",) . toJSON) _appMeshVirtualNodeListenerTimeout
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
  , _appMeshVirtualNodeListenerTLS = Nothing
  , _appMeshVirtualNodeListenerTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-healthcheck
amvnlHealthCheck :: Lens' AppMeshVirtualNodeListener (Maybe AppMeshVirtualNodeHealthCheck)
amvnlHealthCheck = lens _appMeshVirtualNodeListenerHealthCheck (\s a -> s { _appMeshVirtualNodeListenerHealthCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-portmapping
amvnlPortMapping :: Lens' AppMeshVirtualNodeListener AppMeshVirtualNodePortMapping
amvnlPortMapping = lens _appMeshVirtualNodeListenerPortMapping (\s a -> s { _appMeshVirtualNodeListenerPortMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-tls
amvnlTLS :: Lens' AppMeshVirtualNodeListener (Maybe AppMeshVirtualNodeListenerTls)
amvnlTLS = lens _appMeshVirtualNodeListenerTLS (\s a -> s { _appMeshVirtualNodeListenerTLS = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-listener.html#cfn-appmesh-virtualnode-listener-timeout
amvnlTimeout :: Lens' AppMeshVirtualNodeListener (Maybe AppMeshVirtualNodeListenerTimeout)
amvnlTimeout = lens _appMeshVirtualNodeListenerTimeout (\s a -> s { _appMeshVirtualNodeListenerTimeout = a })
