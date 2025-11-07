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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-linechartfieldwells.html>
    LineChartFieldWellsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-linechartfieldwells.html#cfn-quicksight-dashboard-linechartfieldwells-linechartaggregatedfieldwells>
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
  set newValue LineChartFieldWellsProperty {..}
    = LineChartFieldWellsProperty
        {lineChartAggregatedFieldWells = Prelude.pure newValue, ..}