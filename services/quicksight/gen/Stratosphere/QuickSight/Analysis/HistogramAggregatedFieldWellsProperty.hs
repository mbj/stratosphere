module Stratosphere.QuickSight.Analysis.HistogramAggregatedFieldWellsProperty (
        module Exports, HistogramAggregatedFieldWellsProperty(..),
        mkHistogramAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data HistogramAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-histogramaggregatedfieldwells.html>
    HistogramAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-histogramaggregatedfieldwells.html#cfn-quicksight-analysis-histogramaggregatedfieldwells-values>
                                           values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramAggregatedFieldWellsProperty ::
  HistogramAggregatedFieldWellsProperty
mkHistogramAggregatedFieldWellsProperty
  = HistogramAggregatedFieldWellsProperty
      {haddock_workaround_ = (), values = Prelude.Nothing}
instance ToResourceProperties HistogramAggregatedFieldWellsProperty where
  toResourceProperties HistogramAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HistogramAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON HistogramAggregatedFieldWellsProperty where
  toJSON HistogramAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Values" Prelude.<$> values]))
instance Property "Values" HistogramAggregatedFieldWellsProperty where
  type PropertyType "Values" HistogramAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue HistogramAggregatedFieldWellsProperty {..}
    = HistogramAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}