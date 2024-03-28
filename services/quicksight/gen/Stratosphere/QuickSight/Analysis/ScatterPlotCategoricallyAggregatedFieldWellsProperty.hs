module Stratosphere.QuickSight.Analysis.ScatterPlotCategoricallyAggregatedFieldWellsProperty (
        module Exports,
        ScatterPlotCategoricallyAggregatedFieldWellsProperty(..),
        mkScatterPlotCategoricallyAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotCategoricallyAggregatedFieldWellsProperty
  = ScatterPlotCategoricallyAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                                          label :: (Prelude.Maybe [DimensionFieldProperty]),
                                                          size :: (Prelude.Maybe [MeasureFieldProperty]),
                                                          xAxis :: (Prelude.Maybe [MeasureFieldProperty]),
                                                          yAxis :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotCategoricallyAggregatedFieldWellsProperty ::
  ScatterPlotCategoricallyAggregatedFieldWellsProperty
mkScatterPlotCategoricallyAggregatedFieldWellsProperty
  = ScatterPlotCategoricallyAggregatedFieldWellsProperty
      {category = Prelude.Nothing, label = Prelude.Nothing,
       size = Prelude.Nothing, xAxis = Prelude.Nothing,
       yAxis = Prelude.Nothing}
instance ToResourceProperties ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  toResourceProperties
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotCategoricallyAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "XAxis" Prelude.<$> xAxis,
                            (JSON..=) "YAxis" Prelude.<$> yAxis])}
instance JSON.ToJSON ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  toJSON ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "XAxis" Prelude.<$> xAxis,
               (JSON..=) "YAxis" Prelude.<$> yAxis]))
instance Property "Category" ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  type PropertyType "Category" ScatterPlotCategoricallyAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set
    newValue
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ScatterPlotCategoricallyAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Label" ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  type PropertyType "Label" ScatterPlotCategoricallyAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set
    newValue
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ScatterPlotCategoricallyAggregatedFieldWellsProperty
        {label = Prelude.pure newValue, ..}
instance Property "Size" ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  type PropertyType "Size" ScatterPlotCategoricallyAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set
    newValue
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ScatterPlotCategoricallyAggregatedFieldWellsProperty
        {size = Prelude.pure newValue, ..}
instance Property "XAxis" ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  type PropertyType "XAxis" ScatterPlotCategoricallyAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set
    newValue
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ScatterPlotCategoricallyAggregatedFieldWellsProperty
        {xAxis = Prelude.pure newValue, ..}
instance Property "YAxis" ScatterPlotCategoricallyAggregatedFieldWellsProperty where
  type PropertyType "YAxis" ScatterPlotCategoricallyAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set
    newValue
    ScatterPlotCategoricallyAggregatedFieldWellsProperty {..}
    = ScatterPlotCategoricallyAggregatedFieldWellsProperty
        {yAxis = Prelude.pure newValue, ..}