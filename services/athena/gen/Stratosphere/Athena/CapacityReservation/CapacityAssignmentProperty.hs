module Stratosphere.Athena.CapacityReservation.CapacityAssignmentProperty (
        CapacityAssignmentProperty(..), mkCapacityAssignmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityAssignmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-capacityreservation-capacityassignment.html>
    CapacityAssignmentProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-capacityreservation-capacityassignment.html#cfn-athena-capacityreservation-capacityassignment-workgroupnames>
                                workgroupNames :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityAssignmentProperty ::
  ValueList Prelude.Text -> CapacityAssignmentProperty
mkCapacityAssignmentProperty workgroupNames
  = CapacityAssignmentProperty
      {haddock_workaround_ = (), workgroupNames = workgroupNames}
instance ToResourceProperties CapacityAssignmentProperty where
  toResourceProperties CapacityAssignmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Athena::CapacityReservation.CapacityAssignment",
         supportsTags = Prelude.False,
         properties = ["WorkgroupNames" JSON..= workgroupNames]}
instance JSON.ToJSON CapacityAssignmentProperty where
  toJSON CapacityAssignmentProperty {..}
    = JSON.object ["WorkgroupNames" JSON..= workgroupNames]
instance Property "WorkgroupNames" CapacityAssignmentProperty where
  type PropertyType "WorkgroupNames" CapacityAssignmentProperty = ValueList Prelude.Text
  set newValue CapacityAssignmentProperty {..}
    = CapacityAssignmentProperty {workgroupNames = newValue, ..}