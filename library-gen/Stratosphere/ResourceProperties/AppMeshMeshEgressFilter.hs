
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html

module Stratosphere.ResourceProperties.AppMeshMeshEgressFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshMeshEgressFilter. See
-- 'appMeshMeshEgressFilter' for a more convenient constructor.
data AppMeshMeshEgressFilter =
  AppMeshMeshEgressFilter
  { _appMeshMeshEgressFilterType :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppMeshMeshEgressFilter where
  toJSON AppMeshMeshEgressFilter{..} =
    object $
    catMaybes
    [ (Just . ("Type",) . toJSON) _appMeshMeshEgressFilterType
    ]

-- | Constructor for 'AppMeshMeshEgressFilter' containing required fields as
-- arguments.
appMeshMeshEgressFilter
  :: Val Text -- ^ 'ammefType'
  -> AppMeshMeshEgressFilter
appMeshMeshEgressFilter typearg =
  AppMeshMeshEgressFilter
  { _appMeshMeshEgressFilterType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-mesh-egressfilter.html#cfn-appmesh-mesh-egressfilter-type
ammefType :: Lens' AppMeshMeshEgressFilter (Val Text)
ammefType = lens _appMeshMeshEgressFilterType (\s a -> s { _appMeshMeshEgressFilterType = a })
