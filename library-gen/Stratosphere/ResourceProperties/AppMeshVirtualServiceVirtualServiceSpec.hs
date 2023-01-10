
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html

module Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualServiceSpec where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshVirtualServiceVirtualServiceProvider

-- | Full data type definition for AppMeshVirtualServiceVirtualServiceSpec.
-- See 'appMeshVirtualServiceVirtualServiceSpec' for a more convenient
-- constructor.
data AppMeshVirtualServiceVirtualServiceSpec =
  AppMeshVirtualServiceVirtualServiceSpec
  { _appMeshVirtualServiceVirtualServiceSpecProvider :: Maybe AppMeshVirtualServiceVirtualServiceProvider
  } deriving (Show, Eq)

instance ToJSON AppMeshVirtualServiceVirtualServiceSpec where
  toJSON AppMeshVirtualServiceVirtualServiceSpec{..} =
    object $
    catMaybes
    [ fmap (("Provider",) . toJSON) _appMeshVirtualServiceVirtualServiceSpecProvider
    ]

-- | Constructor for 'AppMeshVirtualServiceVirtualServiceSpec' containing
-- required fields as arguments.
appMeshVirtualServiceVirtualServiceSpec
  :: AppMeshVirtualServiceVirtualServiceSpec
appMeshVirtualServiceVirtualServiceSpec  =
  AppMeshVirtualServiceVirtualServiceSpec
  { _appMeshVirtualServiceVirtualServiceSpecProvider = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualservice-virtualservicespec.html#cfn-appmesh-virtualservice-virtualservicespec-provider
amvsvssProvider :: Lens' AppMeshVirtualServiceVirtualServiceSpec (Maybe AppMeshVirtualServiceVirtualServiceProvider)
amvsvssProvider = lens _appMeshVirtualServiceVirtualServiceSpecProvider (\s a -> s { _appMeshVirtualServiceVirtualServiceSpecProvider = a })
