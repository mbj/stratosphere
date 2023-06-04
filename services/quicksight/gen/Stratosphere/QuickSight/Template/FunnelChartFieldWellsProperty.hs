module Stratosphere.QuickSight.Template.FunnelChartFieldWellsProperty (
        module Exports, FunnelChartFieldWellsProperty(..),
        mkFunnelChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FunnelChartAggregatedFieldWellsProperty as Exports
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
        {awsType = "AWS::QuickSight::Template.FunnelChartFieldWells",
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