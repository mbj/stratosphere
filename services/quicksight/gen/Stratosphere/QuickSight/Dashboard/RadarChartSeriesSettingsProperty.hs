module Stratosphere.QuickSight.Dashboard.RadarChartSeriesSettingsProperty (
        module Exports, RadarChartSeriesSettingsProperty(..),
        mkRadarChartSeriesSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RadarChartAreaStyleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartSeriesSettingsProperty
  = RadarChartSeriesSettingsProperty {areaStyleSettings :: (Prelude.Maybe RadarChartAreaStyleSettingsProperty)}
mkRadarChartSeriesSettingsProperty ::
  RadarChartSeriesSettingsProperty
mkRadarChartSeriesSettingsProperty
  = RadarChartSeriesSettingsProperty
      {areaStyleSettings = Prelude.Nothing}
instance ToResourceProperties RadarChartSeriesSettingsProperty where
  toResourceProperties RadarChartSeriesSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RadarChartSeriesSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AreaStyleSettings" Prelude.<$> areaStyleSettings])}
instance JSON.ToJSON RadarChartSeriesSettingsProperty where
  toJSON RadarChartSeriesSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AreaStyleSettings" Prelude.<$> areaStyleSettings]))
instance Property "AreaStyleSettings" RadarChartSeriesSettingsProperty where
  type PropertyType "AreaStyleSettings" RadarChartSeriesSettingsProperty = RadarChartAreaStyleSettingsProperty
  set newValue RadarChartSeriesSettingsProperty {}
    = RadarChartSeriesSettingsProperty
        {areaStyleSettings = Prelude.pure newValue, ..}