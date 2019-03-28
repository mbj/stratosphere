{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html

module Stratosphere.ResourceProperties.AppMeshVirtualRouterVirtualRouterListener where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualRouterPortMapping

-- | Full data type definition for AppMeshVirtualRouterVirtualRouterListener.
-- See 'appMeshVirtualRouterVirtualRouterListener' for a more convenient
-- constructor.
data AppMeshVirtualRouterVirtualRouterListener =
  AppMeshVirtualRouterVirtualRouterListener
  { _appMeshVirtualRouterVirtualRouterListenerPortMapping :: AppMeshVirtualRouterPortMapping
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualRouterVirtualRouterListener where
  toJSON AppMeshVirtualRouterVirtualRouterListener{..} =
    object $
    catMaybes
    [ (Just . ("PortMapping",) . toJSON) _appMeshVirtualRouterVirtualRouterListenerPortMapping
    ]

-- | Constructor for 'AppMeshVirtualRouterVirtualRouterListener' containing
-- required fields as arguments.
appMeshVirtualRouterVirtualRouterListener
  :: AppMeshVirtualRouterPortMapping -- ^ 'amvrvrlPortMapping'
  -> AppMeshVirtualRouterVirtualRouterListener
appMeshVirtualRouterVirtualRouterListener portMappingarg =
  AppMeshVirtualRouterVirtualRouterListener
  { _appMeshVirtualRouterVirtualRouterListenerPortMapping = portMappingarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterlistener.html#cfn-appmesh-virtualrouter-virtualrouterlistener-portmapping
amvrvrlPortMapping :: Lens' AppMeshVirtualRouterVirtualRouterListener AppMeshVirtualRouterPortMapping
amvrvrlPortMapping = lens _appMeshVirtualRouterVirtualRouterListenerPortMapping (\s a -> s { _appMeshVirtualRouterVirtualRouterListenerPortMapping = a })
