
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-instancefleetprovisioningspecifications.html

module Stratosphere.ResourceProperties.EMRClusterInstanceFleetProvisioningSpecifications where

import Prelude
import Stratosphere.ResourceImports
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
    [ (Just . ("SpotSpecification",) . toJSON) _eMRClusterInstanceFleetProvisioningSpecificationsSpotSpecification
    ]

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
