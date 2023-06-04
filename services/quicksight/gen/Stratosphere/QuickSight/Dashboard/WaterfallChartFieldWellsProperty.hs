module Stratosphere.QuickSight.Dashboard.WaterfallChartFieldWellsProperty (
        module Exports, WaterfallChartFieldWellsProperty(..),
        mkWaterfallChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartFieldWellsProperty
  = WaterfallChartFieldWellsProperty {waterfallChartAggregatedFieldWells :: (Prelude.Maybe WaterfallChartAggregatedFieldWellsProperty)}
mkWaterfallChartFieldWellsProperty ::
  WaterfallChartFieldWellsProperty
mkWaterfallChartFieldWellsProperty
  = WaterfallChartFieldWellsProperty
      {waterfallChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties WaterfallChartFieldWellsProperty where
  toResourceProperties WaterfallChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WaterfallChartAggregatedFieldWells"
                              Prelude.<$> waterfallChartAggregatedFieldWells])}
instance JSON.ToJSON WaterfallChartFieldWellsProperty where
  toJSON WaterfallChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WaterfallChartAggregatedFieldWells"
                 Prelude.<$> waterfallChartAggregatedFieldWells]))
instance Property "WaterfallChartAggregatedFieldWells" WaterfallChartFieldWellsProperty where
  type PropertyType "WaterfallChartAggregatedFieldWells" WaterfallChartFieldWellsProperty = WaterfallChartAggregatedFieldWellsProperty
  set newValue WaterfallChartFieldWellsProperty {}
    = WaterfallChartFieldWellsProperty
        {waterfallChartAggregatedFieldWells = Prelude.pure newValue, ..}