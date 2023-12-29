module Stratosphere.QuickSight.Dashboard.LineChartFieldWellsProperty (
        module Exports, LineChartFieldWellsProperty(..),
        mkLineChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LineChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data LineChartFieldWellsProperty
  = LineChartFieldWellsProperty {lineChartAggregatedFieldWells :: (Prelude.Maybe LineChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartFieldWellsProperty :: LineChartFieldWellsProperty
mkLineChartFieldWellsProperty
  = LineChartFieldWellsProperty
      {lineChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties LineChartFieldWellsProperty where
  toResourceProperties LineChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.LineChartFieldWells",
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