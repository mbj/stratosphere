module Stratosphere.Deadline.Fleet.AcceleratorTotalMemoryMiBRangeProperty (
        AcceleratorTotalMemoryMiBRangeProperty(..),
        mkAcceleratorTotalMemoryMiBRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorTotalMemoryMiBRangeProperty
  = AcceleratorTotalMemoryMiBRangeProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                            min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorTotalMemoryMiBRangeProperty ::
  Value Prelude.Integer -> AcceleratorTotalMemoryMiBRangeProperty
mkAcceleratorTotalMemoryMiBRangeProperty min
  = AcceleratorTotalMemoryMiBRangeProperty
      {min = min, max = Prelude.Nothing}
instance ToResourceProperties AcceleratorTotalMemoryMiBRangeProperty where
  toResourceProperties AcceleratorTotalMemoryMiBRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.AcceleratorTotalMemoryMiBRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON AcceleratorTotalMemoryMiBRangeProperty where
  toJSON AcceleratorTotalMemoryMiBRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" AcceleratorTotalMemoryMiBRangeProperty where
  type PropertyType "Max" AcceleratorTotalMemoryMiBRangeProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRangeProperty {..}
    = AcceleratorTotalMemoryMiBRangeProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorTotalMemoryMiBRangeProperty where
  type PropertyType "Min" AcceleratorTotalMemoryMiBRangeProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRangeProperty {..}
    = AcceleratorTotalMemoryMiBRangeProperty {min = newValue, ..}