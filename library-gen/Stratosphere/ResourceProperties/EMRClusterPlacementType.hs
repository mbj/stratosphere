{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-placementtype.html

module Stratosphere.ResourceProperties.EMRClusterPlacementType where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRClusterPlacementType. See
-- | 'emrClusterPlacementType' for a more convenient constructor.
data EMRClusterPlacementType =
  EMRClusterPlacementType
  { _eMRClusterPlacementTypeAvailabilityZone :: Val Text
  } deriving (Show, Generic)

instance ToJSON EMRClusterPlacementType where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON EMRClusterPlacementType where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'EMRClusterPlacementType' containing required fields as
-- | arguments.
emrClusterPlacementType
  :: Val Text -- ^ 'emrcptAvailabilityZone'
  -> EMRClusterPlacementType
emrClusterPlacementType availabilityZonearg =
  EMRClusterPlacementType
  { _eMRClusterPlacementTypeAvailabilityZone = availabilityZonearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-jobflowinstancesconfig-placementtype.html#aws-properties-emr-cluster-jobflowinstancesconfig-placementtype
emrcptAvailabilityZone :: Lens' EMRClusterPlacementType (Val Text)
emrcptAvailabilityZone = lens _eMRClusterPlacementTypeAvailabilityZone (\s a -> s { _eMRClusterPlacementTypeAvailabilityZone = a })
