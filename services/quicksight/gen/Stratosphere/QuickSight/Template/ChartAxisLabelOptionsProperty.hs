module Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty (
        module Exports, ChartAxisLabelOptionsProperty(..),
        mkChartAxisLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data ChartAxisLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-chartaxislabeloptions.html>
    ChartAxisLabelOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-chartaxislabeloptions.html#cfn-quicksight-template-chartaxislabeloptions-axislabeloptions>
                                   axisLabelOptions :: (Prelude.Maybe [AxisLabelOptionsProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-chartaxislabeloptions.html#cfn-quicksight-template-chartaxislabeloptions-sorticonvisibility>
                                   sortIconVisibility :: (Prelude.Maybe JSON.Object),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-chartaxislabeloptions.html#cfn-quicksight-template-chartaxislabeloptions-visibility>
                                   visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChartAxisLabelOptionsProperty :: ChartAxisLabelOptionsProperty
mkChartAxisLabelOptionsProperty
  = ChartAxisLabelOptionsProperty
      {haddock_workaround_ = (), axisLabelOptions = Prelude.Nothing,
       sortIconVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ChartAxisLabelOptionsProperty where
  toResourceProperties ChartAxisLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ChartAxisLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AxisLabelOptions" Prelude.<$> axisLabelOptions,
                            (JSON..=) "SortIconVisibility" Prelude.<$> sortIconVisibility,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON ChartAxisLabelOptionsProperty where
  toJSON ChartAxisLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AxisLabelOptions" Prelude.<$> axisLabelOptions,
               (JSON..=) "SortIconVisibility" Prelude.<$> sortIconVisibility,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "AxisLabelOptions" ChartAxisLabelOptionsProperty where
  type PropertyType "AxisLabelOptions" ChartAxisLabelOptionsProperty = [AxisLabelOptionsProperty]
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {axisLabelOptions = Prelude.pure newValue, ..}
instance Property "SortIconVisibility" ChartAxisLabelOptionsProperty where
  type PropertyType "SortIconVisibility" ChartAxisLabelOptionsProperty = JSON.Object
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {sortIconVisibility = Prelude.pure newValue, ..}
instance Property "Visibility" ChartAxisLabelOptionsProperty where
  type PropertyType "Visibility" ChartAxisLabelOptionsProperty = JSON.Object
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}