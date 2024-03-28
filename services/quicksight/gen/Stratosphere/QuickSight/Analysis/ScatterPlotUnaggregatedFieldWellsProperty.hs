module Stratosphere.QuickSight.Analysis.ScatterPlotUnaggregatedFieldWellsProperty (
        module Exports, ScatterPlotUnaggregatedFieldWellsProperty(..),
        mkScatterPlotUnaggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotUnaggregatedFieldWellsProperty
  = ScatterPlotUnaggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                               label :: (Prelude.Maybe [DimensionFieldProperty]),
                                               size :: (Prelude.Maybe [MeasureFieldProperty]),
                                               xAxis :: (Prelude.Maybe [DimensionFieldProperty]),
                                               yAxis :: (Prelude.Maybe [DimensionFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotUnaggregatedFieldWellsProperty ::
  ScatterPlotUnaggregatedFieldWellsProperty
mkScatterPlotUnaggregatedFieldWellsProperty
  = ScatterPlotUnaggregatedFieldWellsProperty
      {category = Prelude.Nothing, label = Prelude.Nothing,
       size = Prelude.Nothing, xAxis = Prelude.Nothing,
       yAxis = Prelude.Nothing}
instance ToResourceProperties ScatterPlotUnaggregatedFieldWellsProperty where
  toResourceProperties ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotUnaggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "XAxis" Prelude.<$> xAxis,
                            (JSON..=) "YAxis" Prelude.<$> yAxis])}
instance JSON.ToJSON ScatterPlotUnaggregatedFieldWellsProperty where
  toJSON ScatterPlotUnaggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "XAxis" Prelude.<$> xAxis,
               (JSON..=) "YAxis" Prelude.<$> yAxis]))
instance Property "Category" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "Category" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Label" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "Label" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {label = Prelude.pure newValue, ..}
instance Property "Size" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "Size" ScatterPlotUnaggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {size = Prelude.pure newValue, ..}
instance Property "XAxis" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "XAxis" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {xAxis = Prelude.pure newValue, ..}
instance Property "YAxis" ScatterPlotUnaggregatedFieldWellsProperty where
  type PropertyType "YAxis" ScatterPlotUnaggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ScatterPlotUnaggregatedFieldWellsProperty
        {yAxis = Prelude.pure newValue, ..}