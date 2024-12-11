module Stratosphere.Deadline.Fleet.AcceleratorCountRangeProperty (
        AcceleratorCountRangeProperty(..), mkAcceleratorCountRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorCountRangeProperty
  = AcceleratorCountRangeProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                   min :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAcceleratorCountRangeProperty ::
  Value Prelude.Integer -> AcceleratorCountRangeProperty
mkAcceleratorCountRangeProperty min
  = AcceleratorCountRangeProperty {min = min, max = Prelude.Nothing}
instance ToResourceProperties AcceleratorCountRangeProperty where
  toResourceProperties AcceleratorCountRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.AcceleratorCountRange",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON AcceleratorCountRangeProperty where
  toJSON AcceleratorCountRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" AcceleratorCountRangeProperty where
  type PropertyType "Max" AcceleratorCountRangeProperty = Value Prelude.Integer
  set newValue AcceleratorCountRangeProperty {..}
    = AcceleratorCountRangeProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorCountRangeProperty where
  type PropertyType "Min" AcceleratorCountRangeProperty = Value Prelude.Integer
  set newValue AcceleratorCountRangeProperty {..}
    = AcceleratorCountRangeProperty {min = newValue, ..}