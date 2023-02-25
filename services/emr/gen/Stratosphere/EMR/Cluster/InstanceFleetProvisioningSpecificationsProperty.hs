module Stratosphere.EMR.Cluster.InstanceFleetProvisioningSpecificationsProperty (
        module Exports,
        InstanceFleetProvisioningSpecificationsProperty(..),
        mkInstanceFleetProvisioningSpecificationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.OnDemandProvisioningSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EMR.Cluster.SpotProvisioningSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data InstanceFleetProvisioningSpecificationsProperty
  = InstanceFleetProvisioningSpecificationsProperty {onDemandSpecification :: (Prelude.Maybe OnDemandProvisioningSpecificationProperty),
                                                     spotSpecification :: (Prelude.Maybe SpotProvisioningSpecificationProperty)}
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
        {awsType = "AWS::EMR::Cluster.InstanceFleetProvisioningSpecifications",
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