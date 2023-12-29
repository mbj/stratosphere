module Stratosphere.QuickSight.Dashboard.BarChartAggregatedFieldWellsProperty (
        module Exports, BarChartAggregatedFieldWellsProperty(..),
        mkBarChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data BarChartAggregatedFieldWellsProperty
  = BarChartAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                          colors :: (Prelude.Maybe [DimensionFieldProperty]),
                                          smallMultiples :: (Prelude.Maybe [DimensionFieldProperty]),
                                          values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartAggregatedFieldWellsProperty ::
  BarChartAggregatedFieldWellsProperty
mkBarChartAggregatedFieldWellsProperty
  = BarChartAggregatedFieldWellsProperty
      {category = Prelude.Nothing, colors = Prelude.Nothing,
       smallMultiples = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties BarChartAggregatedFieldWellsProperty where
  toResourceProperties BarChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BarChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON BarChartAggregatedFieldWellsProperty where
  toJSON BarChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" BarChartAggregatedFieldWellsProperty where
  type PropertyType "Category" BarChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue BarChartAggregatedFieldWellsProperty {..}
    = BarChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Colors" BarChartAggregatedFieldWellsProperty where
  type PropertyType "Colors" BarChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue BarChartAggregatedFieldWellsProperty {..}
    = BarChartAggregatedFieldWellsProperty
        {colors = Prelude.pure newValue, ..}
instance Property "SmallMultiples" BarChartAggregatedFieldWellsProperty where
  type PropertyType "SmallMultiples" BarChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue BarChartAggregatedFieldWellsProperty {..}
    = BarChartAggregatedFieldWellsProperty
        {smallMultiples = Prelude.pure newValue, ..}
instance Property "Values" BarChartAggregatedFieldWellsProperty where
  type PropertyType "Values" BarChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue BarChartAggregatedFieldWellsProperty {..}
    = BarChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}