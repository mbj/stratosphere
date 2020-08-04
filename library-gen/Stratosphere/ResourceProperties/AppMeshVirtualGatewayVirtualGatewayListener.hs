{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListener where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListenerTls
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayPortMapping

-- | Full data type definition for
-- AppMeshVirtualGatewayVirtualGatewayListener. See
-- 'appMeshVirtualGatewayVirtualGatewayListener' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewayListener =
  AppMeshVirtualGatewayVirtualGatewayListener
  { _appMeshVirtualGatewayVirtualGatewayListenerHealthCheck :: Maybe AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy
  , _appMeshVirtualGatewayVirtualGatewayListenerPortMapping :: AppMeshVirtualGatewayVirtualGatewayPortMapping
  , _appMeshVirtualGatewayVirtualGatewayListenerTLS :: Maybe AppMeshVirtualGatewayVirtualGatewayListenerTls
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewayListener where
  toJSON AppMeshVirtualGatewayVirtualGatewayListener{..} =
    object $
    catMaybes
    [ fmap (("HealthCheck",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerHealthCheck
    , (Just . ("PortMapping",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerPortMapping
    , fmap (("TLS",) . toJSON) _appMeshVirtualGatewayVirtualGatewayListenerTLS
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewayListener' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewayListener
  :: AppMeshVirtualGatewayVirtualGatewayPortMapping -- ^ 'amvgvglPortMapping'
  -> AppMeshVirtualGatewayVirtualGatewayListener
appMeshVirtualGatewayVirtualGatewayListener portMappingarg =
  AppMeshVirtualGatewayVirtualGatewayListener
  { _appMeshVirtualGatewayVirtualGatewayListenerHealthCheck = Nothing
  , _appMeshVirtualGatewayVirtualGatewayListenerPortMapping = portMappingarg
  , _appMeshVirtualGatewayVirtualGatewayListenerTLS = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-healthcheck
amvgvglHealthCheck :: Lens' AppMeshVirtualGatewayVirtualGatewayListener (Maybe AppMeshVirtualGatewayVirtualGatewayHealthCheckPolicy)
amvgvglHealthCheck = lens _appMeshVirtualGatewayVirtualGatewayListenerHealthCheck (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerHealthCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-portmapping
amvgvglPortMapping :: Lens' AppMeshVirtualGatewayVirtualGatewayListener AppMeshVirtualGatewayVirtualGatewayPortMapping
amvgvglPortMapping = lens _appMeshVirtualGatewayVirtualGatewayListenerPortMapping (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerPortMapping = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewaylistener.html#cfn-appmesh-virtualgateway-virtualgatewaylistener-tls
amvgvglTLS :: Lens' AppMeshVirtualGatewayVirtualGatewayListener (Maybe AppMeshVirtualGatewayVirtualGatewayListenerTls)
amvgvglTLS = lens _appMeshVirtualGatewayVirtualGatewayListenerTLS (\s a -> s { _appMeshVirtualGatewayVirtualGatewayListenerTLS = a })
