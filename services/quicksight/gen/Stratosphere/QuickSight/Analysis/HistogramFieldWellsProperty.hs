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
  = HistogramFieldWellsProperty {histogramAggregatedFieldWells :: (Prelude.Maybe HistogramAggregatedFieldWellsProperty)}
mkHistogramFieldWellsProperty :: HistogramFieldWellsProperty
mkHistogramFieldWellsProperty
  = HistogramFieldWellsProperty
      {histogramAggregatedFieldWells = Prelude.Nothing}
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
  set newValue HistogramFieldWellsProperty {}
    = HistogramFieldWellsProperty
        {histogramAggregatedFieldWells = Prelude.pure newValue, ..}