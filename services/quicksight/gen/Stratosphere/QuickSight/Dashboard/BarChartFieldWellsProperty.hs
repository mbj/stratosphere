module Stratosphere.QuickSight.Dashboard.BarChartFieldWellsProperty (
        module Exports, BarChartFieldWellsProperty(..),
        mkBarChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BarChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data BarChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartfieldwells.html>
    BarChartFieldWellsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-barchartfieldwells.html#cfn-quicksight-dashboard-barchartfieldwells-barchartaggregatedfieldwells>
                                barChartAggregatedFieldWells :: (Prelude.Maybe BarChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartFieldWellsProperty :: BarChartFieldWellsProperty
mkBarChartFieldWellsProperty
  = BarChartFieldWellsProperty
      {haddock_workaround_ = (),
       barChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties BarChartFieldWellsProperty where
  toResourceProperties BarChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BarChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BarChartAggregatedFieldWells"
                              Prelude.<$> barChartAggregatedFieldWells])}
instance JSON.ToJSON BarChartFieldWellsProperty where
  toJSON BarChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BarChartAggregatedFieldWells"
                 Prelude.<$> barChartAggregatedFieldWells]))
instance Property "BarChartAggregatedFieldWells" BarChartFieldWellsProperty where
  type PropertyType "BarChartAggregatedFieldWells" BarChartFieldWellsProperty = BarChartAggregatedFieldWellsProperty
  set newValue BarChartFieldWellsProperty {..}
    = BarChartFieldWellsProperty
        {barChartAggregatedFieldWells = Prelude.pure newValue, ..}