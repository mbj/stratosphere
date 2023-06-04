module Stratosphere.QuickSight.Dashboard.FunnelChartFieldWellsProperty (
        module Exports, FunnelChartFieldWellsProperty(..),
        mkFunnelChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FunnelChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartFieldWellsProperty
  = FunnelChartFieldWellsProperty {funnelChartAggregatedFieldWells :: (Prelude.Maybe FunnelChartAggregatedFieldWellsProperty)}
mkFunnelChartFieldWellsProperty :: FunnelChartFieldWellsProperty
mkFunnelChartFieldWellsProperty
  = FunnelChartFieldWellsProperty
      {funnelChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties FunnelChartFieldWellsProperty where
  toResourceProperties FunnelChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FunnelChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FunnelChartAggregatedFieldWells"
                              Prelude.<$> funnelChartAggregatedFieldWells])}
instance JSON.ToJSON FunnelChartFieldWellsProperty where
  toJSON FunnelChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FunnelChartAggregatedFieldWells"
                 Prelude.<$> funnelChartAggregatedFieldWells]))
instance Property "FunnelChartAggregatedFieldWells" FunnelChartFieldWellsProperty where
  type PropertyType "FunnelChartAggregatedFieldWells" FunnelChartFieldWellsProperty = FunnelChartAggregatedFieldWellsProperty
  set newValue FunnelChartFieldWellsProperty {}
    = FunnelChartFieldWellsProperty
        {funnelChartAggregatedFieldWells = Prelude.pure newValue, ..}