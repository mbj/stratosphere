module Stratosphere.QuickSight.Template.RadarChartFieldWellsProperty (
        module Exports, RadarChartFieldWellsProperty(..),
        mkRadarChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RadarChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartFieldWellsProperty
  = RadarChartFieldWellsProperty {radarChartAggregatedFieldWells :: (Prelude.Maybe RadarChartAggregatedFieldWellsProperty)}
mkRadarChartFieldWellsProperty :: RadarChartFieldWellsProperty
mkRadarChartFieldWellsProperty
  = RadarChartFieldWellsProperty
      {radarChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties RadarChartFieldWellsProperty where
  toResourceProperties RadarChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RadarChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RadarChartAggregatedFieldWells"
                              Prelude.<$> radarChartAggregatedFieldWells])}
instance JSON.ToJSON RadarChartFieldWellsProperty where
  toJSON RadarChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RadarChartAggregatedFieldWells"
                 Prelude.<$> radarChartAggregatedFieldWells]))
instance Property "RadarChartAggregatedFieldWells" RadarChartFieldWellsProperty where
  type PropertyType "RadarChartAggregatedFieldWells" RadarChartFieldWellsProperty = RadarChartAggregatedFieldWellsProperty
  set newValue RadarChartFieldWellsProperty {}
    = RadarChartFieldWellsProperty
        {radarChartAggregatedFieldWells = Prelude.pure newValue, ..}