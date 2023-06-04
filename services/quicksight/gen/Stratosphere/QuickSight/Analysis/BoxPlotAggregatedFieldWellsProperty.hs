module Stratosphere.QuickSight.Analysis.BoxPlotAggregatedFieldWellsProperty (
        module Exports, BoxPlotAggregatedFieldWellsProperty(..),
        mkBoxPlotAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotAggregatedFieldWellsProperty
  = BoxPlotAggregatedFieldWellsProperty {groupBy :: (Prelude.Maybe [DimensionFieldProperty]),
                                         values :: (Prelude.Maybe [MeasureFieldProperty])}
mkBoxPlotAggregatedFieldWellsProperty ::
  BoxPlotAggregatedFieldWellsProperty
mkBoxPlotAggregatedFieldWellsProperty
  = BoxPlotAggregatedFieldWellsProperty
      {groupBy = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties BoxPlotAggregatedFieldWellsProperty where
  toResourceProperties BoxPlotAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BoxPlotAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupBy" Prelude.<$> groupBy,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON BoxPlotAggregatedFieldWellsProperty where
  toJSON BoxPlotAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupBy" Prelude.<$> groupBy,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "GroupBy" BoxPlotAggregatedFieldWellsProperty where
  type PropertyType "GroupBy" BoxPlotAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue BoxPlotAggregatedFieldWellsProperty {..}
    = BoxPlotAggregatedFieldWellsProperty
        {groupBy = Prelude.pure newValue, ..}
instance Property "Values" BoxPlotAggregatedFieldWellsProperty where
  type PropertyType "Values" BoxPlotAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue BoxPlotAggregatedFieldWellsProperty {..}
    = BoxPlotAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}