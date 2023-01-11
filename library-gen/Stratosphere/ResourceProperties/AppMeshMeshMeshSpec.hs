
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html

module Stratosphere.ResourceProperties.AppMeshMeshMeshSpec where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshMeshEgressFilter

-- | Full data type definition for AppMeshMeshMeshSpec. See
-- 'appMeshMeshMeshSpec' for a more convenient constructor.
data AppMeshMeshMeshSpec =
  AppMeshMeshMeshSpec
  { _appMeshMeshMeshSpecEgressFilter :: Maybe AppMeshMeshEgressFilter
  } deriving (Show, Eq)

instance ToJSON AppMeshMeshMeshSpec where
  toJSON AppMeshMeshMeshSpec{..} =
    object $
    catMaybes
    [ fmap (("EgressFilter",) . toJSON) _appMeshMeshMeshSpecEgressFilter
    ]

-- | Constructor for 'AppMeshMeshMeshSpec' containing required fields as
-- arguments.
appMeshMeshMeshSpec
  :: AppMeshMeshMeshSpec
appMeshMeshMeshSpec  =
  AppMeshMeshMeshSpec
  { _appMeshMeshMeshSpecEgressFilter = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-meshspec.html#cfn-appmesh-mesh-meshspec-egressfilter
ammmsEgressFilter :: Lens' AppMeshMeshMeshSpec (Maybe AppMeshMeshEgressFilter)
ammmsEgressFilter = lens _appMeshMeshMeshSpecEgressFilter (\s a -> s { _appMeshMeshMeshSpecEgressFilter = a })
