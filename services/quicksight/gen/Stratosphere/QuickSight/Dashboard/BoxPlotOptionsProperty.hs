module Stratosphere.QuickSight.Dashboard.BoxPlotOptionsProperty (
        module Exports, BoxPlotOptionsProperty(..),
        mkBoxPlotOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BoxPlotStyleOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoxPlotOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotoptions.html>
    BoxPlotOptionsProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotoptions.html#cfn-quicksight-dashboard-boxplotoptions-alldatapointsvisibility>
                            allDataPointsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotoptions.html#cfn-quicksight-dashboard-boxplotoptions-outliervisibility>
                            outlierVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-boxplotoptions.html#cfn-quicksight-dashboard-boxplotoptions-styleoptions>
                            styleOptions :: (Prelude.Maybe BoxPlotStyleOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotOptionsProperty :: BoxPlotOptionsProperty
mkBoxPlotOptionsProperty
  = BoxPlotOptionsProperty
      {haddock_workaround_ = (),
       allDataPointsVisibility = Prelude.Nothing,
       outlierVisibility = Prelude.Nothing,
       styleOptions = Prelude.Nothing}
instance ToResourceProperties BoxPlotOptionsProperty where
  toResourceProperties BoxPlotOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BoxPlotOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllDataPointsVisibility"
                              Prelude.<$> allDataPointsVisibility,
                            (JSON..=) "OutlierVisibility" Prelude.<$> outlierVisibility,
                            (JSON..=) "StyleOptions" Prelude.<$> styleOptions])}
instance JSON.ToJSON BoxPlotOptionsProperty where
  toJSON BoxPlotOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllDataPointsVisibility"
                 Prelude.<$> allDataPointsVisibility,
               (JSON..=) "OutlierVisibility" Prelude.<$> outlierVisibility,
               (JSON..=) "StyleOptions" Prelude.<$> styleOptions]))
instance Property "AllDataPointsVisibility" BoxPlotOptionsProperty where
  type PropertyType "AllDataPointsVisibility" BoxPlotOptionsProperty = Value Prelude.Text
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty
        {allDataPointsVisibility = Prelude.pure newValue, ..}
instance Property "OutlierVisibility" BoxPlotOptionsProperty where
  type PropertyType "OutlierVisibility" BoxPlotOptionsProperty = Value Prelude.Text
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty
        {outlierVisibility = Prelude.pure newValue, ..}
instance Property "StyleOptions" BoxPlotOptionsProperty where
  type PropertyType "StyleOptions" BoxPlotOptionsProperty = BoxPlotStyleOptionsProperty
  set newValue BoxPlotOptionsProperty {..}
    = BoxPlotOptionsProperty {styleOptions = Prelude.pure newValue, ..}