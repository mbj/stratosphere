module Stratosphere.QuickSight.Analysis.ComboChartFieldWellsProperty (
        module Exports, ComboChartFieldWellsProperty(..),
        mkComboChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComboChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data ComboChartFieldWellsProperty
  = ComboChartFieldWellsProperty {comboChartAggregatedFieldWells :: (Prelude.Maybe ComboChartAggregatedFieldWellsProperty)}
mkComboChartFieldWellsProperty :: ComboChartFieldWellsProperty
mkComboChartFieldWellsProperty
  = ComboChartFieldWellsProperty
      {comboChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties ComboChartFieldWellsProperty where
  toResourceProperties ComboChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComboChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ComboChartAggregatedFieldWells"
                              Prelude.<$> comboChartAggregatedFieldWells])}
instance JSON.ToJSON ComboChartFieldWellsProperty where
  toJSON ComboChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ComboChartAggregatedFieldWells"
                 Prelude.<$> comboChartAggregatedFieldWells]))
instance Property "ComboChartAggregatedFieldWells" ComboChartFieldWellsProperty where
  type PropertyType "ComboChartAggregatedFieldWells" ComboChartFieldWellsProperty = ComboChartAggregatedFieldWellsProperty
  set newValue ComboChartFieldWellsProperty {}
    = ComboChartFieldWellsProperty
        {comboChartAggregatedFieldWells = Prelude.pure newValue, ..}