module Stratosphere.QuickSight.Template.RadarChartSeriesSettingsProperty (
        module Exports, RadarChartSeriesSettingsProperty(..),
        mkRadarChartSeriesSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RadarChartAreaStyleSettingsProperty as Exports
import Stratosphere.ResourceProperties
data RadarChartSeriesSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartseriessettings.html>
    RadarChartSeriesSettingsProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-radarchartseriessettings.html#cfn-quicksight-template-radarchartseriessettings-areastylesettings>
                                      areaStyleSettings :: (Prelude.Maybe RadarChartAreaStyleSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartSeriesSettingsProperty ::
  RadarChartSeriesSettingsProperty
mkRadarChartSeriesSettingsProperty
  = RadarChartSeriesSettingsProperty
      {haddock_workaround_ = (), areaStyleSettings = Prelude.Nothing}
instance ToResourceProperties RadarChartSeriesSettingsProperty where
  toResourceProperties RadarChartSeriesSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.RadarChartSeriesSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AreaStyleSettings" Prelude.<$> areaStyleSettings])}
instance JSON.ToJSON RadarChartSeriesSettingsProperty where
  toJSON RadarChartSeriesSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AreaStyleSettings" Prelude.<$> areaStyleSettings]))
instance Property "AreaStyleSettings" RadarChartSeriesSettingsProperty where
  type PropertyType "AreaStyleSettings" RadarChartSeriesSettingsProperty = RadarChartAreaStyleSettingsProperty
  set newValue RadarChartSeriesSettingsProperty {..}
    = RadarChartSeriesSettingsProperty
        {areaStyleSettings = Prelude.pure newValue, ..}