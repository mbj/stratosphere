module Stratosphere.EC2.EC2Fleet.AcceleratorTotalMemoryMiBRequestProperty (
        AcceleratorTotalMemoryMiBRequestProperty(..),
        mkAcceleratorTotalMemoryMiBRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorTotalMemoryMiBRequestProperty
  = AcceleratorTotalMemoryMiBRequestProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                              min :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorTotalMemoryMiBRequestProperty ::
  AcceleratorTotalMemoryMiBRequestProperty
mkAcceleratorTotalMemoryMiBRequestProperty
  = AcceleratorTotalMemoryMiBRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties AcceleratorTotalMemoryMiBRequestProperty where
  toResourceProperties AcceleratorTotalMemoryMiBRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.AcceleratorTotalMemoryMiBRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorTotalMemoryMiBRequestProperty where
  toJSON AcceleratorTotalMemoryMiBRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorTotalMemoryMiBRequestProperty where
  type PropertyType "Max" AcceleratorTotalMemoryMiBRequestProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRequestProperty {..}
    = AcceleratorTotalMemoryMiBRequestProperty
        {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorTotalMemoryMiBRequestProperty where
  type PropertyType "Min" AcceleratorTotalMemoryMiBRequestProperty = Value Prelude.Integer
  set newValue AcceleratorTotalMemoryMiBRequestProperty {..}
    = AcceleratorTotalMemoryMiBRequestProperty
        {min = Prelude.pure newValue, ..}