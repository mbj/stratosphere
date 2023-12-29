module Stratosphere.QuickSight.Dashboard.PieChartConfigurationProperty (
        module Exports, PieChartConfigurationProperty(..),
        mkPieChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DonutOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PieChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PieChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data PieChartConfigurationProperty
  = PieChartConfigurationProperty {categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                   dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                   donutOptions :: (Prelude.Maybe DonutOptionsProperty),
                                   fieldWells :: (Prelude.Maybe PieChartFieldWellsProperty),
                                   legend :: (Prelude.Maybe LegendOptionsProperty),
                                   smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                   sortConfiguration :: (Prelude.Maybe PieChartSortConfigurationProperty),
                                   tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                   valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartConfigurationProperty :: PieChartConfigurationProperty
mkPieChartConfigurationProperty
  = PieChartConfigurationProperty
      {categoryLabelOptions = Prelude.Nothing,
       contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing, donutOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, legend = Prelude.Nothing,
       smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties PieChartConfigurationProperty where
  toResourceProperties PieChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PieChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "ContributionAnalysisDefaults"
                              Prelude.<$> contributionAnalysisDefaults,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "DonutOptions" Prelude.<$> donutOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "SmallMultiplesOptions"
                              Prelude.<$> smallMultiplesOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON PieChartConfigurationProperty where
  toJSON PieChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "ContributionAnalysisDefaults"
                 Prelude.<$> contributionAnalysisDefaults,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "DonutOptions" Prelude.<$> donutOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "SmallMultiplesOptions"
                 Prelude.<$> smallMultiplesOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "CategoryLabelOptions" PieChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" PieChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "ContributionAnalysisDefaults" PieChartConfigurationProperty where
  type PropertyType "ContributionAnalysisDefaults" PieChartConfigurationProperty = [ContributionAnalysisDefaultProperty]
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {contributionAnalysisDefaults = Prelude.pure newValue, ..}
instance Property "DataLabels" PieChartConfigurationProperty where
  type PropertyType "DataLabels" PieChartConfigurationProperty = DataLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "DonutOptions" PieChartConfigurationProperty where
  type PropertyType "DonutOptions" PieChartConfigurationProperty = DonutOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {donutOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" PieChartConfigurationProperty where
  type PropertyType "FieldWells" PieChartConfigurationProperty = PieChartFieldWellsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" PieChartConfigurationProperty where
  type PropertyType "Legend" PieChartConfigurationProperty = LegendOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "SmallMultiplesOptions" PieChartConfigurationProperty where
  type PropertyType "SmallMultiplesOptions" PieChartConfigurationProperty = SmallMultiplesOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {smallMultiplesOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" PieChartConfigurationProperty where
  type PropertyType "SortConfiguration" PieChartConfigurationProperty = PieChartSortConfigurationProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" PieChartConfigurationProperty where
  type PropertyType "Tooltip" PieChartConfigurationProperty = TooltipOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "ValueLabelOptions" PieChartConfigurationProperty where
  type PropertyType "ValueLabelOptions" PieChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {valueLabelOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" PieChartConfigurationProperty where
  type PropertyType "VisualPalette" PieChartConfigurationProperty = VisualPaletteProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}