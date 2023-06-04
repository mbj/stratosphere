module Stratosphere.QuickSight.Analysis.WaterfallChartAggregatedFieldWellsProperty (
        module Exports, WaterfallChartAggregatedFieldWellsProperty(..),
        mkWaterfallChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartAggregatedFieldWellsProperty
  = WaterfallChartAggregatedFieldWellsProperty {breakdowns :: (Prelude.Maybe [DimensionFieldProperty]),
                                                categories :: (Prelude.Maybe [DimensionFieldProperty]),
                                                values :: (Prelude.Maybe [MeasureFieldProperty])}
mkWaterfallChartAggregatedFieldWellsProperty ::
  WaterfallChartAggregatedFieldWellsProperty
mkWaterfallChartAggregatedFieldWellsProperty
  = WaterfallChartAggregatedFieldWellsProperty
      {breakdowns = Prelude.Nothing, categories = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties WaterfallChartAggregatedFieldWellsProperty where
  toResourceProperties
    WaterfallChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.WaterfallChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Breakdowns" Prelude.<$> breakdowns,
                            (JSON..=) "Categories" Prelude.<$> categories,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON WaterfallChartAggregatedFieldWellsProperty where
  toJSON WaterfallChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Breakdowns" Prelude.<$> breakdowns,
               (JSON..=) "Categories" Prelude.<$> categories,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Breakdowns" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Breakdowns" WaterfallChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {breakdowns = Prelude.pure newValue, ..}
instance Property "Categories" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Categories" WaterfallChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {categories = Prelude.pure newValue, ..}
instance Property "Values" WaterfallChartAggregatedFieldWellsProperty where
  type PropertyType "Values" WaterfallChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue WaterfallChartAggregatedFieldWellsProperty {..}
    = WaterfallChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}