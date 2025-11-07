module Stratosphere.QuickSight.Analysis.BarChartAggregatedFieldWellsProperty (
        module Exports, BarChartAggregatedFieldWellsProperty(..),
        mkBarChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data BarChartAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartaggregatedfieldwells.html>
    BarChartAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartaggregatedfieldwells.html#cfn-quicksight-analysis-barchartaggregatedfieldwells-category>
                                          category :: (Prelude.Maybe [DimensionFieldProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartaggregatedfieldwells.html#cfn-quicksight-analysis-barchartaggregatedfieldwells-colors>
                                          colors :: (Prelude.Maybe [DimensionFieldProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartaggregatedfieldwells.html#cfn-quicksight-analysis-barchartaggregatedfieldwells-smallmultiples>
                                          smallMultiples :: (Prelude.Maybe [DimensionFieldProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-barchartaggregatedfieldwells.html#cfn-quicksight-analysis-barchartaggregatedfieldwells-values>
                                          values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartAggregatedFieldWellsProperty ::
  BarChartAggregatedFieldWellsProperty
mkBarChartAggregatedFieldWellsProperty
  = BarChartAggregatedFieldWellsProperty
      {haddock_workaround_ = (), category = Prelude.Nothing,
       colors = Prelude.Nothing, smallMultiples = Prelude.Nothing,
       values = Prelude.Nothing}
instance ToResourceProperties BarChartAggregatedFieldWellsProperty where
  toResourceProperties BarChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BarChartAggregatedFieldWells",
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