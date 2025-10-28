module Stratosphere.Deadline.Fleet.MemoryMiBRangeProperty (
        MemoryMiBRangeProperty(..), mkMemoryMiBRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemoryMiBRangeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-memorymibrange.html>
    MemoryMiBRangeProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-memorymibrange.html#cfn-deadline-fleet-memorymibrange-max>
                            max :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-memorymibrange.html#cfn-deadline-fleet-memorymibrange-min>
                            min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemoryMiBRangeProperty ::
  Value Prelude.Integer -> MemoryMiBRangeProperty
mkMemoryMiBRangeProperty min
  = MemoryMiBRangeProperty
      {haddock_workaround_ = (), min = min, max = Prelude.Nothing}
instance ToResourceProperties MemoryMiBRangeProperty where
  toResourceProperties MemoryMiBRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.MemoryMiBRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON MemoryMiBRangeProperty where
  toJSON MemoryMiBRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" MemoryMiBRangeProperty where
  type PropertyType "Max" MemoryMiBRangeProperty = Value Prelude.Integer
  set newValue MemoryMiBRangeProperty {..}
    = MemoryMiBRangeProperty {max = Prelude.pure newValue, ..}
instance Property "Min" MemoryMiBRangeProperty where
  type PropertyType "Min" MemoryMiBRangeProperty = Value Prelude.Integer
  set newValue MemoryMiBRangeProperty {..}
    = MemoryMiBRangeProperty {min = newValue, ..}