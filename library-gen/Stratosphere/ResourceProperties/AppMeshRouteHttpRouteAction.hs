
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html

module Stratosphere.ResourceProperties.AppMeshRouteHttpRouteAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteWeightedTarget

-- | Full data type definition for AppMeshRouteHttpRouteAction. See
-- 'appMeshRouteHttpRouteAction' for a more convenient constructor.
data AppMeshRouteHttpRouteAction =
  AppMeshRouteHttpRouteAction
  { _appMeshRouteHttpRouteActionWeightedTargets :: [AppMeshRouteWeightedTarget]
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteHttpRouteAction where
  toJSON AppMeshRouteHttpRouteAction{..} =
    object $
    catMaybes
    [ (Just . ("WeightedTargets",) . toJSON) _appMeshRouteHttpRouteActionWeightedTargets
    ]

-- | Constructor for 'AppMeshRouteHttpRouteAction' containing required fields
-- as arguments.
appMeshRouteHttpRouteAction
  :: [AppMeshRouteWeightedTarget] -- ^ 'amrhraWeightedTargets'
  -> AppMeshRouteHttpRouteAction
appMeshRouteHttpRouteAction weightedTargetsarg =
  AppMeshRouteHttpRouteAction
  { _appMeshRouteHttpRouteActionWeightedTargets = weightedTargetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteaction.html#cfn-appmesh-route-httprouteaction-weightedtargets
amrhraWeightedTargets :: Lens' AppMeshRouteHttpRouteAction [AppMeshRouteWeightedTarget]
amrhraWeightedTargets = lens _appMeshRouteHttpRouteActionWeightedTargets (\s a -> s { _appMeshRouteHttpRouteActionWeightedTargets = a })
