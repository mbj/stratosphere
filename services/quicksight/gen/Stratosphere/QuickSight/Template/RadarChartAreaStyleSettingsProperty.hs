module Stratosphere.QuickSight.Template.RadarChartAreaStyleSettingsProperty (
        RadarChartAreaStyleSettingsProperty(..),
        mkRadarChartAreaStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data RadarChartAreaStyleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartareastylesettings.html>
    RadarChartAreaStyleSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartareastylesettings.html#cfn-quicksight-template-radarchartareastylesettings-visibility>
                                         visibility :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartAreaStyleSettingsProperty ::
  RadarChartAreaStyleSettingsProperty
mkRadarChartAreaStyleSettingsProperty
  = RadarChartAreaStyleSettingsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties RadarChartAreaStyleSettingsProperty where
  toResourceProperties RadarChartAreaStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RadarChartAreaStyleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON RadarChartAreaStyleSettingsProperty where
  toJSON RadarChartAreaStyleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "Visibility" RadarChartAreaStyleSettingsProperty where
  type PropertyType "Visibility" RadarChartAreaStyleSettingsProperty = JSON.Object
  set newValue RadarChartAreaStyleSettingsProperty {..}
    = RadarChartAreaStyleSettingsProperty
        {visibility = Prelude.pure newValue, ..}