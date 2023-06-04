module Stratosphere.QuickSight.Template.FieldSeriesItemProperty (
        module Exports, FieldSeriesItemProperty(..),
        mkFieldSeriesItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartSeriesSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldSeriesItemProperty
  = FieldSeriesItemProperty {axisBinding :: (Value Prelude.Text),
                             fieldId :: (Value Prelude.Text),
                             settings :: (Prelude.Maybe LineChartSeriesSettingsProperty)}
mkFieldSeriesItemProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FieldSeriesItemProperty
mkFieldSeriesItemProperty axisBinding fieldId
  = FieldSeriesItemProperty
      {axisBinding = axisBinding, fieldId = fieldId,
       settings = Prelude.Nothing}
instance ToResourceProperties FieldSeriesItemProperty where
  toResourceProperties FieldSeriesItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FieldSeriesItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
                           (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings]))}
instance JSON.ToJSON FieldSeriesItemProperty where
  toJSON FieldSeriesItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AxisBinding" JSON..= axisBinding, "FieldId" JSON..= fieldId]
              (Prelude.catMaybes [(JSON..=) "Settings" Prelude.<$> settings])))
instance Property "AxisBinding" FieldSeriesItemProperty where
  type PropertyType "AxisBinding" FieldSeriesItemProperty = Value Prelude.Text
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {axisBinding = newValue, ..}
instance Property "FieldId" FieldSeriesItemProperty where
  type PropertyType "FieldId" FieldSeriesItemProperty = Value Prelude.Text
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {fieldId = newValue, ..}
instance Property "Settings" FieldSeriesItemProperty where
  type PropertyType "Settings" FieldSeriesItemProperty = LineChartSeriesSettingsProperty
  set newValue FieldSeriesItemProperty {..}
    = FieldSeriesItemProperty {settings = Prelude.pure newValue, ..}