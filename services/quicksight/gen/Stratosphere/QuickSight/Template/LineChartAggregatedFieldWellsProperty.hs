module Stratosphere.QuickSight.Template.LineChartAggregatedFieldWellsProperty (
        module Exports, LineChartAggregatedFieldWellsProperty(..),
        mkLineChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data LineChartAggregatedFieldWellsProperty
  = LineChartAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                           colors :: (Prelude.Maybe [DimensionFieldProperty]),
                                           smallMultiples :: (Prelude.Maybe [DimensionFieldProperty]),
                                           values :: (Prelude.Maybe [MeasureFieldProperty])}
mkLineChartAggregatedFieldWellsProperty ::
  LineChartAggregatedFieldWellsProperty
mkLineChartAggregatedFieldWellsProperty
  = LineChartAggregatedFieldWellsProperty
      {category = Prelude.Nothing, colors = Prelude.Nothing,
       smallMultiples = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties LineChartAggregatedFieldWellsProperty where
  toResourceProperties LineChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LineChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON LineChartAggregatedFieldWellsProperty where
  toJSON LineChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" LineChartAggregatedFieldWellsProperty where
  type PropertyType "Category" LineChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue LineChartAggregatedFieldWellsProperty {..}
    = LineChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Colors" LineChartAggregatedFieldWellsProperty where
  type PropertyType "Colors" LineChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue LineChartAggregatedFieldWellsProperty {..}
    = LineChartAggregatedFieldWellsProperty
        {colors = Prelude.pure newValue, ..}
instance Property "SmallMultiples" LineChartAggregatedFieldWellsProperty where
  type PropertyType "SmallMultiples" LineChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue LineChartAggregatedFieldWellsProperty {..}
    = LineChartAggregatedFieldWellsProperty
        {smallMultiples = Prelude.pure newValue, ..}
instance Property "Values" LineChartAggregatedFieldWellsProperty where
  type PropertyType "Values" LineChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue LineChartAggregatedFieldWellsProperty {..}
    = LineChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}