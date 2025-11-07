module Stratosphere.QuickSight.Dashboard.WaterfallChartOptionsProperty (
        WaterfallChartOptionsProperty(..), mkWaterfallChartOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WaterfallChartOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartoptions.html>
    WaterfallChartOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartoptions.html#cfn-quicksight-dashboard-waterfallchartoptions-totalbarlabel>
                                   totalBarLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartOptionsProperty :: WaterfallChartOptionsProperty
mkWaterfallChartOptionsProperty
  = WaterfallChartOptionsProperty
      {haddock_workaround_ = (), totalBarLabel = Prelude.Nothing}
instance ToResourceProperties WaterfallChartOptionsProperty where
  toResourceProperties WaterfallChartOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallChartOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TotalBarLabel" Prelude.<$> totalBarLabel])}
instance JSON.ToJSON WaterfallChartOptionsProperty where
  toJSON WaterfallChartOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TotalBarLabel" Prelude.<$> totalBarLabel]))
instance Property "TotalBarLabel" WaterfallChartOptionsProperty where
  type PropertyType "TotalBarLabel" WaterfallChartOptionsProperty = Value Prelude.Text
  set newValue WaterfallChartOptionsProperty {..}
    = WaterfallChartOptionsProperty
        {totalBarLabel = Prelude.pure newValue, ..}