module Stratosphere.QuickSight.Dashboard.FunnelChartDataLabelOptionsProperty (
        module Exports, FunnelChartDataLabelOptionsProperty(..),
        mkFunnelChartDataLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FontConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunnelChartDataLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html>
    FunnelChartDataLabelOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-categorylabelvisibility>
                                         categoryLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-labelcolor>
                                         labelColor :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-labelfontconfiguration>
                                         labelFontConfiguration :: (Prelude.Maybe FontConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-measuredatalabelstyle>
                                         measureDataLabelStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-measurelabelvisibility>
                                         measureLabelVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-position>
                                         position :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-funnelchartdatalabeloptions.html#cfn-quicksight-dashboard-funnelchartdatalabeloptions-visibility>
                                         visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartDataLabelOptionsProperty ::
  FunnelChartDataLabelOptionsProperty
mkFunnelChartDataLabelOptionsProperty
  = FunnelChartDataLabelOptionsProperty
      {haddock_workaround_ = (),
       categoryLabelVisibility = Prelude.Nothing,
       labelColor = Prelude.Nothing,
       labelFontConfiguration = Prelude.Nothing,
       measureDataLabelStyle = Prelude.Nothing,
       measureLabelVisibility = Prelude.Nothing,
       position = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties FunnelChartDataLabelOptionsProperty where
  toResourceProperties FunnelChartDataLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FunnelChartDataLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelVisibility"
                              Prelude.<$> categoryLabelVisibility,
                            (JSON..=) "LabelColor" Prelude.<$> labelColor,
                            (JSON..=) "LabelFontConfiguration"
                              Prelude.<$> labelFontConfiguration,
                            (JSON..=) "MeasureDataLabelStyle"
                              Prelude.<$> measureDataLabelStyle,
                            (JSON..=) "MeasureLabelVisibility"
                              Prelude.<$> measureLabelVisibility,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON FunnelChartDataLabelOptionsProperty where
  toJSON FunnelChartDataLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelVisibility"
                 Prelude.<$> categoryLabelVisibility,
               (JSON..=) "LabelColor" Prelude.<$> labelColor,
               (JSON..=) "LabelFontConfiguration"
                 Prelude.<$> labelFontConfiguration,
               (JSON..=) "MeasureDataLabelStyle"
                 Prelude.<$> measureDataLabelStyle,
               (JSON..=) "MeasureLabelVisibility"
                 Prelude.<$> measureLabelVisibility,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "CategoryLabelVisibility" FunnelChartDataLabelOptionsProperty where
  type PropertyType "CategoryLabelVisibility" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {categoryLabelVisibility = Prelude.pure newValue, ..}
instance Property "LabelColor" FunnelChartDataLabelOptionsProperty where
  type PropertyType "LabelColor" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {labelColor = Prelude.pure newValue, ..}
instance Property "LabelFontConfiguration" FunnelChartDataLabelOptionsProperty where
  type PropertyType "LabelFontConfiguration" FunnelChartDataLabelOptionsProperty = FontConfigurationProperty
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {labelFontConfiguration = Prelude.pure newValue, ..}
instance Property "MeasureDataLabelStyle" FunnelChartDataLabelOptionsProperty where
  type PropertyType "MeasureDataLabelStyle" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {measureDataLabelStyle = Prelude.pure newValue, ..}
instance Property "MeasureLabelVisibility" FunnelChartDataLabelOptionsProperty where
  type PropertyType "MeasureLabelVisibility" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {measureLabelVisibility = Prelude.pure newValue, ..}
instance Property "Position" FunnelChartDataLabelOptionsProperty where
  type PropertyType "Position" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {position = Prelude.pure newValue, ..}
instance Property "Visibility" FunnelChartDataLabelOptionsProperty where
  type PropertyType "Visibility" FunnelChartDataLabelOptionsProperty = Value Prelude.Text
  set newValue FunnelChartDataLabelOptionsProperty {..}
    = FunnelChartDataLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}