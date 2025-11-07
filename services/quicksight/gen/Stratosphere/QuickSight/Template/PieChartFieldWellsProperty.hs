module Stratosphere.QuickSight.Template.PieChartFieldWellsProperty (
        module Exports, PieChartFieldWellsProperty(..),
        mkPieChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PieChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data PieChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartfieldwells.html>
    PieChartFieldWellsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-piechartfieldwells.html#cfn-quicksight-template-piechartfieldwells-piechartaggregatedfieldwells>
                                pieChartAggregatedFieldWells :: (Prelude.Maybe PieChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartFieldWellsProperty :: PieChartFieldWellsProperty
mkPieChartFieldWellsProperty
  = PieChartFieldWellsProperty
      {haddock_workaround_ = (),
       pieChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties PieChartFieldWellsProperty where
  toResourceProperties PieChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PieChartFieldWells",
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
  set newValue PieChartFieldWellsProperty {..}
    = PieChartFieldWellsProperty
        {pieChartAggregatedFieldWells = Prelude.pure newValue, ..}