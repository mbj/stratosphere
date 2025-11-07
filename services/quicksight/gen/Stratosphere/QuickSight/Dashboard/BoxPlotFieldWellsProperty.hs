module Stratosphere.QuickSight.Dashboard.BoxPlotFieldWellsProperty (
        module Exports, BoxPlotFieldWellsProperty(..),
        mkBoxPlotFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BoxPlotAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotfieldwells.html>
    BoxPlotFieldWellsProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotfieldwells.html#cfn-quicksight-dashboard-boxplotfieldwells-boxplotaggregatedfieldwells>
                               boxPlotAggregatedFieldWells :: (Prelude.Maybe BoxPlotAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotFieldWellsProperty :: BoxPlotFieldWellsProperty
mkBoxPlotFieldWellsProperty
  = BoxPlotFieldWellsProperty
      {haddock_workaround_ = (),
       boxPlotAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties BoxPlotFieldWellsProperty where
  toResourceProperties BoxPlotFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BoxPlotFieldWells",
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
  set newValue BoxPlotFieldWellsProperty {..}
    = BoxPlotFieldWellsProperty
        {boxPlotAggregatedFieldWells = Prelude.pure newValue, ..}