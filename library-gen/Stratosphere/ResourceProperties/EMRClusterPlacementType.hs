{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html

module Stratosphere.ResourceProperties.EMRClusterPlacementType where

import Stratosphere.ResourceImports


-- | Full data type definition for EMRClusterPlacementType. See
-- 'emrClusterPlacementType' for a more convenient constructor.
data EMRClusterPlacementType =
  EMRClusterPlacementType
  { _eMRClusterPlacementTypeAvailabilityZone :: Val Text
  } deriving (Show, Eq)

instance ToJSON EMRClusterPlacementType where
  toJSON EMRClusterPlacementType{..} =
    object $
    catMaybes
    [ (Just . ("AvailabilityZone",) . toJSON) _eMRClusterPlacementTypeAvailabilityZone
    ]

-- | Constructor for 'EMRClusterPlacementType' containing required fields as
-- arguments.
emrClusterPlacementType
  :: Val Text -- ^ 'emrcptAvailabilityZone'
  -> EMRClusterPlacementType
emrClusterPlacementType availabilityZonearg =
  EMRClusterPlacementType
  { _eMRClusterPlacementTypeAvailabilityZone = availabilityZonearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-placementtype.html#cfn-elasticmapreduce-cluster-placementtype-availabilityzone
emrcptAvailabilityZone :: Lens' EMRClusterPlacementType (Val Text)
emrcptAvailabilityZone = lens _eMRClusterPlacementTypeAvailabilityZone (\s a -> s { _eMRClusterPlacementTypeAvailabilityZone = a })
