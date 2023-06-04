module Stratosphere.QuickSight.Analysis.HeatMapFieldWellsProperty (
        module Exports, HeatMapFieldWellsProperty(..),
        mkHeatMapFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.HeatMapAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapFieldWellsProperty
  = HeatMapFieldWellsProperty {heatMapAggregatedFieldWells :: (Prelude.Maybe HeatMapAggregatedFieldWellsProperty)}
mkHeatMapFieldWellsProperty :: HeatMapFieldWellsProperty
mkHeatMapFieldWellsProperty
  = HeatMapFieldWellsProperty
      {heatMapAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties HeatMapFieldWellsProperty where
  toResourceProperties HeatMapFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HeatMapFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeatMapAggregatedFieldWells"
                              Prelude.<$> heatMapAggregatedFieldWells])}
instance JSON.ToJSON HeatMapFieldWellsProperty where
  toJSON HeatMapFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeatMapAggregatedFieldWells"
                 Prelude.<$> heatMapAggregatedFieldWells]))
instance Property "HeatMapAggregatedFieldWells" HeatMapFieldWellsProperty where
  type PropertyType "HeatMapAggregatedFieldWells" HeatMapFieldWellsProperty = HeatMapAggregatedFieldWellsProperty
  set newValue HeatMapFieldWellsProperty {}
    = HeatMapFieldWellsProperty
        {heatMapAggregatedFieldWells = Prelude.pure newValue, ..}