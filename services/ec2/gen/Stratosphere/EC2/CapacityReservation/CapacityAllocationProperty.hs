module Stratosphere.EC2.CapacityReservation.CapacityAllocationProperty (
        CapacityAllocationProperty(..), mkCapacityAllocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityAllocationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-capacityallocation.html>
    CapacityAllocationProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-capacityallocation.html#cfn-ec2-capacityreservation-capacityallocation-allocationtype>
                                allocationType :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-capacityreservation-capacityallocation.html#cfn-ec2-capacityreservation-capacityallocation-count>
                                count :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityAllocationProperty :: CapacityAllocationProperty
mkCapacityAllocationProperty
  = CapacityAllocationProperty
      {haddock_workaround_ = (), allocationType = Prelude.Nothing,
       count = Prelude.Nothing}
instance ToResourceProperties CapacityAllocationProperty where
  toResourceProperties CapacityAllocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservation.CapacityAllocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationType" Prelude.<$> allocationType,
                            (JSON..=) "Count" Prelude.<$> count])}
instance JSON.ToJSON CapacityAllocationProperty where
  toJSON CapacityAllocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationType" Prelude.<$> allocationType,
               (JSON..=) "Count" Prelude.<$> count]))
instance Property "AllocationType" CapacityAllocationProperty where
  type PropertyType "AllocationType" CapacityAllocationProperty = Value Prelude.Text
  set newValue CapacityAllocationProperty {..}
    = CapacityAllocationProperty
        {allocationType = Prelude.pure newValue, ..}
instance Property "Count" CapacityAllocationProperty where
  type PropertyType "Count" CapacityAllocationProperty = Value Prelude.Integer
  set newValue CapacityAllocationProperty {..}
    = CapacityAllocationProperty {count = Prelude.pure newValue, ..}