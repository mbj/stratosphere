module Stratosphere.QuickSight.Dashboard.BarChartConfigurationProperty (
        module Exports, BarChartConfigurationProperty(..),
        mkBarChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BarChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BarChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BarChartConfigurationProperty
  = BarChartConfigurationProperty {barsArrangement :: (Prelude.Maybe (Value Prelude.Text)),
                                   categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                   categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   colorLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                   dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                   fieldWells :: (Prelude.Maybe BarChartFieldWellsProperty),
                                   legend :: (Prelude.Maybe LegendOptionsProperty),
                                   orientation :: (Prelude.Maybe (Value Prelude.Text)),
                                   referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                   smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                   sortConfiguration :: (Prelude.Maybe BarChartSortConfigurationProperty),
                                   tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                   valueAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                   valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
mkBarChartConfigurationProperty :: BarChartConfigurationProperty
mkBarChartConfigurationProperty
  = BarChartConfigurationProperty
      {barsArrangement = Prelude.Nothing, categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       colorLabelOptions = Prelude.Nothing,
       contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       legend = Prelude.Nothing, orientation = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueAxis = Prelude.Nothing, valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties BarChartConfigurationProperty where
  toResourceProperties BarChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BarChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BarsArrangement" Prelude.<$> barsArrangement,
                            (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
                            (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
                            (JSON..=) "ContributionAnalysisDefaults"
                              Prelude.<$> contributionAnalysisDefaults,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "Orientation" Prelude.<$> orientation,
                            (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
                            (JSON..=) "SmallMultiplesOptions"
                              Prelude.<$> smallMultiplesOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "ValueAxis" Prelude.<$> valueAxis,
                            (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON BarChartConfigurationProperty where
  toJSON BarChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BarsArrangement" Prelude.<$> barsArrangement,
               (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
               (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
               (JSON..=) "ContributionAnalysisDefaults"
                 Prelude.<$> contributionAnalysisDefaults,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "Orientation" Prelude.<$> orientation,
               (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
               (JSON..=) "SmallMultiplesOptions"
                 Prelude.<$> smallMultiplesOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "ValueAxis" Prelude.<$> valueAxis,
               (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "BarsArrangement" BarChartConfigurationProperty where
  type PropertyType "BarsArrangement" BarChartConfigurationProperty = Value Prelude.Text
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {barsArrangement = Prelude.pure newValue, ..}
instance Property "CategoryAxis" BarChartConfigurationProperty where
  type PropertyType "CategoryAxis" BarChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {categoryAxis = Prelude.pure newValue, ..}
instance Property "CategoryLabelOptions" BarChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" BarChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "ColorLabelOptions" BarChartConfigurationProperty where
  type PropertyType "ColorLabelOptions" BarChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {colorLabelOptions = Prelude.pure newValue, ..}
instance Property "ContributionAnalysisDefaults" BarChartConfigurationProperty where
  type PropertyType "ContributionAnalysisDefaults" BarChartConfigurationProperty = [ContributionAnalysisDefaultProperty]
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {contributionAnalysisDefaults = Prelude.pure newValue, ..}
instance Property "DataLabels" BarChartConfigurationProperty where
  type PropertyType "DataLabels" BarChartConfigurationProperty = DataLabelOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" BarChartConfigurationProperty where
  type PropertyType "FieldWells" BarChartConfigurationProperty = BarChartFieldWellsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" BarChartConfigurationProperty where
  type PropertyType "Legend" BarChartConfigurationProperty = LegendOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "Orientation" BarChartConfigurationProperty where
  type PropertyType "Orientation" BarChartConfigurationProperty = Value Prelude.Text
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {orientation = Prelude.pure newValue, ..}
instance Property "ReferenceLines" BarChartConfigurationProperty where
  type PropertyType "ReferenceLines" BarChartConfigurationProperty = [ReferenceLineProperty]
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {referenceLines = Prelude.pure newValue, ..}
instance Property "SmallMultiplesOptions" BarChartConfigurationProperty where
  type PropertyType "SmallMultiplesOptions" BarChartConfigurationProperty = SmallMultiplesOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {smallMultiplesOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" BarChartConfigurationProperty where
  type PropertyType "SortConfiguration" BarChartConfigurationProperty = BarChartSortConfigurationProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" BarChartConfigurationProperty where
  type PropertyType "Tooltip" BarChartConfigurationProperty = TooltipOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "ValueAxis" BarChartConfigurationProperty where
  type PropertyType "ValueAxis" BarChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {valueAxis = Prelude.pure newValue, ..}
instance Property "ValueLabelOptions" BarChartConfigurationProperty where
  type PropertyType "ValueLabelOptions" BarChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {valueLabelOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" BarChartConfigurationProperty where
  type PropertyType "VisualPalette" BarChartConfigurationProperty = VisualPaletteProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}