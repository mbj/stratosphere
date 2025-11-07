module Stratosphere.QuickSight.Analysis.LineChartLineStyleSettingsProperty (
        LineChartLineStyleSettingsProperty(..),
        mkLineChartLineStyleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartLineStyleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartlinestylesettings.html>
    LineChartLineStyleSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartlinestylesettings.html#cfn-quicksight-analysis-linechartlinestylesettings-lineinterpolation>
                                        lineInterpolation :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartlinestylesettings.html#cfn-quicksight-analysis-linechartlinestylesettings-linestyle>
                                        lineStyle :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartlinestylesettings.html#cfn-quicksight-analysis-linechartlinestylesettings-linevisibility>
                                        lineVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartlinestylesettings.html#cfn-quicksight-analysis-linechartlinestylesettings-linewidth>
                                        lineWidth :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartLineStyleSettingsProperty ::
  LineChartLineStyleSettingsProperty
mkLineChartLineStyleSettingsProperty
  = LineChartLineStyleSettingsProperty
      {haddock_workaround_ = (), lineInterpolation = Prelude.Nothing,
       lineStyle = Prelude.Nothing, lineVisibility = Prelude.Nothing,
       lineWidth = Prelude.Nothing}
instance ToResourceProperties LineChartLineStyleSettingsProperty where
  toResourceProperties LineChartLineStyleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartLineStyleSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LineInterpolation" Prelude.<$> lineInterpolation,
                            (JSON..=) "LineStyle" Prelude.<$> lineStyle,
                            (JSON..=) "LineVisibility" Prelude.<$> lineVisibility,
                            (JSON..=) "LineWidth" Prelude.<$> lineWidth])}
instance JSON.ToJSON LineChartLineStyleSettingsProperty where
  toJSON LineChartLineStyleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LineInterpolation" Prelude.<$> lineInterpolation,
               (JSON..=) "LineStyle" Prelude.<$> lineStyle,
               (JSON..=) "LineVisibility" Prelude.<$> lineVisibility,
               (JSON..=) "LineWidth" Prelude.<$> lineWidth]))
instance Property "LineInterpolation" LineChartLineStyleSettingsProperty where
  type PropertyType "LineInterpolation" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineInterpolation = Prelude.pure newValue, ..}
instance Property "LineStyle" LineChartLineStyleSettingsProperty where
  type PropertyType "LineStyle" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineStyle = Prelude.pure newValue, ..}
instance Property "LineVisibility" LineChartLineStyleSettingsProperty where
  type PropertyType "LineVisibility" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineVisibility = Prelude.pure newValue, ..}
instance Property "LineWidth" LineChartLineStyleSettingsProperty where
  type PropertyType "LineWidth" LineChartLineStyleSettingsProperty = Value Prelude.Text
  set newValue LineChartLineStyleSettingsProperty {..}
    = LineChartLineStyleSettingsProperty
        {lineWidth = Prelude.pure newValue, ..}