module Stratosphere.EC2.SpotFleet.MemoryMiBRequestProperty (
        MemoryMiBRequestProperty(..), mkMemoryMiBRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryMiBRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-memorymibrequest.html>
    MemoryMiBRequestProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-memorymibrequest.html#cfn-ec2-spotfleet-memorymibrequest-max>
                              max :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-memorymibrequest.html#cfn-ec2-spotfleet-memorymibrequest-min>
                              min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryMiBRequestProperty :: MemoryMiBRequestProperty
mkMemoryMiBRequestProperty
  = MemoryMiBRequestProperty
      {haddock_workaround_ = (), max = Prelude.Nothing,
       min = Prelude.Nothing}
instance ToResourceProperties MemoryMiBRequestProperty where
  toResourceProperties MemoryMiBRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.MemoryMiBRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON MemoryMiBRequestProperty where
  toJSON MemoryMiBRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" MemoryMiBRequestProperty where
  type PropertyType "Max" MemoryMiBRequestProperty = Value Prelude.Integer
  set newValue MemoryMiBRequestProperty {..}
    = MemoryMiBRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryMiBRequestProperty where
  type PropertyType "Min" MemoryMiBRequestProperty = Value Prelude.Integer
  set newValue MemoryMiBRequestProperty {..}
    = MemoryMiBRequestProperty {min = Prelude.pure newValue, ..}