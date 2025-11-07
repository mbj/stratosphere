module Stratosphere.QuickSight.Template.ScatterPlotUnaggregatedFieldWellsProperty (
        module Exports, ScatterPlotUnaggregatedFieldWellsProperty(..),
        mkScatterPlotUnaggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotUnaggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html>
    ScatterPlotUnaggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html#cfn-quicksight-template-scatterplotunaggregatedfieldwells-category>
                                               category :: (Prelude.Maybe [DimensionFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html#cfn-quicksight-template-scatterplotunaggregatedfieldwells-label>
                                               label :: (Prelude.Maybe [DimensionFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html#cfn-quicksight-template-scatterplotunaggregatedfieldwells-size>
                                               size :: (Prelude.Maybe [MeasureFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html#cfn-quicksight-template-scatterplotunaggregatedfieldwells-xaxis>
                                               xAxis :: (Prelude.Maybe [DimensionFieldProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-scatterplotunaggregatedfieldwells.html#cfn-quicksight-template-scatterplotunaggregatedfieldwells-yaxis>
                                               yAxis :: (Prelude.Maybe [DimensionFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotUnaggregatedFieldWellsProperty ::
  ScatterPlotUnaggregatedFieldWellsProperty
mkScatterPlotUnaggregatedFieldWellsProperty
  = ScatterPlotUnaggregatedFieldWellsProperty
      {haddock_workaround_ = (), category = Prelude.Nothing,
       label = Prelude.Nothing, size = Prelude.Nothing,
       xAxis = Prelude.Nothing, yAxis = Prelude.Nothing}
instance ToResourceProperties ScatterPlotUnaggregatedFieldWellsProperty where
  toResourceProperties ScatterPlotUnaggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ScatterPlotUnaggregatedFieldWells",
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