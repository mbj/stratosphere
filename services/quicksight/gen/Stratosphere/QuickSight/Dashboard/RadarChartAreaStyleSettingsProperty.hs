module Stratosphere.QuickSight.Dashboard.RadarChartAreaStyleSettingsProperty (
        RadarChartAreaStyleSettingsProperty(..),
        mkRadarChartAreaStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RadarChartAreaStyleSettingsProperty
  = RadarChartAreaStyleSettingsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkRadarChartAreaStyleSettingsProperty ::
  RadarChartAreaStyleSettingsProperty
mkRadarChartAreaStyleSettingsProperty
  = RadarChartAreaStyleSettingsProperty
      {visibility = Prelude.Nothing}
instance ToResourceProperties RadarChartAreaStyleSettingsProperty where
  toResourceProperties RadarChartAreaStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RadarChartAreaStyleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON RadarChartAreaStyleSettingsProperty where
  toJSON RadarChartAreaStyleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" RadarChartAreaStyleSettingsProperty where
  type PropertyType "Visibility" RadarChartAreaStyleSettingsProperty = Value Prelude.Text
  set newValue RadarChartAreaStyleSettingsProperty {}
    = RadarChartAreaStyleSettingsProperty
        {visibility = Prelude.pure newValue, ..}