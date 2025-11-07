module Stratosphere.QuickSight.Template.LineChartConfigurationProperty (
        module Exports, LineChartConfigurationProperty(..),
        mkLineChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ForecastConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartDefaultSeriesSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineSeriesAxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SeriesItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SingleAxisOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html>
    LineChartConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-contributionanalysisdefaults>
                                    contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-datalabels>
                                    dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-defaultseriessettings>
                                    defaultSeriesSettings :: (Prelude.Maybe LineChartDefaultSeriesSettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-fieldwells>
                                    fieldWells :: (Prelude.Maybe LineChartFieldWellsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-forecastconfigurations>
                                    forecastConfigurations :: (Prelude.Maybe [ForecastConfigurationProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-interactions>
                                    interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-legend>
                                    legend :: (Prelude.Maybe LegendOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-primaryyaxisdisplayoptions>
                                    primaryYAxisDisplayOptions :: (Prelude.Maybe LineSeriesAxisDisplayOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-primaryyaxislabeloptions>
                                    primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-referencelines>
                                    referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-secondaryyaxisdisplayoptions>
                                    secondaryYAxisDisplayOptions :: (Prelude.Maybe LineSeriesAxisDisplayOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-secondaryyaxislabeloptions>
                                    secondaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-series>
                                    series :: (Prelude.Maybe [SeriesItemProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-singleaxisoptions>
                                    singleAxisOptions :: (Prelude.Maybe SingleAxisOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-smallmultiplesoptions>
                                    smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-sortconfiguration>
                                    sortConfiguration :: (Prelude.Maybe LineChartSortConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-tooltip>
                                    tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-type>
                                    type' :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-visualpalette>
                                    visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-xaxisdisplayoptions>
                                    xAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-linechartconfiguration.html#cfn-quicksight-template-linechartconfiguration-xaxislabeloptions>
                                    xAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartConfigurationProperty :: LineChartConfigurationProperty
mkLineChartConfigurationProperty
  = LineChartConfigurationProperty
      {haddock_workaround_ = (),
       contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing,
       defaultSeriesSettings = Prelude.Nothing,
       fieldWells = Prelude.Nothing,
       forecastConfigurations = Prelude.Nothing,
       interactions = Prelude.Nothing, legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       secondaryYAxisDisplayOptions = Prelude.Nothing,
       secondaryYAxisLabelOptions = Prelude.Nothing,
       series = Prelude.Nothing, singleAxisOptions = Prelude.Nothing,
       smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       type' = Prelude.Nothing, visualPalette = Prelude.Nothing,
       xAxisDisplayOptions = Prelude.Nothing,
       xAxisLabelOptions = Prelude.Nothing}
instance ToResourceProperties LineChartConfigurationProperty where
  toResourceProperties LineChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.LineChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContributionAnalysisDefaults"
                              Prelude.<$> contributionAnalysisDefaults,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "DefaultSeriesSettings"
                              Prelude.<$> defaultSeriesSettings,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "ForecastConfigurations"
                              Prelude.<$> forecastConfigurations,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "PrimaryYAxisDisplayOptions"
                              Prelude.<$> primaryYAxisDisplayOptions,
                            (JSON..=) "PrimaryYAxisLabelOptions"
                              Prelude.<$> primaryYAxisLabelOptions,
                            (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
                            (JSON..=) "SecondaryYAxisDisplayOptions"
                              Prelude.<$> secondaryYAxisDisplayOptions,
                            (JSON..=) "SecondaryYAxisLabelOptions"
                              Prelude.<$> secondaryYAxisLabelOptions,
                            (JSON..=) "Series" Prelude.<$> series,
                            (JSON..=) "SingleAxisOptions" Prelude.<$> singleAxisOptions,
                            (JSON..=) "SmallMultiplesOptions"
                              Prelude.<$> smallMultiplesOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "Type" Prelude.<$> type',
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
                            (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions])}
instance JSON.ToJSON LineChartConfigurationProperty where
  toJSON LineChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContributionAnalysisDefaults"
                 Prelude.<$> contributionAnalysisDefaults,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "DefaultSeriesSettings"
                 Prelude.<$> defaultSeriesSettings,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "ForecastConfigurations"
                 Prelude.<$> forecastConfigurations,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "PrimaryYAxisDisplayOptions"
                 Prelude.<$> primaryYAxisDisplayOptions,
               (JSON..=) "PrimaryYAxisLabelOptions"
                 Prelude.<$> primaryYAxisLabelOptions,
               (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
               (JSON..=) "SecondaryYAxisDisplayOptions"
                 Prelude.<$> secondaryYAxisDisplayOptions,
               (JSON..=) "SecondaryYAxisLabelOptions"
                 Prelude.<$> secondaryYAxisLabelOptions,
               (JSON..=) "Series" Prelude.<$> series,
               (JSON..=) "SingleAxisOptions" Prelude.<$> singleAxisOptions,
               (JSON..=) "SmallMultiplesOptions"
                 Prelude.<$> smallMultiplesOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "Type" Prelude.<$> type',
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
               (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions]))
instance Property "ContributionAnalysisDefaults" LineChartConfigurationProperty where
  type PropertyType "ContributionAnalysisDefaults" LineChartConfigurationProperty = [ContributionAnalysisDefaultProperty]
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {contributionAnalysisDefaults = Prelude.pure newValue, ..}
instance Property "DataLabels" LineChartConfigurationProperty where
  type PropertyType "DataLabels" LineChartConfigurationProperty = DataLabelOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "DefaultSeriesSettings" LineChartConfigurationProperty where
  type PropertyType "DefaultSeriesSettings" LineChartConfigurationProperty = LineChartDefaultSeriesSettingsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {defaultSeriesSettings = Prelude.pure newValue, ..}
instance Property "FieldWells" LineChartConfigurationProperty where
  type PropertyType "FieldWells" LineChartConfigurationProperty = LineChartFieldWellsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "ForecastConfigurations" LineChartConfigurationProperty where
  type PropertyType "ForecastConfigurations" LineChartConfigurationProperty = [ForecastConfigurationProperty]
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {forecastConfigurations = Prelude.pure newValue, ..}
instance Property "Interactions" LineChartConfigurationProperty where
  type PropertyType "Interactions" LineChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" LineChartConfigurationProperty where
  type PropertyType "Legend" LineChartConfigurationProperty = LegendOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisDisplayOptions" LineChartConfigurationProperty where
  type PropertyType "PrimaryYAxisDisplayOptions" LineChartConfigurationProperty = LineSeriesAxisDisplayOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {primaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisLabelOptions" LineChartConfigurationProperty where
  type PropertyType "PrimaryYAxisLabelOptions" LineChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {primaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "ReferenceLines" LineChartConfigurationProperty where
  type PropertyType "ReferenceLines" LineChartConfigurationProperty = [ReferenceLineProperty]
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {referenceLines = Prelude.pure newValue, ..}
instance Property "SecondaryYAxisDisplayOptions" LineChartConfigurationProperty where
  type PropertyType "SecondaryYAxisDisplayOptions" LineChartConfigurationProperty = LineSeriesAxisDisplayOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {secondaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "SecondaryYAxisLabelOptions" LineChartConfigurationProperty where
  type PropertyType "SecondaryYAxisLabelOptions" LineChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {secondaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "Series" LineChartConfigurationProperty where
  type PropertyType "Series" LineChartConfigurationProperty = [SeriesItemProperty]
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {series = Prelude.pure newValue, ..}
instance Property "SingleAxisOptions" LineChartConfigurationProperty where
  type PropertyType "SingleAxisOptions" LineChartConfigurationProperty = SingleAxisOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {singleAxisOptions = Prelude.pure newValue, ..}
instance Property "SmallMultiplesOptions" LineChartConfigurationProperty where
  type PropertyType "SmallMultiplesOptions" LineChartConfigurationProperty = SmallMultiplesOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {smallMultiplesOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" LineChartConfigurationProperty where
  type PropertyType "SortConfiguration" LineChartConfigurationProperty = LineChartSortConfigurationProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" LineChartConfigurationProperty where
  type PropertyType "Tooltip" LineChartConfigurationProperty = TooltipOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "Type" LineChartConfigurationProperty where
  type PropertyType "Type" LineChartConfigurationProperty = Value Prelude.Text
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {type' = Prelude.pure newValue, ..}
instance Property "VisualPalette" LineChartConfigurationProperty where
  type PropertyType "VisualPalette" LineChartConfigurationProperty = VisualPaletteProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "XAxisDisplayOptions" LineChartConfigurationProperty where
  type PropertyType "XAxisDisplayOptions" LineChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {xAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "XAxisLabelOptions" LineChartConfigurationProperty where
  type PropertyType "XAxisLabelOptions" LineChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue LineChartConfigurationProperty {..}
    = LineChartConfigurationProperty
        {xAxisLabelOptions = Prelude.pure newValue, ..}