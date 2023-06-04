module Stratosphere.QuickSight.Analysis.LineChartLineStyleSettingsProperty (
        LineChartLineStyleSettingsProperty(..),
        mkLineChartLineStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartLineStyleSettingsProperty
  = LineChartLineStyleSettingsProperty {lineInterpolation :: (Prelude.Maybe (Value Prelude.Text)),
                                        lineStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                        lineVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                        lineWidth :: (Prelude.Maybe (Value Prelude.Text))}
mkLineChartLineStyleSettingsProperty ::
  LineChartLineStyleSettingsProperty
mkLineChartLineStyleSettingsProperty
  = LineChartLineStyleSettingsProperty
      {lineInterpolation = Prelude.Nothing, lineStyle = Prelude.Nothing,
       lineVisibility = Prelude.Nothing, lineWidth = Prelude.Nothing}
instance ToResourceProperties LineChartLineStyleSettingsProperty where
  toResourceProperties LineChartLineStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartLineStyleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineInterpolation" Prelude.<$> lineInterpolation,
                            (JSON..=) "LineStyle" Prelude.<$> lineStyle,
                            (JSON..=) "LineVisibility" Prelude.<$> lineVisibility,
                            (JSON..=) "LineWidth" Prelude.<$> lineWidth])}
instance JSON.ToJSON LineChartLineStyleSettingsProperty where
  toJSON LineChartLineStyleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineInterpolation" Prelude.<$> lineInterpolation,
               (JSON..=) "LineStyle" Prelude.<$> lineStyle,
               (JSON..=) "LineVisibility" Prelude.<$> lineVisibility,
               (JSON..=) "LineWidth" Prelude.<$> lineWidth]))
instance Property "LineInterpolation" LineChartLineStyleSettingsProperty where
  type PropertyType "LineInterpolation" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineInterpolation = Prelude.pure newValue, ..}
instance Property "LineStyle" LineChartLineStyleSettingsProperty where
  type PropertyType "LineStyle" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineStyle = Prelude.pure newValue, ..}
instance Property "LineVisibility" LineChartLineStyleSettingsProperty where
  type PropertyType "LineVisibility" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineVisibility = Prelude.pure newValue, ..}
instance Property "LineWidth" LineChartLineStyleSettingsProperty where
  type PropertyType "LineWidth" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineWidth = Prelude.pure newValue, ..}