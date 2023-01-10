
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html

module Stratosphere.ResourceProperties.AppMeshVirtualRouterVirtualRouterSpec where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualRouterVirtualRouterListener

-- | Full data type definition for AppMeshVirtualRouterVirtualRouterSpec. See
-- 'appMeshVirtualRouterVirtualRouterSpec' for a more convenient
-- constructor.
data AppMeshVirtualRouterVirtualRouterSpec =
  AppMeshVirtualRouterVirtualRouterSpec
  { _appMeshVirtualRouterVirtualRouterSpecListeners :: [AppMeshVirtualRouterVirtualRouterListener]
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualRouterVirtualRouterSpec where
  toJSON AppMeshVirtualRouterVirtualRouterSpec{..} =
    object $
    catMaybes
    [ (Just . ("Listeners",) . toJSON) _appMeshVirtualRouterVirtualRouterSpecListeners
    ]

-- | Constructor for 'AppMeshVirtualRouterVirtualRouterSpec' containing
-- required fields as arguments.
appMeshVirtualRouterVirtualRouterSpec
  :: [AppMeshVirtualRouterVirtualRouterListener] -- ^ 'amvrvrsListeners'
  -> AppMeshVirtualRouterVirtualRouterSpec
appMeshVirtualRouterVirtualRouterSpec listenersarg =
  AppMeshVirtualRouterVirtualRouterSpec
  { _appMeshVirtualRouterVirtualRouterSpecListeners = listenersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualrouter-virtualrouterspec.html#cfn-appmesh-virtualrouter-virtualrouterspec-listeners
amvrvrsListeners :: Lens' AppMeshVirtualRouterVirtualRouterSpec [AppMeshVirtualRouterVirtualRouterListener]
amvrvrsListeners = lens _appMeshVirtualRouterVirtualRouterSpecListeners (\s a -> s { _appMeshVirtualRouterVirtualRouterSpecListeners = a })
