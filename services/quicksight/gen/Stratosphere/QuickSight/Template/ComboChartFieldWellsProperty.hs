module Stratosphere.QuickSight.Template.ComboChartFieldWellsProperty (
        module Exports, ComboChartFieldWellsProperty(..),
        mkComboChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComboChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data ComboChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartfieldwells.html>
    ComboChartFieldWellsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-combochartfieldwells.html#cfn-quicksight-template-combochartfieldwells-combochartaggregatedfieldwells>
                                  comboChartAggregatedFieldWells :: (Prelude.Maybe ComboChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComboChartFieldWellsProperty :: ComboChartFieldWellsProperty
mkComboChartFieldWellsProperty
  = ComboChartFieldWellsProperty
      {haddock_workaround_ = (),
       comboChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties ComboChartFieldWellsProperty where
  toResourceProperties ComboChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ComboChartFieldWells",
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
  set newValue ComboChartFieldWellsProperty {..}
    = ComboChartFieldWellsProperty
        {comboChartAggregatedFieldWells = Prelude.pure newValue, ..}