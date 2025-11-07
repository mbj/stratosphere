module Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty (
        module Exports, ChartAxisLabelOptionsProperty(..),
        mkChartAxisLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChartAxisLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-chartaxislabeloptions.html>
    ChartAxisLabelOptionsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-chartaxislabeloptions.html#cfn-quicksight-analysis-chartaxislabeloptions-axislabeloptions>
                                   axisLabelOptions :: (Prelude.Maybe [AxisLabelOptionsProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-chartaxislabeloptions.html#cfn-quicksight-analysis-chartaxislabeloptions-sorticonvisibility>
                                   sortIconVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-chartaxislabeloptions.html#cfn-quicksight-analysis-chartaxislabeloptions-visibility>
                                   visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChartAxisLabelOptionsProperty :: ChartAxisLabelOptionsProperty
mkChartAxisLabelOptionsProperty
  = ChartAxisLabelOptionsProperty
      {haddock_workaround_ = (), axisLabelOptions = Prelude.Nothing,
       sortIconVisibility = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties ChartAxisLabelOptionsProperty where
  toResourceProperties ChartAxisLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ChartAxisLabelOptions",
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
  type PropertyType "SortIconVisibility" ChartAxisLabelOptionsProperty = Value Prelude.Text
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {sortIconVisibility = Prelude.pure newValue, ..}
instance Property "Visibility" ChartAxisLabelOptionsProperty where
  type PropertyType "Visibility" ChartAxisLabelOptionsProperty = Value Prelude.Text
  set newValue ChartAxisLabelOptionsProperty {..}
    = ChartAxisLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}