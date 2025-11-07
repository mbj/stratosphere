module Stratosphere.QuickSight.Analysis.HeatMapAggregatedFieldWellsProperty (
        module Exports, HeatMapAggregatedFieldWellsProperty(..),
        mkHeatMapAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapaggregatedfieldwells.html>
    HeatMapAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapaggregatedfieldwells.html#cfn-quicksight-analysis-heatmapaggregatedfieldwells-columns>
                                         columns :: (Prelude.Maybe [DimensionFieldProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapaggregatedfieldwells.html#cfn-quicksight-analysis-heatmapaggregatedfieldwells-rows>
                                         rows :: (Prelude.Maybe [DimensionFieldProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-heatmapaggregatedfieldwells.html#cfn-quicksight-analysis-heatmapaggregatedfieldwells-values>
                                         values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapAggregatedFieldWellsProperty ::
  HeatMapAggregatedFieldWellsProperty
mkHeatMapAggregatedFieldWellsProperty
  = HeatMapAggregatedFieldWellsProperty
      {haddock_workaround_ = (), columns = Prelude.Nothing,
       rows = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties HeatMapAggregatedFieldWellsProperty where
  toResourceProperties HeatMapAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HeatMapAggregatedFieldWells",
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