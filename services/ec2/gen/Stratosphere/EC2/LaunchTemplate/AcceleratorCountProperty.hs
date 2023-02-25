module Stratosphere.EC2.LaunchTemplate.AcceleratorCountProperty (
        AcceleratorCountProperty(..), mkAcceleratorCountProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorCountProperty
  = AcceleratorCountProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                              min :: (Prelude.Maybe (Value Prelude.Integer))}
mkAcceleratorCountProperty :: AcceleratorCountProperty
mkAcceleratorCountProperty
  = AcceleratorCountProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties AcceleratorCountProperty where
  toResourceProperties AcceleratorCountProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.AcceleratorCount",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorCountProperty where
  toJSON AcceleratorCountProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorCountProperty where
  type PropertyType "Max" AcceleratorCountProperty = Value Prelude.Integer
  set newValue AcceleratorCountProperty {..}
    = AcceleratorCountProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorCountProperty where
  type PropertyType "Min" AcceleratorCountProperty = Value Prelude.Integer
  set newValue AcceleratorCountProperty {..}
    = AcceleratorCountProperty {min = Prelude.pure newValue, ..}