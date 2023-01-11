
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html

module Stratosphere.ResourceProperties.AppMeshRouteTcpRouteAction where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppMeshRouteWeightedTarget

-- | Full data type definition for AppMeshRouteTcpRouteAction. See
-- 'appMeshRouteTcpRouteAction' for a more convenient constructor.
data AppMeshRouteTcpRouteAction =
  AppMeshRouteTcpRouteAction
  { _appMeshRouteTcpRouteActionWeightedTargets :: [AppMeshRouteWeightedTarget]
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteTcpRouteAction where
  toJSON AppMeshRouteTcpRouteAction{..} =
    object $
    catMaybes
    [ (Just . ("WeightedTargets",) . toJSON) _appMeshRouteTcpRouteActionWeightedTargets
    ]

-- | Constructor for 'AppMeshRouteTcpRouteAction' containing required fields
-- as arguments.
appMeshRouteTcpRouteAction
  :: [AppMeshRouteWeightedTarget] -- ^ 'amrtraWeightedTargets'
  -> AppMeshRouteTcpRouteAction
appMeshRouteTcpRouteAction weightedTargetsarg =
  AppMeshRouteTcpRouteAction
  { _appMeshRouteTcpRouteActionWeightedTargets = weightedTargetsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-tcprouteaction.html#cfn-appmesh-route-tcprouteaction-weightedtargets
amrtraWeightedTargets :: Lens' AppMeshRouteTcpRouteAction [AppMeshRouteWeightedTarget]
amrtraWeightedTargets = lens _appMeshRouteTcpRouteActionWeightedTargets (\s a -> s { _appMeshRouteTcpRouteActionWeightedTargets = a })
