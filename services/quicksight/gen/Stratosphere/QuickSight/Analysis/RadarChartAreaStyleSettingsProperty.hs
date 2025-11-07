module Stratosphere.QuickSight.Analysis.RadarChartAreaStyleSettingsProperty (
        RadarChartAreaStyleSettingsProperty(..),
        mkRadarChartAreaStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RadarChartAreaStyleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartareastylesettings.html>
    RadarChartAreaStyleSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-radarchartareastylesettings.html#cfn-quicksight-analysis-radarchartareastylesettings-visibility>
                                         visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartAreaStyleSettingsProperty ::
  RadarChartAreaStyleSettingsProperty
mkRadarChartAreaStyleSettingsProperty
  = RadarChartAreaStyleSettingsProperty
      {haddock_workaround_ = (), visibility = Prelude.Nothing}
instance ToResourceProperties RadarChartAreaStyleSettingsProperty where
  toResourceProperties RadarChartAreaStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RadarChartAreaStyleSettings",
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
  type PropertyType "Visibility" RadarChartAreaStyleSettingsProperty = Value Prelude.Text
  set newValue RadarChartAreaStyleSettingsProperty {..}
    = RadarChartAreaStyleSettingsProperty
        {visibility = Prelude.pure newValue, ..}