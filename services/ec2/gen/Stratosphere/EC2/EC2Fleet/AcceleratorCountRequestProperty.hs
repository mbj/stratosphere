module Stratosphere.EC2.EC2Fleet.AcceleratorCountRequestProperty (
        AcceleratorCountRequestProperty(..),
        mkAcceleratorCountRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AcceleratorCountRequestProperty
  = AcceleratorCountRequestProperty {max :: (Prelude.Maybe (Value Prelude.Integer)),
                                     min :: (Prelude.Maybe (Value Prelude.Integer))}
mkAcceleratorCountRequestProperty ::
  AcceleratorCountRequestProperty
mkAcceleratorCountRequestProperty
  = AcceleratorCountRequestProperty
      {max = Prelude.Nothing, min = Prelude.Nothing}
instance ToResourceProperties AcceleratorCountRequestProperty where
  toResourceProperties AcceleratorCountRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.AcceleratorCountRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Max" Prelude.<$> max,
                            (JSON..=) "Min" Prelude.<$> min])}
instance JSON.ToJSON AcceleratorCountRequestProperty where
  toJSON AcceleratorCountRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Max" Prelude.<$> max,
               (JSON..=) "Min" Prelude.<$> min]))
instance Property "Max" AcceleratorCountRequestProperty where
  type PropertyType "Max" AcceleratorCountRequestProperty = Value Prelude.Integer
  set newValue AcceleratorCountRequestProperty {..}
    = AcceleratorCountRequestProperty {max = Prelude.pure newValue, ..}
instance Property "Min" AcceleratorCountRequestProperty where
  type PropertyType "Min" AcceleratorCountRequestProperty = Value Prelude.Integer
  set newValue AcceleratorCountRequestProperty {..}
    = AcceleratorCountRequestProperty {min = Prelude.pure newValue, ..}