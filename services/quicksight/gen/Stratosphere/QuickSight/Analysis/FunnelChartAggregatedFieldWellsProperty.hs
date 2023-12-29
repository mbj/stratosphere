module Stratosphere.QuickSight.Analysis.FunnelChartAggregatedFieldWellsProperty (
        module Exports, FunnelChartAggregatedFieldWellsProperty(..),
        mkFunnelChartAggregatedFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DimensionFieldProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.MeasureFieldProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartAggregatedFieldWellsProperty
  = FunnelChartAggregatedFieldWellsProperty {category :: (Prelude.Maybe [DimensionFieldProperty]),
                                             values :: (Prelude.Maybe [MeasureFieldProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartAggregatedFieldWellsProperty ::
  FunnelChartAggregatedFieldWellsProperty
mkFunnelChartAggregatedFieldWellsProperty
  = FunnelChartAggregatedFieldWellsProperty
      {category = Prelude.Nothing, values = Prelude.Nothing}
instance ToResourceProperties FunnelChartAggregatedFieldWellsProperty where
  toResourceProperties FunnelChartAggregatedFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartAggregatedFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Category" Prelude.<$> category,
                            (JSON..=) "Values" Prelude.<$> values])}
instance JSON.ToJSON FunnelChartAggregatedFieldWellsProperty where
  toJSON FunnelChartAggregatedFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Category" Prelude.<$> category,
               (JSON..=) "Values" Prelude.<$> values]))
instance Property "Category" FunnelChartAggregatedFieldWellsProperty where
  type PropertyType "Category" FunnelChartAggregatedFieldWellsProperty = [DimensionFieldProperty]
  set newValue FunnelChartAggregatedFieldWellsProperty {..}
    = FunnelChartAggregatedFieldWellsProperty
        {category = Prelude.pure newValue, ..}
instance Property "Values" FunnelChartAggregatedFieldWellsProperty where
  type PropertyType "Values" FunnelChartAggregatedFieldWellsProperty = [MeasureFieldProperty]
  set newValue FunnelChartAggregatedFieldWellsProperty {..}
    = FunnelChartAggregatedFieldWellsProperty
        {values = Prelude.pure newValue, ..}