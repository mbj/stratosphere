module Stratosphere.EC2.CapacityReservationFleet (
        module Exports, CapacityReservationFleet(..),
        mkCapacityReservationFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.CapacityReservationFleet.InstanceTypeSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.CapacityReservationFleet.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationFleet
  = CapacityReservationFleet {allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                              endDate :: (Prelude.Maybe (Value Prelude.Text)),
                              instanceMatchCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                              instanceTypeSpecifications :: (Prelude.Maybe [InstanceTypeSpecificationProperty]),
                              noRemoveEndDate :: (Prelude.Maybe (Value Prelude.Bool)),
                              removeEndDate :: (Prelude.Maybe (Value Prelude.Bool)),
                              tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                              tenancy :: (Prelude.Maybe (Value Prelude.Text)),
                              totalTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationFleet :: CapacityReservationFleet
mkCapacityReservationFleet
  = CapacityReservationFleet
      {allocationStrategy = Prelude.Nothing, endDate = Prelude.Nothing,
       instanceMatchCriteria = Prelude.Nothing,
       instanceTypeSpecifications = Prelude.Nothing,
       noRemoveEndDate = Prelude.Nothing, removeEndDate = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, tenancy = Prelude.Nothing,
       totalTargetCapacity = Prelude.Nothing}
instance ToResourceProperties CapacityReservationFleet where
  toResourceProperties CapacityReservationFleet {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservationFleet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                            (JSON..=) "EndDate" Prelude.<$> endDate,
                            (JSON..=) "InstanceMatchCriteria"
                              Prelude.<$> instanceMatchCriteria,
                            (JSON..=) "InstanceTypeSpecifications"
                              Prelude.<$> instanceTypeSpecifications,
                            (JSON..=) "NoRemoveEndDate" Prelude.<$> noRemoveEndDate,
                            (JSON..=) "RemoveEndDate" Prelude.<$> removeEndDate,
                            (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy,
                            (JSON..=) "TotalTargetCapacity" Prelude.<$> totalTargetCapacity])}
instance JSON.ToJSON CapacityReservationFleet where
  toJSON CapacityReservationFleet {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
               (JSON..=) "EndDate" Prelude.<$> endDate,
               (JSON..=) "InstanceMatchCriteria"
                 Prelude.<$> instanceMatchCriteria,
               (JSON..=) "InstanceTypeSpecifications"
                 Prelude.<$> instanceTypeSpecifications,
               (JSON..=) "NoRemoveEndDate" Prelude.<$> noRemoveEndDate,
               (JSON..=) "RemoveEndDate" Prelude.<$> removeEndDate,
               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
               (JSON..=) "Tenancy" Prelude.<$> tenancy,
               (JSON..=) "TotalTargetCapacity" Prelude.<$> totalTargetCapacity]))
instance Property "AllocationStrategy" CapacityReservationFleet where
  type PropertyType "AllocationStrategy" CapacityReservationFleet = Value Prelude.Text
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "EndDate" CapacityReservationFleet where
  type PropertyType "EndDate" CapacityReservationFleet = Value Prelude.Text
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet {endDate = Prelude.pure newValue, ..}
instance Property "InstanceMatchCriteria" CapacityReservationFleet where
  type PropertyType "InstanceMatchCriteria" CapacityReservationFleet = Value Prelude.Text
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {instanceMatchCriteria = Prelude.pure newValue, ..}
instance Property "InstanceTypeSpecifications" CapacityReservationFleet where
  type PropertyType "InstanceTypeSpecifications" CapacityReservationFleet = [InstanceTypeSpecificationProperty]
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {instanceTypeSpecifications = Prelude.pure newValue, ..}
instance Property "NoRemoveEndDate" CapacityReservationFleet where
  type PropertyType "NoRemoveEndDate" CapacityReservationFleet = Value Prelude.Bool
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {noRemoveEndDate = Prelude.pure newValue, ..}
instance Property "RemoveEndDate" CapacityReservationFleet where
  type PropertyType "RemoveEndDate" CapacityReservationFleet = Value Prelude.Bool
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {removeEndDate = Prelude.pure newValue, ..}
instance Property "TagSpecifications" CapacityReservationFleet where
  type PropertyType "TagSpecifications" CapacityReservationFleet = [TagSpecificationProperty]
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Tenancy" CapacityReservationFleet where
  type PropertyType "Tenancy" CapacityReservationFleet = Value Prelude.Text
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet {tenancy = Prelude.pure newValue, ..}
instance Property "TotalTargetCapacity" CapacityReservationFleet where
  type PropertyType "TotalTargetCapacity" CapacityReservationFleet = Value Prelude.Integer
  set newValue CapacityReservationFleet {..}
    = CapacityReservationFleet
        {totalTargetCapacity = Prelude.pure newValue, ..}