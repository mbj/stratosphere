module Stratosphere.QuickSight.Template.LineChartFieldWellsProperty (
        module Exports, LineChartFieldWellsProperty(..),
        mkLineChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data LineChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartfieldwells.html>
    LineChartFieldWellsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartfieldwells.html#cfn-quicksight-template-linechartfieldwells-linechartaggregatedfieldwells>
                                 lineChartAggregatedFieldWells :: (Prelude.Maybe LineChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartFieldWellsProperty :: LineChartFieldWellsProperty
mkLineChartFieldWellsProperty
  = LineChartFieldWellsProperty
      {haddock_workaround_ = (),
       lineChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties LineChartFieldWellsProperty where
  toResourceProperties LineChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LineChartFieldWells",
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
  set newValue LineChartFieldWellsProperty {..}
    = LineChartFieldWellsProperty
        {lineChartAggregatedFieldWells = Prelude.pure newValue, ..}