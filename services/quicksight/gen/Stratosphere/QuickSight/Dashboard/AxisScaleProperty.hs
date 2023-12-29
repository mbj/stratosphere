module Stratosphere.QuickSight.Dashboard.AxisScaleProperty (
        module Exports, AxisScaleProperty(..), mkAxisScaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisLinearScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisLogarithmicScaleProperty as Exports
import Stratosphere.ResourceProperties
data AxisScaleProperty
  = AxisScaleProperty {linear :: (Prelude.Maybe AxisLinearScaleProperty),
                       logarithmic :: (Prelude.Maybe AxisLogarithmicScaleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAxisScaleProperty :: AxisScaleProperty
mkAxisScaleProperty
  = AxisScaleProperty
      {linear = Prelude.Nothing, logarithmic = Prelude.Nothing}
instance ToResourceProperties AxisScaleProperty where
  toResourceProperties AxisScaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.AxisScale",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Linear" Prelude.<$> linear,
                            (JSON..=) "Logarithmic" Prelude.<$> logarithmic])}
instance JSON.ToJSON AxisScaleProperty where
  toJSON AxisScaleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Linear" Prelude.<$> linear,
               (JSON..=) "Logarithmic" Prelude.<$> logarithmic]))
instance Property "Linear" AxisScaleProperty where
  type PropertyType "Linear" AxisScaleProperty = AxisLinearScaleProperty
  set newValue AxisScaleProperty {..}
    = AxisScaleProperty {linear = Prelude.pure newValue, ..}
instance Property "Logarithmic" AxisScaleProperty where
  type PropertyType "Logarithmic" AxisScaleProperty = AxisLogarithmicScaleProperty
  set newValue AxisScaleProperty {..}
    = AxisScaleProperty {logarithmic = Prelude.pure newValue, ..}