module Stratosphere.QuickSight.Template.AxisLinearScaleProperty (
        AxisLinearScaleProperty(..), mkAxisLinearScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLinearScaleProperty
  = AxisLinearScaleProperty {stepCount :: (Prelude.Maybe (Value Prelude.Double)),
                             stepSize :: (Prelude.Maybe (Value Prelude.Double))}
mkAxisLinearScaleProperty :: AxisLinearScaleProperty
mkAxisLinearScaleProperty
  = AxisLinearScaleProperty
      {stepCount = Prelude.Nothing, stepSize = Prelude.Nothing}
instance ToResourceProperties AxisLinearScaleProperty where
  toResourceProperties AxisLinearScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AxisLinearScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StepCount" Prelude.<$> stepCount,
                            (JSON..=) "StepSize" Prelude.<$> stepSize])}
instance JSON.ToJSON AxisLinearScaleProperty where
  toJSON AxisLinearScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StepCount" Prelude.<$> stepCount,
               (JSON..=) "StepSize" Prelude.<$> stepSize]))
instance Property "StepCount" AxisLinearScaleProperty where
  type PropertyType "StepCount" AxisLinearScaleProperty = Value Prelude.Double
  set newValue AxisLinearScaleProperty {..}
    = AxisLinearScaleProperty {stepCount = Prelude.pure newValue, ..}
instance Property "StepSize" AxisLinearScaleProperty where
  type PropertyType "StepSize" AxisLinearScaleProperty = Value Prelude.Double
  set newValue AxisLinearScaleProperty {..}
    = AxisLinearScaleProperty {stepSize = Prelude.pure newValue, ..}