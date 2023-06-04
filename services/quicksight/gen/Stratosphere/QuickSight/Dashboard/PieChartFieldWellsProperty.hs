module Stratosphere.QuickSight.Dashboard.PieChartFieldWellsProperty (
        module Exports, PieChartFieldWellsProperty(..),
        mkPieChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PieChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data PieChartFieldWellsProperty
  = PieChartFieldWellsProperty {pieChartAggregatedFieldWells :: (Prelude.Maybe PieChartAggregatedFieldWellsProperty)}
mkPieChartFieldWellsProperty :: PieChartFieldWellsProperty
mkPieChartFieldWellsProperty
  = PieChartFieldWellsProperty
      {pieChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties PieChartFieldWellsProperty where
  toResourceProperties PieChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PieChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PieChartAggregatedFieldWells"
                              Prelude.<$> pieChartAggregatedFieldWells])}
instance JSON.ToJSON PieChartFieldWellsProperty where
  toJSON PieChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PieChartAggregatedFieldWells"
                 Prelude.<$> pieChartAggregatedFieldWells]))
instance Property "PieChartAggregatedFieldWells" PieChartFieldWellsProperty where
  type PropertyType "PieChartAggregatedFieldWells" PieChartFieldWellsProperty = PieChartAggregatedFieldWellsProperty
  set newValue PieChartFieldWellsProperty {}
    = PieChartFieldWellsProperty
        {pieChartAggregatedFieldWells = Prelude.pure newValue, ..}