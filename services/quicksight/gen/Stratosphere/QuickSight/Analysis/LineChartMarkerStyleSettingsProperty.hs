module Stratosphere.QuickSight.Analysis.LineChartMarkerStyleSettingsProperty (
        LineChartMarkerStyleSettingsProperty(..),
        mkLineChartMarkerStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartMarkerStyleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartmarkerstylesettings.html>
    LineChartMarkerStyleSettingsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartmarkerstylesettings.html#cfn-quicksight-analysis-linechartmarkerstylesettings-markercolor>
                                          markerColor :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartmarkerstylesettings.html#cfn-quicksight-analysis-linechartmarkerstylesettings-markershape>
                                          markerShape :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartmarkerstylesettings.html#cfn-quicksight-analysis-linechartmarkerstylesettings-markersize>
                                          markerSize :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartmarkerstylesettings.html#cfn-quicksight-analysis-linechartmarkerstylesettings-markervisibility>
                                          markerVisibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartMarkerStyleSettingsProperty ::
  LineChartMarkerStyleSettingsProperty
mkLineChartMarkerStyleSettingsProperty
  = LineChartMarkerStyleSettingsProperty
      {haddock_workaround_ = (), markerColor = Prelude.Nothing,
       markerShape = Prelude.Nothing, markerSize = Prelude.Nothing,
       markerVisibility = Prelude.Nothing}
instance ToResourceProperties LineChartMarkerStyleSettingsProperty where
  toResourceProperties LineChartMarkerStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartMarkerStyleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MarkerColor" Prelude.<$> markerColor,
                            (JSON..=) "MarkerShape" Prelude.<$> markerShape,
                            (JSON..=) "MarkerSize" Prelude.<$> markerSize,
                            (JSON..=) "MarkerVisibility" Prelude.<$> markerVisibility])}
instance JSON.ToJSON LineChartMarkerStyleSettingsProperty where
  toJSON LineChartMarkerStyleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MarkerColor" Prelude.<$> markerColor,
               (JSON..=) "MarkerShape" Prelude.<$> markerShape,
               (JSON..=) "MarkerSize" Prelude.<$> markerSize,
               (JSON..=) "MarkerVisibility" Prelude.<$> markerVisibility]))
instance Property "MarkerColor" LineChartMarkerStyleSettingsProperty where
  type PropertyType "MarkerColor" LineChartMarkerStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartMarkerStyleSettingsProperty {..}
    = LineChartMarkerStyleSettingsProperty
        {markerColor = Prelude.pure newValue, ..}
instance Property "MarkerShape" LineChartMarkerStyleSettingsProperty where
  type PropertyType "MarkerShape" LineChartMarkerStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartMarkerStyleSettingsProperty {..}
    = LineChartMarkerStyleSettingsProperty
        {markerShape = Prelude.pure newValue, ..}
instance Property "MarkerSize" LineChartMarkerStyleSettingsProperty where
  type PropertyType "MarkerSize" LineChartMarkerStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartMarkerStyleSettingsProperty {..}
    = LineChartMarkerStyleSettingsProperty
        {markerSize = Prelude.pure newValue, ..}
instance Property "MarkerVisibility" LineChartMarkerStyleSettingsProperty where
  type PropertyType "MarkerVisibility" LineChartMarkerStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartMarkerStyleSettingsProperty {..}
    = LineChartMarkerStyleSettingsProperty
        {markerVisibility = Prelude.pure newValue, ..}