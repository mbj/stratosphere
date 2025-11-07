module Stratosphere.QuickSight.Analysis.ComboChartAggregatedFieldWellsProperty (
        module Exports, ComboChartAggregatedFieldWellsProperty(..),
        mkComboChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data ComboChartAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartaggregatedfieldwells.html>
    ComboChartAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartaggregatedfieldwells.html#cfn-quicksight-analysis-combochartaggregatedfieldwells-barvalues>
                                            barValues :: (Prelude.Maybe [MeasureFieldProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartaggregatedfieldwells.html#cfn-quicksight-analysis-combochartaggregatedfieldwells-category>
                                            category :: (Prelude.Maybe [DimensionFieldProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartaggregatedfieldwells.html#cfn-quicksight-analysis-combochartaggregatedfieldwells-colors>
                                            colors :: (Prelude.Maybe [DimensionFieldProperty]),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartaggregatedfieldwells.html#cfn-quicksight-analysis-combochartaggregatedfieldwells-linevalues>
                                            lineValues :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComboChartAggregatedFieldWellsProperty ::
  ComboChartAggregatedFieldWellsProperty
mkComboChartAggregatedFieldWellsProperty
  = ComboChartAggregatedFieldWellsProperty
      {haddock_workaround_ = (), barValues = Prelude.Nothing,
       category = Prelude.Nothing, colors = Prelude.Nothing,
       lineValues = Prelude.Nothing}
instance ToResourceProperties ComboChartAggregatedFieldWellsProperty where
  toResourceProperties ComboChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComboChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BarValues" Prelude.<$> barValues,
                            (JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Colors" Prelude.<$> colors,
                            (JSON..=) "LineValues" Prelude.<$> lineValues])}
instance JSON.ToJSON ComboChartAggregatedFieldWellsProperty where
  toJSON ComboChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BarValues" Prelude.<$> barValues,
               (JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Colors" Prelude.<$> colors,
               (JSON..=) "LineValues" Prelude.<$> lineValues]))
instance Property "BarValues" ComboChartAggregatedFieldWellsProperty where
  type PropertyType "BarValues" ComboChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue ComboChartAggregatedFieldWellsProperty {..}
    = ComboChartAggregatedFieldWellsProperty
        {barValues = Prelude.pure newValue, ..}
instance Property "Category" ComboChartAggregatedFieldWellsProperty where
  type PropertyType "Category" ComboChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ComboChartAggregatedFieldWellsProperty {..}
    = ComboChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Colors" ComboChartAggregatedFieldWellsProperty where
  type PropertyType "Colors" ComboChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue ComboChartAggregatedFieldWellsProperty {..}
    = ComboChartAggregatedFieldWellsProperty
        {colors = Prelude.pure newValue, ..}
instance Property "LineValues" ComboChartAggregatedFieldWellsProperty where
  type PropertyType "LineValues" ComboChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue ComboChartAggregatedFieldWellsProperty {..}
    = ComboChartAggregatedFieldWellsProperty
        {lineValues = Prelude.pure newValue, ..}