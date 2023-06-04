module Stratosphere.QuickSight.Dashboard.AxisLogarithmicScaleProperty (
        AxisLogarithmicScaleProperty(..), mkAxisLogarithmicScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLogarithmicScaleProperty
  = AxisLogarithmicScaleProperty {base :: (Prelude.Maybe (Value Prelude.Double))}
mkAxisLogarithmicScaleProperty :: AxisLogarithmicScaleProperty
mkAxisLogarithmicScaleProperty
  = AxisLogarithmicScaleProperty {base = Prelude.Nothing}
instance ToResourceProperties AxisLogarithmicScaleProperty where
  toResourceProperties AxisLogarithmicScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisLogarithmicScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Base" Prelude.<$> base])}
instance JSON.ToJSON AxisLogarithmicScaleProperty where
  toJSON AxisLogarithmicScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Base" Prelude.<$> base]))
instance Property "Base" AxisLogarithmicScaleProperty where
  type PropertyType "Base" AxisLogarithmicScaleProperty = Value Prelude.Double
  set newValue AxisLogarithmicScaleProperty {}
    = AxisLogarithmicScaleProperty {base = Prelude.pure newValue, ..}