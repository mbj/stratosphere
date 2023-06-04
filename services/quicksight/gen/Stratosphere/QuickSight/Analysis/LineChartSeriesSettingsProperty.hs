module Stratosphere.QuickSight.Analysis.LineChartSeriesSettingsProperty (
        module Exports, LineChartSeriesSettingsProperty(..),
        mkLineChartSeriesSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartLineStyleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartMarkerStyleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data LineChartSeriesSettingsProperty
  = LineChartSeriesSettingsProperty {lineStyleSettings :: (Prelude.Maybe LineChartLineStyleSettingsProperty),
                                     markerStyleSettings :: (Prelude.Maybe LineChartMarkerStyleSettingsProperty)}
mkLineChartSeriesSettingsProperty ::
  LineChartSeriesSettingsProperty
mkLineChartSeriesSettingsProperty
  = LineChartSeriesSettingsProperty
      {lineStyleSettings = Prelude.Nothing,
       markerStyleSettings = Prelude.Nothing}
instance ToResourceProperties LineChartSeriesSettingsProperty where
  toResourceProperties LineChartSeriesSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartSeriesSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
                            (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings])}
instance JSON.ToJSON LineChartSeriesSettingsProperty where
  toJSON LineChartSeriesSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
               (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings]))
instance Property "LineStyleSettings" LineChartSeriesSettingsProperty where
  type PropertyType "LineStyleSettings" LineChartSeriesSettingsProperty = LineChartLineStyleSettingsProperty
  set newValue LineChartSeriesSettingsProperty {..}
    = LineChartSeriesSettingsProperty
        {lineStyleSettings = Prelude.pure newValue, ..}
instance Property "MarkerStyleSettings" LineChartSeriesSettingsProperty where
  type PropertyType "MarkerStyleSettings" LineChartSeriesSettingsProperty = LineChartMarkerStyleSettingsProperty
  set newValue LineChartSeriesSettingsProperty {..}
    = LineChartSeriesSettingsProperty
        {markerStyleSettings = Prelude.pure newValue, ..}