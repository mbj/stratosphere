module Stratosphere.Athena.CapacityReservation.CapacityAssignmentConfigurationProperty (
        module Exports, CapacityAssignmentConfigurationProperty(..),
        mkCapacityAssignmentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Athena.CapacityReservation.CapacityAssignmentProperty as Exports
import Stratosphere.ResourceProperties
data CapacityAssignmentConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-capacityreservation-capacityassignmentconfiguration.html>
    CapacityAssignmentConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-capacityreservation-capacityassignmentconfiguration.html#cfn-athena-capacityreservation-capacityassignmentconfiguration-capacityassignments>
                                             capacityAssignments :: [CapacityAssignmentProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityAssignmentConfigurationProperty ::
  [CapacityAssignmentProperty]
  -> CapacityAssignmentConfigurationProperty
mkCapacityAssignmentConfigurationProperty capacityAssignments
  = CapacityAssignmentConfigurationProperty
      {haddock_workaround_ = (),
       capacityAssignments = capacityAssignments}
instance ToResourceProperties CapacityAssignmentConfigurationProperty where
  toResourceProperties CapacityAssignmentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::CapacityReservation.CapacityAssignmentConfiguration",
         supportsTags = Prelude.False,
         properties = ["CapacityAssignments" JSON..= capacityAssignments]}
instance JSON.ToJSON CapacityAssignmentConfigurationProperty where
  toJSON CapacityAssignmentConfigurationProperty {..}
    = JSON.object ["CapacityAssignments" JSON..= capacityAssignments]
instance Property "CapacityAssignments" CapacityAssignmentConfigurationProperty where
  type PropertyType "CapacityAssignments" CapacityAssignmentConfigurationProperty = [CapacityAssignmentProperty]
  set newValue CapacityAssignmentConfigurationProperty {..}
    = CapacityAssignmentConfigurationProperty
        {capacityAssignments = newValue, ..}