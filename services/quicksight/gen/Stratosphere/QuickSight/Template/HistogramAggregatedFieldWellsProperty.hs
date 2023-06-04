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
  = HistogramAggregatedFieldWellsProperty {values :: (Prelude.Maybe [MeasureFieldProperty])}
mkHistogramAggregatedFieldWellsProperty ::
  HistogramAggregatedFieldWellsProperty
mkHistogramAggregatedFieldWellsProperty
  = HistogramAggregatedFieldWellsProperty {values = Prelude.Nothing}
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
  set newValue HistogramAggregatedFieldWellsProperty {}
    = HistogramAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}