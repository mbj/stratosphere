module Stratosphere.EMR.InstanceFleetConfig.InstanceFleetProvisioningSpecificationsProperty (
        module Exports,
        InstanceFleetProvisioningSpecificationsProperty(..),
        mkInstanceFleetProvisioningSpecificationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.OnDemandProvisioningSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.SpotProvisioningSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data InstanceFleetProvisioningSpecificationsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html>
    InstanceFleetProvisioningSpecificationsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-ondemandspecification>
                                                     onDemandSpecification :: (Prelude.Maybe OnDemandProvisioningSpecificationProperty),
                                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications.html#cfn-elasticmapreduce-instancefleetconfig-instancefleetprovisioningspecifications-spotspecification>
                                                     spotSpecification :: (Prelude.Maybe SpotProvisioningSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceFleetProvisioningSpecificationsProperty ::
  InstanceFleetProvisioningSpecificationsProperty
mkInstanceFleetProvisioningSpecificationsProperty
  = InstanceFleetProvisioningSpecificationsProperty
      {onDemandSpecification = Prelude.Nothing,
       spotSpecification = Prelude.Nothing}
instance ToResourceProperties InstanceFleetProvisioningSpecificationsProperty where
  toResourceProperties
    InstanceFleetProvisioningSpecificationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.InstanceFleetProvisioningSpecifications",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnDemandSpecification"
                              Prelude.<$> onDemandSpecification,
                            (JSON..=) "SpotSpecification" Prelude.<$> spotSpecification])}
instance JSON.ToJSON InstanceFleetProvisioningSpecificationsProperty where
  toJSON InstanceFleetProvisioningSpecificationsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnDemandSpecification"
                 Prelude.<$> onDemandSpecification,
               (JSON..=) "SpotSpecification" Prelude.<$> spotSpecification]))
instance Property "OnDemandSpecification" InstanceFleetProvisioningSpecificationsProperty where
  type PropertyType "OnDemandSpecification" InstanceFleetProvisioningSpecificationsProperty = OnDemandProvisioningSpecificationProperty
  set newValue InstanceFleetProvisioningSpecificationsProperty {..}
    = InstanceFleetProvisioningSpecificationsProperty
        {onDemandSpecification = Prelude.pure newValue, ..}
instance Property "SpotSpecification" InstanceFleetProvisioningSpecificationsProperty where
  type PropertyType "SpotSpecification" InstanceFleetProvisioningSpecificationsProperty = SpotProvisioningSpecificationProperty
  set newValue InstanceFleetProvisioningSpecificationsProperty {..}
    = InstanceFleetProvisioningSpecificationsProperty
        {spotSpecification = Prelude.pure newValue, ..}