module Stratosphere.Athena.CapacityReservation (
        module Exports, CapacityReservation(..), mkCapacityReservation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.CapacityReservation.CapacityAssignmentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CapacityReservation
  = CapacityReservation {capacityAssignmentConfiguration :: (Prelude.Maybe CapacityAssignmentConfigurationProperty),
                         name :: (Value Prelude.Text),
                         tags :: (Prelude.Maybe [Tag]),
                         targetDpus :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservation ::
  Value Prelude.Text -> Value Prelude.Integer -> CapacityReservation
mkCapacityReservation name targetDpus
  = CapacityReservation
      {name = name, targetDpus = targetDpus,
       capacityAssignmentConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CapacityReservation where
  toResourceProperties CapacityReservation {..}
    = ResourceProperties
        {awsType = "AWS::Athena::CapacityReservation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "TargetDpus" JSON..= targetDpus]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityAssignmentConfiguration"
                                 Prelude.<$> capacityAssignmentConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CapacityReservation where
  toJSON CapacityReservation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "TargetDpus" JSON..= targetDpus]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityAssignmentConfiguration"
                    Prelude.<$> capacityAssignmentConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CapacityAssignmentConfiguration" CapacityReservation where
  type PropertyType "CapacityAssignmentConfiguration" CapacityReservation = CapacityAssignmentConfigurationProperty
  set newValue CapacityReservation {..}
    = CapacityReservation
        {capacityAssignmentConfiguration = Prelude.pure newValue, ..}
instance Property "Name" CapacityReservation where
  type PropertyType "Name" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {name = newValue, ..}
instance Property "Tags" CapacityReservation where
  type PropertyType "Tags" CapacityReservation = [Tag]
  set newValue CapacityReservation {..}
    = CapacityReservation {tags = Prelude.pure newValue, ..}
instance Property "TargetDpus" CapacityReservation where
  type PropertyType "TargetDpus" CapacityReservation = Value Prelude.Integer
  set newValue CapacityReservation {..}
    = CapacityReservation {targetDpus = newValue, ..}