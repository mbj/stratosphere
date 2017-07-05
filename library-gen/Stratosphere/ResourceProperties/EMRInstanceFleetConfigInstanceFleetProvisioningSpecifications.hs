{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
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
    [ Just ("SpotSpecification" .= _eMRInstanceFleetConfigInstanceFleetProvisioningSpecificationsSpotSpecification)
    ]

instance FromJSON EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigInstanceFleetProvisioningSpecifications <$>
      obj .: "SpotSpecification"
  parseJSON _ = mempty

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
