module Stratosphere.QuickSight.Template.LineChartSeriesSettingsProperty (
        module Exports, LineChartSeriesSettingsProperty(..),
        mkLineChartSeriesSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartLineStyleSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartMarkerStyleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data LineChartSeriesSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html>
    LineChartSeriesSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html#cfn-quicksight-template-linechartseriessettings-linestylesettings>
                                     lineStyleSettings :: (Prelude.Maybe LineChartLineStyleSettingsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartseriessettings.html#cfn-quicksight-template-linechartseriessettings-markerstylesettings>
                                     markerStyleSettings :: (Prelude.Maybe LineChartMarkerStyleSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartSeriesSettingsProperty ::
  LineChartSeriesSettingsProperty
mkLineChartSeriesSettingsProperty
  = LineChartSeriesSettingsProperty
      {haddock_workaround_ = (), lineStyleSettings = Prelude.Nothing,
       markerStyleSettings = Prelude.Nothing}
instance ToResourceProperties LineChartSeriesSettingsProperty where
  toResourceProperties LineChartSeriesSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LineChartSeriesSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
                            (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings])}
instance JSON.ToJSON LineChartSeriesSettingsProperty where
  toJSON LineChartSeriesSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineStyleSettings" Prelude.<$> lineStyleSettings,
               (JSON..=) "MarkerStyleSettings" Prelude.<$> markerStyleSettings]))
instance Property "LineStyleSettings" LineChartSeriesSettingsProperty where
  type PropertyType "LineStyleSettings" LineChartSeriesSettingsProperty = LineChartLineStyleSettingsProperty
  set newValue LineChartSeriesSettingsProperty {..}
    = LineChartSeriesSettingsProperty
        {lineStyleSettings = Prelude.pure newValue, ..}
instance Property "MarkerStyleSettings" LineChartSeriesSettingsProperty where
  type PropertyType "MarkerStyleSettings" LineChartSeriesSettingsProperty = LineChartMarkerStyleSettingsProperty
  set newValue LineChartSeriesSettingsProperty {..}
    = LineChartSeriesSettingsProperty
        {markerStyleSettings = Prelude.pure newValue, ..}