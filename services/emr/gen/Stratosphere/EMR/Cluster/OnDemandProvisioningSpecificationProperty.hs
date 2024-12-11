module Stratosphere.EMR.Cluster.OnDemandProvisioningSpecificationProperty (
        module Exports, OnDemandProvisioningSpecificationProperty(..),
        mkOnDemandProvisioningSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.Cluster.OnDemandCapacityReservationOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandProvisioningSpecificationProperty
  = OnDemandProvisioningSpecificationProperty {allocationStrategy :: (Value Prelude.Text),
                                               capacityReservationOptions :: (Prelude.Maybe OnDemandCapacityReservationOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnDemandProvisioningSpecificationProperty ::
  Value Prelude.Text -> OnDemandProvisioningSpecificationProperty
mkOnDemandProvisioningSpecificationProperty allocationStrategy
  = OnDemandProvisioningSpecificationProperty
      {allocationStrategy = allocationStrategy,
       capacityReservationOptions = Prelude.Nothing}
instance ToResourceProperties OnDemandProvisioningSpecificationProperty where
  toResourceProperties OnDemandProvisioningSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::Cluster.OnDemandProvisioningSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllocationStrategy" JSON..= allocationStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityReservationOptions"
                                 Prelude.<$> capacityReservationOptions]))}
instance JSON.ToJSON OnDemandProvisioningSpecificationProperty where
  toJSON OnDemandProvisioningSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllocationStrategy" JSON..= allocationStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityReservationOptions"
                    Prelude.<$> capacityReservationOptions])))
instance Property "AllocationStrategy" OnDemandProvisioningSpecificationProperty where
  type PropertyType "AllocationStrategy" OnDemandProvisioningSpecificationProperty = Value Prelude.Text
  set newValue OnDemandProvisioningSpecificationProperty {..}
    = OnDemandProvisioningSpecificationProperty
        {allocationStrategy = newValue, ..}
instance Property "CapacityReservationOptions" OnDemandProvisioningSpecificationProperty where
  type PropertyType "CapacityReservationOptions" OnDemandProvisioningSpecificationProperty = OnDemandCapacityReservationOptionsProperty
  set newValue OnDemandProvisioningSpecificationProperty {..}
    = OnDemandProvisioningSpecificationProperty
        {capacityReservationOptions = Prelude.pure newValue, ..}