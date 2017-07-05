{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html

module Stratosphere.ResourceProperties.EMRClusterInstanceFleetProvisioningSpecifications where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterSpotProvisioningSpecification

-- | Full data type definition for
-- EMRClusterInstanceFleetProvisioningSpecifications. See
-- 'emrClusterInstanceFleetProvisioningSpecifications' for a more convenient
-- constructor.
data EMRClusterInstanceFleetProvisioningSpecifications =
  EMRClusterInstanceFleetProvisioningSpecifications
  { _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification :: EMRClusterSpotProvisioningSpecification
  } deriving (Show, Eq)

instance ToJSON EMRClusterInstanceFleetProvisioningSpecifications where
  toJSON EMRClusterInstanceFleetProvisioningSpecifications{..} =
    object $
    catMaybes
    [ Just ("SpotSpecification" .= _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification)
    ]

instance FromJSON EMRClusterInstanceFleetProvisioningSpecifications where
  parseJSON (Object obj) =
    EMRClusterInstanceFleetProvisioningSpecifications <$>
      obj .: "SpotSpecification"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterInstanceFleetProvisioningSpecifications'
-- containing required fields as arguments.
emrClusterInstanceFleetProvisioningSpecifications
  :: EMRClusterSpotProvisioningSpecification -- ^ 'emrcifpsSpotSpecification'
  -> EMRClusterInstanceFleetProvisioningSpecifications
emrClusterInstanceFleetProvisioningSpecifications spotSpecificationarg =
  EMRClusterInstanceFleetProvisioningSpecifications
  { _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification = spotSpecificationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-cluster-instancefleetprovisioningspecifications-spotspecification
emrcifpsSpotSpecification :: Lens' EMRClusterInstanceFleetProvisioningSpecifications EMRClusterSpotProvisioningSpecification
emrcifpsSpotSpecification = lens _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification (\s a -> s { _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification = a })
