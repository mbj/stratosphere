module Stratosphere.QuickSight.Analysis.LineChartConfigurationProperty (
        module Exports, LineChartConfigurationProperty(..),
        mkLineChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ForecastConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartDefaultSeriesSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineSeriesAxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SeriesItemProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartConfigurationProperty
  = LineChartConfigurationProperty {contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                    dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                    defaultSeriesSettings :: (Prelude.Maybe LineChartDefaultSeriesSettingsProperty),
                                    fieldWells :: (Prelude.Maybe LineChartFieldWellsProperty),
                                    forecastConfigurations :: (Prelude.Maybe [ForecastConfigurationProperty]),
                                    legend :: (Prelude.Maybe LegendOptionsProperty),
                                    primaryYAxisDisplayOptions :: (Prelude.Maybe LineSeriesAxisDisplayOptionsProperty),
                                    primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                    referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                    secondaryYAxisDisplayOptions :: (Prelude.Maybe LineSeriesAxisDisplayOptionsProperty),
                                    secondaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                    series :: (Prelude.Maybe [SeriesItemProperty]),
                                    smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                    sortConfiguration :: (Prelude.Maybe LineChartSortConfigurationProperty),
                                    tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                    type' :: (Prelude.Maybe (Value Prelude.Text)),
                                    visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                    xAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                    xAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartConfigurationProperty :: LineChartConfigurationProperty
mkLineChartConfigurationProperty
  = LineChartConfigurationProperty
      {contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing,
       defaultSeriesSettings = Prelude.Nothing,
       fieldWells = Prelude.Nothing,
       forecastConfigurations = Prelude.Nothing, legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       secondaryYAxisDisplayOptions = Prelude.Nothing,
       secondaryYAxisLabelOptions = Prelude.Nothing,
       series = Prelude.Nothing, smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       type' = Prelude.Nothing, visualPalette = Prelude.Nothing,
       xAxisDisplayOptions = Prelude.Nothing,
       xAxisLabelOptions = Prelude.Nothing}
instance ToResourceProperties LineChartConfigurationProperty where
  toResourceProperties LineChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartConfiguration",
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