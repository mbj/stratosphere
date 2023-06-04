module Stratosphere.QuickSight.Analysis.GradientStopProperty (
        GradientStopProperty(..), mkGradientStopProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GradientStopProperty
  = GradientStopProperty {color :: (Prelude.Maybe (Value Prelude.Text)),
                          dataValue :: (Prelude.Maybe (Value Prelude.Double)),
                          gradientOffset :: (Value Prelude.Double)}
mkGradientStopProperty ::
  Value Prelude.Double -> GradientStopProperty
mkGradientStopProperty gradientOffset
  = GradientStopProperty
      {gradientOffset = gradientOffset, color = Prelude.Nothing,
       dataValue = Prelude.Nothing}
instance ToResourceProperties GradientStopProperty where
  toResourceProperties GradientStopProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GradientStop",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GradientOffset" JSON..= gradientOffset]
                           (Prelude.catMaybes
                              [(JSON..=) "Color" Prelude.<$> color,
                               (JSON..=) "DataValue" Prelude.<$> dataValue]))}
instance JSON.ToJSON GradientStopProperty where
  toJSON GradientStopProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GradientOffset" JSON..= gradientOffset]
              (Prelude.catMaybes
                 [(JSON..=) "Color" Prelude.<$> color,
                  (JSON..=) "DataValue" Prelude.<$> dataValue])))
instance Property "Color" GradientStopProperty where
  type PropertyType "Color" GradientStopProperty = Value Prelude.Text
  set newValue GradientStopProperty {..}
    = GradientStopProperty {color = Prelude.pure newValue, ..}
instance Property "DataValue" GradientStopProperty where
  type PropertyType "DataValue" GradientStopProperty = Value Prelude.Double
  set newValue GradientStopProperty {..}
    = GradientStopProperty {dataValue = Prelude.pure newValue, ..}
instance Property "GradientOffset" GradientStopProperty where
  type PropertyType "GradientOffset" GradientStopProperty = Value Prelude.Double
  set newValue GradientStopProperty {..}
    = GradientStopProperty {gradientOffset = newValue, ..}