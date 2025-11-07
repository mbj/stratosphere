module Stratosphere.WorkspacesInstances.WorkspaceInstance.CapacityReservationSpecificationProperty (
        module Exports, CapacityReservationSpecificationProperty(..),
        mkCapacityReservationSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.CapacityReservationTargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-capacityreservationspecification.html>
    CapacityReservationSpecificationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-capacityreservationspecification.html#cfn-workspacesinstances-workspaceinstance-capacityreservationspecification-capacityreservationpreference>
                                              capacityReservationPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-capacityreservationspecification.html#cfn-workspacesinstances-workspaceinstance-capacityreservationspecification-capacityreservationtarget>
                                              capacityReservationTarget :: (Prelude.Maybe CapacityReservationTargetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationSpecificationProperty ::
  CapacityReservationSpecificationProperty
mkCapacityReservationSpecificationProperty
  = CapacityReservationSpecificationProperty
      {haddock_workaround_ = (),
       capacityReservationPreference = Prelude.Nothing,
       capacityReservationTarget = Prelude.Nothing}
instance ToResourceProperties CapacityReservationSpecificationProperty where
  toResourceProperties CapacityReservationSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.CapacityReservationSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityReservationPreference"
                              Prelude.<$> capacityReservationPreference,
                            (JSON..=) "CapacityReservationTarget"
                              Prelude.<$> capacityReservationTarget])}
instance JSON.ToJSON CapacityReservationSpecificationProperty where
  toJSON CapacityReservationSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityReservationPreference"
                 Prelude.<$> capacityReservationPreference,
               (JSON..=) "CapacityReservationTarget"
                 Prelude.<$> capacityReservationTarget]))
instance Property "CapacityReservationPreference" CapacityReservationSpecificationProperty where
  type PropertyType "CapacityReservationPreference" CapacityReservationSpecificationProperty = Value Prelude.Text
  set newValue CapacityReservationSpecificationProperty {..}
    = CapacityReservationSpecificationProperty
        {capacityReservationPreference = Prelude.pure newValue, ..}
instance Property "CapacityReservationTarget" CapacityReservationSpecificationProperty where
  type PropertyType "CapacityReservationTarget" CapacityReservationSpecificationProperty = CapacityReservationTargetProperty
  set newValue CapacityReservationSpecificationProperty {..}
    = CapacityReservationSpecificationProperty
        {capacityReservationTarget = Prelude.pure newValue, ..}