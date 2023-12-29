module Stratosphere.QuickSight.Template.HeatMapAggregatedFieldWellsProperty (
        module Exports, HeatMapAggregatedFieldWellsProperty(..),
        mkHeatMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapAggregatedFieldWellsProperty
  = HeatMapAggregatedFieldWellsProperty {columns :: (Prelude.Maybe [DimensionFieldProperty]),
                                         rows :: (Prelude.Maybe [DimensionFieldProperty]),
                                         values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapAggregatedFieldWellsProperty ::
  HeatMapAggregatedFieldWellsProperty
mkHeatMapAggregatedFieldWellsProperty
  = HeatMapAggregatedFieldWellsProperty
      {columns = Prelude.Nothing, rows = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties HeatMapAggregatedFieldWellsProperty where
  toResourceProperties HeatMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.HeatMapAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Columns" Prelude.<$> columns,
                            (JSON..=) "Rows" Prelude.<$> rows,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HeatMapAggregatedFieldWellsProperty where
  toJSON HeatMapAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Columns" Prelude.<$> columns,
               (JSON..=) "Rows" Prelude.<$> rows,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Columns" HeatMapAggregatedFieldWellsProperty where
  type PropertyType "Columns" HeatMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue HeatMapAggregatedFieldWellsProperty {..}
    = HeatMapAggregatedFieldWellsProperty
        {columns = Prelude.pure newValue, ..}
instance Property "Rows" HeatMapAggregatedFieldWellsProperty where
  type PropertyType "Rows" HeatMapAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue HeatMapAggregatedFieldWellsProperty {..}
    = HeatMapAggregatedFieldWellsProperty
        {rows = Prelude.pure newValue, ..}
instance Property "Values" HeatMapAggregatedFieldWellsProperty where
  type PropertyType "Values" HeatMapAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue HeatMapAggregatedFieldWellsProperty {..}
    = HeatMapAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}