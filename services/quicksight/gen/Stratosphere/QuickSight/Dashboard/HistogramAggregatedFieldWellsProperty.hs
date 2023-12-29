module Stratosphere.QuickSight.Dashboard.HistogramAggregatedFieldWellsProperty (
        module Exports, HistogramAggregatedFieldWellsProperty(..),
        mkHistogramAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data HistogramAggregatedFieldWellsProperty
  = HistogramAggregatedFieldWellsProperty {values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramAggregatedFieldWellsProperty ::
  HistogramAggregatedFieldWellsProperty
mkHistogramAggregatedFieldWellsProperty
  = HistogramAggregatedFieldWellsProperty {values = Prelude.Nothing}
instance ToResourceProperties HistogramAggregatedFieldWellsProperty where
  toResourceProperties HistogramAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.HistogramAggregatedFieldWells",
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