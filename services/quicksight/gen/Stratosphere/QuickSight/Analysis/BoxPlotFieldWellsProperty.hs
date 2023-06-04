module Stratosphere.QuickSight.Analysis.BoxPlotFieldWellsProperty (
        module Exports, BoxPlotFieldWellsProperty(..),
        mkBoxPlotFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BoxPlotAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotFieldWellsProperty
  = BoxPlotFieldWellsProperty {boxPlotAggregatedFieldWells :: (Prelude.Maybe BoxPlotAggregatedFieldWellsProperty)}
mkBoxPlotFieldWellsProperty :: BoxPlotFieldWellsProperty
mkBoxPlotFieldWellsProperty
  = BoxPlotFieldWellsProperty
      {boxPlotAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties BoxPlotFieldWellsProperty where
  toResourceProperties BoxPlotFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BoxPlotFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BoxPlotAggregatedFieldWells"
                              Prelude.<$> boxPlotAggregatedFieldWells])}
instance JSON.ToJSON BoxPlotFieldWellsProperty where
  toJSON BoxPlotFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BoxPlotAggregatedFieldWells"
                 Prelude.<$> boxPlotAggregatedFieldWells]))
instance Property "BoxPlotAggregatedFieldWells" BoxPlotFieldWellsProperty where
  type PropertyType "BoxPlotAggregatedFieldWells" BoxPlotFieldWellsProperty = BoxPlotAggregatedFieldWellsProperty
  set newValue BoxPlotFieldWellsProperty {}
    = BoxPlotFieldWellsProperty
        {boxPlotAggregatedFieldWells = Prelude.pure newValue, ..}