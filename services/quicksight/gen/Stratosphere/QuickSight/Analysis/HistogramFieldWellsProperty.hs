module Stratosphere.QuickSight.Analysis.HistogramFieldWellsProperty (
        module Exports, HistogramFieldWellsProperty(..),
        mkHistogramFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.HistogramAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data HistogramFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-histogramfieldwells.html>
    HistogramFieldWellsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-histogramfieldwells.html#cfn-quicksight-analysis-histogramfieldwells-histogramaggregatedfieldwells>
                                 histogramAggregatedFieldWells :: (Prelude.Maybe HistogramAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramFieldWellsProperty :: HistogramFieldWellsProperty
mkHistogramFieldWellsProperty
  = HistogramFieldWellsProperty
      {haddock_workaround_ = (),
       histogramAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties HistogramFieldWellsProperty where
  toResourceProperties HistogramFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.HistogramFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HistogramAggregatedFieldWells"
                              Prelude.<$> histogramAggregatedFieldWells])}
instance JSON.ToJSON HistogramFieldWellsProperty where
  toJSON HistogramFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HistogramAggregatedFieldWells"
                 Prelude.<$> histogramAggregatedFieldWells]))
instance Property "HistogramAggregatedFieldWells" HistogramFieldWellsProperty where
  type PropertyType "HistogramAggregatedFieldWells" HistogramFieldWellsProperty = HistogramAggregatedFieldWellsProperty
  set newValue HistogramFieldWellsProperty {..}
    = HistogramFieldWellsProperty
        {histogramAggregatedFieldWells = Prelude.pure newValue, ..}