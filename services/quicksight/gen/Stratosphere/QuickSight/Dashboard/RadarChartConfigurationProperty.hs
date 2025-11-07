module Stratosphere.QuickSight.Dashboard.RadarChartConfigurationProperty (
        module Exports, RadarChartConfigurationProperty(..),
        mkRadarChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RadarChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RadarChartSeriesSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.RadarChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RadarChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html>
    RadarChartConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-alternatebandcolorsvisibility>
                                     alternateBandColorsVisibility :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-alternatebandevencolor>
                                     alternateBandEvenColor :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-alternatebandoddcolor>
                                     alternateBandOddColor :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-axesrangescale>
                                     axesRangeScale :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-baseseriessettings>
                                     baseSeriesSettings :: (Prelude.Maybe RadarChartSeriesSettingsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-categoryaxis>
                                     categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-categorylabeloptions>
                                     categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-coloraxis>
                                     colorAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-colorlabeloptions>
                                     colorLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-fieldwells>
                                     fieldWells :: (Prelude.Maybe RadarChartFieldWellsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-interactions>
                                     interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-legend>
                                     legend :: (Prelude.Maybe LegendOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-shape>
                                     shape :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-sortconfiguration>
                                     sortConfiguration :: (Prelude.Maybe RadarChartSortConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-startangle>
                                     startAngle :: (Prelude.Maybe (Value Prelude.Double)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-radarchartconfiguration.html#cfn-quicksight-dashboard-radarchartconfiguration-visualpalette>
                                     visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRadarChartConfigurationProperty ::
  RadarChartConfigurationProperty
mkRadarChartConfigurationProperty
  = RadarChartConfigurationProperty
      {haddock_workaround_ = (),
       alternateBandColorsVisibility = Prelude.Nothing,
       alternateBandEvenColor = Prelude.Nothing,
       alternateBandOddColor = Prelude.Nothing,
       axesRangeScale = Prelude.Nothing,
       baseSeriesSettings = Prelude.Nothing,
       categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       colorAxis = Prelude.Nothing, colorLabelOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing, shape = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, startAngle = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties RadarChartConfigurationProperty where
  toResourceProperties RadarChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.RadarChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlternateBandColorsVisibility"
                              Prelude.<$> alternateBandColorsVisibility,
                            (JSON..=) "AlternateBandEvenColor"
                              Prelude.<$> alternateBandEvenColor,
                            (JSON..=) "AlternateBandOddColor"
                              Prelude.<$> alternateBandOddColor,
                            (JSON..=) "AxesRangeScale" Prelude.<$> axesRangeScale,
                            (JSON..=) "BaseSeriesSettings" Prelude.<$> baseSeriesSettings,
                            (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
                            (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "ColorAxis" Prelude.<$> colorAxis,
                            (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "Shape" Prelude.<$> shape,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "StartAngle" Prelude.<$> startAngle,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON RadarChartConfigurationProperty where
  toJSON RadarChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlternateBandColorsVisibility"
                 Prelude.<$> alternateBandColorsVisibility,
               (JSON..=) "AlternateBandEvenColor"
                 Prelude.<$> alternateBandEvenColor,
               (JSON..=) "AlternateBandOddColor"
                 Prelude.<$> alternateBandOddColor,
               (JSON..=) "AxesRangeScale" Prelude.<$> axesRangeScale,
               (JSON..=) "BaseSeriesSettings" Prelude.<$> baseSeriesSettings,
               (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
               (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "ColorAxis" Prelude.<$> colorAxis,
               (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "Shape" Prelude.<$> shape,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "StartAngle" Prelude.<$> startAngle,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "AlternateBandColorsVisibility" RadarChartConfigurationProperty where
  type PropertyType "AlternateBandColorsVisibility" RadarChartConfigurationProperty = Value Prelude.Text
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {alternateBandColorsVisibility = Prelude.pure newValue, ..}
instance Property "AlternateBandEvenColor" RadarChartConfigurationProperty where
  type PropertyType "AlternateBandEvenColor" RadarChartConfigurationProperty = Value Prelude.Text
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {alternateBandEvenColor = Prelude.pure newValue, ..}
instance Property "AlternateBandOddColor" RadarChartConfigurationProperty where
  type PropertyType "AlternateBandOddColor" RadarChartConfigurationProperty = Value Prelude.Text
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {alternateBandOddColor = Prelude.pure newValue, ..}
instance Property "AxesRangeScale" RadarChartConfigurationProperty where
  type PropertyType "AxesRangeScale" RadarChartConfigurationProperty = Value Prelude.Text
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {axesRangeScale = Prelude.pure newValue, ..}
instance Property "BaseSeriesSettings" RadarChartConfigurationProperty where
  type PropertyType "BaseSeriesSettings" RadarChartConfigurationProperty = RadarChartSeriesSettingsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {baseSeriesSettings = Prelude.pure newValue, ..}
instance Property "CategoryAxis" RadarChartConfigurationProperty where
  type PropertyType "CategoryAxis" RadarChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {categoryAxis = Prelude.pure newValue, ..}
instance Property "CategoryLabelOptions" RadarChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" RadarChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "ColorAxis" RadarChartConfigurationProperty where
  type PropertyType "ColorAxis" RadarChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {colorAxis = Prelude.pure newValue, ..}
instance Property "ColorLabelOptions" RadarChartConfigurationProperty where
  type PropertyType "ColorLabelOptions" RadarChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {colorLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" RadarChartConfigurationProperty where
  type PropertyType "FieldWells" RadarChartConfigurationProperty = RadarChartFieldWellsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" RadarChartConfigurationProperty where
  type PropertyType "Interactions" RadarChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" RadarChartConfigurationProperty where
  type PropertyType "Legend" RadarChartConfigurationProperty = LegendOptionsProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "Shape" RadarChartConfigurationProperty where
  type PropertyType "Shape" RadarChartConfigurationProperty = Value Prelude.Text
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {shape = Prelude.pure newValue, ..}
instance Property "SortConfiguration" RadarChartConfigurationProperty where
  type PropertyType "SortConfiguration" RadarChartConfigurationProperty = RadarChartSortConfigurationProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "StartAngle" RadarChartConfigurationProperty where
  type PropertyType "StartAngle" RadarChartConfigurationProperty = Value Prelude.Double
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {startAngle = Prelude.pure newValue, ..}
instance Property "VisualPalette" RadarChartConfigurationProperty where
  type PropertyType "VisualPalette" RadarChartConfigurationProperty = VisualPaletteProperty
  set newValue RadarChartConfigurationProperty {..}
    = RadarChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}