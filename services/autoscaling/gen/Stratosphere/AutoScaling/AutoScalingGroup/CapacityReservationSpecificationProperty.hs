module Stratosphere.AutoScaling.AutoScalingGroup.CapacityReservationSpecificationProperty (
        module Exports, CapacityReservationSpecificationProperty(..),
        mkCapacityReservationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.CapacityReservationTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationSpecificationProperty
  = CapacityReservationSpecificationProperty {capacityReservationPreference :: (Value Prelude.Text),
                                              capacityReservationTarget :: (Prelude.Maybe CapacityReservationTargetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationSpecificationProperty ::
  Value Prelude.Text -> CapacityReservationSpecificationProperty
mkCapacityReservationSpecificationProperty
  capacityReservationPreference
  = CapacityReservationSpecificationProperty
      {capacityReservationPreference = capacityReservationPreference,
       capacityReservationTarget = Prelude.Nothing}
instance ToResourceProperties CapacityReservationSpecificationProperty where
  toResourceProperties CapacityReservationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.CapacityReservationSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CapacityReservationPreference"
                              JSON..= capacityReservationPreference]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityReservationTarget"
                                 Prelude.<$> capacityReservationTarget]))}
instance JSON.ToJSON CapacityReservationSpecificationProperty where
  toJSON CapacityReservationSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CapacityReservationPreference"
                 JSON..= capacityReservationPreference]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityReservationTarget"
                    Prelude.<$> capacityReservationTarget])))
instance Property "CapacityReservationPreference" CapacityReservationSpecificationProperty where
  type PropertyType "CapacityReservationPreference" CapacityReservationSpecificationProperty = Value Prelude.Text
  set newValue CapacityReservationSpecificationProperty {..}
    = CapacityReservationSpecificationProperty
        {capacityReservationPreference = newValue, ..}
instance Property "CapacityReservationTarget" CapacityReservationSpecificationProperty where
  type PropertyType "CapacityReservationTarget" CapacityReservationSpecificationProperty = CapacityReservationTargetProperty
  set newValue CapacityReservationSpecificationProperty {..}
    = CapacityReservationSpecificationProperty
        {capacityReservationTarget = Prelude.pure newValue, ..}