module Stratosphere.QuickSight.Template.HistogramAggregatedFieldWellsProperty (
        module Exports, HistogramAggregatedFieldWellsProperty(..),
        mkHistogramAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data HistogramAggregatedFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-histogramaggregatedfieldwells.html>
    HistogramAggregatedFieldWellsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-histogramaggregatedfieldwells.html#cfn-quicksight-template-histogramaggregatedfieldwells-values>
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
        {awsType = "AWS::QuickSight::Template.HistogramAggregatedFieldWells",
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