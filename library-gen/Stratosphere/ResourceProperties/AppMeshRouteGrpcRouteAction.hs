
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html

module Stratosphere.ResourceProperties.AppMeshRouteGrpcRouteAction where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteWeightedTarget

-- | Full data type definition for AppMeshRouteGrpcRouteAction. See
-- 'appMeshRouteGrpcRouteAction' for a more convenient constructor.
data AppMeshRouteGrpcRouteAction =
  AppMeshRouteGrpcRouteAction
  { _appMeshRouteGrpcRouteActionWeightedTargets :: [AppMeshRouteWeightedTarget]
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteGrpcRouteAction where
  toJSON AppMeshRouteGrpcRouteAction{..} =
    object $
    catMaybes
    [ (Just . ("WeightedTargets",) . toJSON) _appMeshRouteGrpcRouteActionWeightedTargets
    ]

-- | Constructor for 'AppMeshRouteGrpcRouteAction' containing required fields
-- as arguments.
appMeshRouteGrpcRouteAction
  :: [AppMeshRouteWeightedTarget] -- ^ 'amrgraWeightedTargets'
  -> AppMeshRouteGrpcRouteAction
appMeshRouteGrpcRouteAction weightedTargetsarg =
  AppMeshRouteGrpcRouteAction
  { _appMeshRouteGrpcRouteActionWeightedTargets = weightedTargetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-grpcrouteaction.html#cfn-appmesh-route-grpcrouteaction-weightedtargets
amrgraWeightedTargets :: Lens' AppMeshRouteGrpcRouteAction [AppMeshRouteWeightedTarget]
amrgraWeightedTargets = lens _appMeshRouteGrpcRouteActionWeightedTargets (\s a -> s { _appMeshRouteGrpcRouteActionWeightedTargets = a })
