{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html

module Stratosphere.ResourceProperties.AppMeshRouteWeightedTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for AppMeshRouteWeightedTarget. See
-- 'appMeshRouteWeightedTarget' for a more convenient constructor.
data AppMeshRouteWeightedTarget =
  AppMeshRouteWeightedTarget
  { _appMeshRouteWeightedTargetVirtualNode :: Val Text
  , _appMeshRouteWeightedTargetWeight :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AppMeshRouteWeightedTarget where
  toJSON AppMeshRouteWeightedTarget{..} =
    object $
    catMaybes
    [ (Just . ("VirtualNode",) . toJSON) _appMeshRouteWeightedTargetVirtualNode
    , (Just . ("Weight",) . toJSON) _appMeshRouteWeightedTargetWeight
    ]

-- | Constructor for 'AppMeshRouteWeightedTarget' containing required fields
-- as arguments.
appMeshRouteWeightedTarget
  :: Val Text -- ^ 'amrwtVirtualNode'
  -> Val Integer -- ^ 'amrwtWeight'
  -> AppMeshRouteWeightedTarget
appMeshRouteWeightedTarget virtualNodearg weightarg =
  AppMeshRouteWeightedTarget
  { _appMeshRouteWeightedTargetVirtualNode = virtualNodearg
  , _appMeshRouteWeightedTargetWeight = weightarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-virtualnode
amrwtVirtualNode :: Lens' AppMeshRouteWeightedTarget (Val Text)
amrwtVirtualNode = lens _appMeshRouteWeightedTargetVirtualNode (\s a -> s { _appMeshRouteWeightedTargetVirtualNode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-weightedtarget.html#cfn-appmesh-route-weightedtarget-weight
amrwtWeight :: Lens' AppMeshRouteWeightedTarget (Val Integer)
amrwtWeight = lens _appMeshRouteWeightedTargetWeight (\s a -> s { _appMeshRouteWeightedTargetWeight = a })
