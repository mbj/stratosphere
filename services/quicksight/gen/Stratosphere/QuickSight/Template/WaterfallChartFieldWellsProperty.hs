module Stratosphere.QuickSight.Template.WaterfallChartFieldWellsProperty (
        module Exports, WaterfallChartFieldWellsProperty(..),
        mkWaterfallChartFieldWellsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WaterfallChartAggregatedFieldWellsProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartFieldWellsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartfieldwells.html>
    WaterfallChartFieldWellsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-waterfallchartfieldwells.html#cfn-quicksight-template-waterfallchartfieldwells-waterfallchartaggregatedfieldwells>
                                      waterfallChartAggregatedFieldWells :: (Prelude.Maybe WaterfallChartAggregatedFieldWellsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartFieldWellsProperty ::
  WaterfallChartFieldWellsProperty
mkWaterfallChartFieldWellsProperty
  = WaterfallChartFieldWellsProperty
      {haddock_workaround_ = (),
       waterfallChartAggregatedFieldWells = Prelude.Nothing}
instance ToResourceProperties WaterfallChartFieldWellsProperty where
  toResourceProperties WaterfallChartFieldWellsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.WaterfallChartFieldWells",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WaterfallChartAggregatedFieldWells"
                              Prelude.<$> waterfallChartAggregatedFieldWells])}
instance JSON.ToJSON WaterfallChartFieldWellsProperty where
  toJSON WaterfallChartFieldWellsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WaterfallChartAggregatedFieldWells"
                 Prelude.<$> waterfallChartAggregatedFieldWells]))
instance Property "WaterfallChartAggregatedFieldWells" WaterfallChartFieldWellsProperty where
  type PropertyType "WaterfallChartAggregatedFieldWells" WaterfallChartFieldWellsProperty = WaterfallChartAggregatedFieldWellsProperty
  set newValue WaterfallChartFieldWellsProperty {..}
    = WaterfallChartFieldWellsProperty
        {waterfallChartAggregatedFieldWells = Prelude.pure newValue, ..}