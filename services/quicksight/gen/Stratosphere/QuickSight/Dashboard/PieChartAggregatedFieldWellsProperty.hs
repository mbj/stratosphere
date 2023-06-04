module Stratosphere.QuickSight.Dashboard.PieChartAggregatedFieldWellsProperty (
        module Exports, PieChartAggregatedFieldWellsProperty(..),
        mkPieChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data PieChartAggregatedFieldWellsProperty
  = PieChartAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                          smallMultiples :: (Prelude.Maybe [DimensionFieldProperty]),
                                          values :: (Prelude.Maybe [MeasureFieldProperty])}
mkPieChartAggregatedFieldWellsProperty ::
  PieChartAggregatedFieldWellsProperty
mkPieChartAggregatedFieldWellsProperty
  = PieChartAggregatedFieldWellsProperty
      {category = Prelude.Nothing, smallMultiples = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties PieChartAggregatedFieldWellsProperty where
  toResourceProperties PieChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PieChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON PieChartAggregatedFieldWellsProperty where
  toJSON PieChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "SmallMultiples" Prelude.<$> smallMultiples,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" PieChartAggregatedFieldWellsProperty where
  type PropertyType "Category" PieChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue PieChartAggregatedFieldWellsProperty {..}
    = PieChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "SmallMultiples" PieChartAggregatedFieldWellsProperty where
  type PropertyType "SmallMultiples" PieChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue PieChartAggregatedFieldWellsProperty {..}
    = PieChartAggregatedFieldWellsProperty
        {smallMultiples = Prelude.pure newValue, ..}
instance Property "Values" PieChartAggregatedFieldWellsProperty where
  type PropertyType "Values" PieChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue PieChartAggregatedFieldWellsProperty {..}
    = PieChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}