module Stratosphere.QuickSight.Template.LineChartMarkerStyleSettingsProperty (
        LineChartMarkerStyleSettingsProperty(..),
        mkLineChartMarkerStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartMarkerStyleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartmarkerstylesettings.html>
    LineChartMarkerStyleSettingsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartmarkerstylesettings.html#cfn-quicksight-template-linechartmarkerstylesettings-markercolor>
                                          markerColor :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartmarkerstylesettings.html#cfn-quicksight-template-linechartmarkerstylesettings-markershape>
                                          markerShape :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartmarkerstylesettings.html#cfn-quicksight-template-linechartmarkerstylesettings-markersize>
                                          markerSize :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartmarkerstylesettings.html#cfn-quicksight-template-linechartmarkerstylesettings-markervisibility>
                                          markerVisibility :: (Prelude.Maybe JSON.Object)}
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
        {awsType = "AWS::QuickSight::Template.LineChartMarkerStyleSettings",
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
  type PropertyType "MarkerVisibility" LineChartMarkerStyleSettingsProperty = JSON.Object
  set newValue LineChartMarkerStyleSettingsProperty {..}
    = LineChartMarkerStyleSettingsProperty
        {markerVisibility = Prelude.pure newValue, ..}