{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html

module Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewaySpec where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayBackendDefaults
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayListener
import Stratosphere.ResourceProperties.AppMeshVirtualGatewayVirtualGatewayLogging

-- | Full data type definition for AppMeshVirtualGatewayVirtualGatewaySpec.
-- See 'appMeshVirtualGatewayVirtualGatewaySpec' for a more convenient
-- constructor.
data AppMeshVirtualGatewayVirtualGatewaySpec =
  AppMeshVirtualGatewayVirtualGatewaySpec
  { _appMeshVirtualGatewayVirtualGatewaySpecBackendDefaults :: Maybe AppMeshVirtualGatewayVirtualGatewayBackendDefaults
  , _appMeshVirtualGatewayVirtualGatewaySpecListeners :: [AppMeshVirtualGatewayVirtualGatewayListener]
  , _appMeshVirtualGatewayVirtualGatewaySpecLogging :: Maybe AppMeshVirtualGatewayVirtualGatewayLogging
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualGatewayVirtualGatewaySpec where
  toJSON AppMeshVirtualGatewayVirtualGatewaySpec{..} =
    object $
    catMaybes
    [ fmap (("BackendDefaults",) . toJSON) _appMeshVirtualGatewayVirtualGatewaySpecBackendDefaults
    , (Just . ("Listeners",) . toJSON) _appMeshVirtualGatewayVirtualGatewaySpecListeners
    , fmap (("Logging",) . toJSON) _appMeshVirtualGatewayVirtualGatewaySpecLogging
    ]

-- | Constructor for 'AppMeshVirtualGatewayVirtualGatewaySpec' containing
-- required fields as arguments.
appMeshVirtualGatewayVirtualGatewaySpec
  :: [AppMeshVirtualGatewayVirtualGatewayListener] -- ^ 'amvgvgsListeners'
  -> AppMeshVirtualGatewayVirtualGatewaySpec
appMeshVirtualGatewayVirtualGatewaySpec listenersarg =
  AppMeshVirtualGatewayVirtualGatewaySpec
  { _appMeshVirtualGatewayVirtualGatewaySpecBackendDefaults = Nothing
  , _appMeshVirtualGatewayVirtualGatewaySpecListeners = listenersarg
  , _appMeshVirtualGatewayVirtualGatewaySpecLogging = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-backenddefaults
amvgvgsBackendDefaults :: Lens' AppMeshVirtualGatewayVirtualGatewaySpec (Maybe AppMeshVirtualGatewayVirtualGatewayBackendDefaults)
amvgvgsBackendDefaults = lens _appMeshVirtualGatewayVirtualGatewaySpecBackendDefaults (\s a -> s { _appMeshVirtualGatewayVirtualGatewaySpecBackendDefaults = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-listeners
amvgvgsListeners :: Lens' AppMeshVirtualGatewayVirtualGatewaySpec [AppMeshVirtualGatewayVirtualGatewayListener]
amvgvgsListeners = lens _appMeshVirtualGatewayVirtualGatewaySpecListeners (\s a -> s { _appMeshVirtualGatewayVirtualGatewaySpecListeners = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayspec.html#cfn-appmesh-virtualgateway-virtualgatewayspec-logging
amvgvgsLogging :: Lens' AppMeshVirtualGatewayVirtualGatewaySpec (Maybe AppMeshVirtualGatewayVirtualGatewayLogging)
amvgvgsLogging = lens _appMeshVirtualGatewayVirtualGatewaySpecLogging (\s a -> s { _appMeshVirtualGatewayVirtualGatewaySpecLogging = a })
