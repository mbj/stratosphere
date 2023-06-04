module Stratosphere.QuickSight.Analysis.LineChartFieldWellsProperty (
        module Exports, LineChartFieldWellsProperty(..),
        mkLineChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data LineChartFieldWellsProperty
  = LineChartFieldWellsProperty {lineChartAggregatedFieldWells :: (Prelude.Maybe LineChartAggregatedFieldWellsProperty)}
mkLineChartFieldWellsProperty :: LineChartFieldWellsProperty
mkLineChartFieldWellsProperty
  = LineChartFieldWellsProperty
      {lineChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties LineChartFieldWellsProperty where
  toResourceProperties LineChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineChartAggregatedFieldWells"
                              Prelude.<$> lineChartAggregatedFieldWells])}
instance JSON.ToJSON LineChartFieldWellsProperty where
  toJSON LineChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineChartAggregatedFieldWells"
                 Prelude.<$> lineChartAggregatedFieldWells]))
instance Property "LineChartAggregatedFieldWells" LineChartFieldWellsProperty where
  type PropertyType "LineChartAggregatedFieldWells" LineChartFieldWellsProperty = LineChartAggregatedFieldWellsProperty
  set newValue LineChartFieldWellsProperty {}
    = LineChartFieldWellsProperty
        {lineChartAggregatedFieldWells = Prelude.pure newValue, ..}