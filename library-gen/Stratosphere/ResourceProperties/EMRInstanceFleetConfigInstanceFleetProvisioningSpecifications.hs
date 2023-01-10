
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigSpotProvisioningSpecification

-- | Full data type definition for
-- EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications. See
-- 'emrInstanceFleetConfigInstanceFleetProvisioningSpecifications' for a
-- more convenient constructor.
data EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications =
  EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications
  { _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification :: EMRInstanceFleetConfigSpotProvisioningSpecification
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications where
  toJSON EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications{..} =
    object $
    catMaybes
    [ (Just . ("SpotSpecification",) . toJSON) _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification
    ]

-- | Constructor for
-- 'EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications'
-- containing required fields as arguments.
emrInstanceFleetConfigInstanceFleetProvisioningSpecifications
  :: EMRInstanceFleetConfigSpotProvisioningSpecification -- ^ 'emrifcifpsSpotSpecification'
  -> EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications
emrInstanceFleetConfigInstanceFleetProvisioningSpecifications spotSpecificationarg =
  EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications
  { _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification = spotSpecificationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-spotspecification
emrifcifpsSpotSpecification :: Lens' EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications EMRInstanceFleetConfigSpotProvisioningSpecification
emrifcifpsSpotSpecification = lens _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification (\s a -> s { _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification = a })
