module Stratosphere.QuickSight.Dashboard.WaterfallChartConfigurationProperty (
        module Exports, WaterfallChartConfigurationProperty(..),
        mkWaterfallChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartSortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartConfigurationProperty
  = WaterfallChartConfigurationProperty {categoryAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                         categoryAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                         dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                         fieldWells :: (Prelude.Maybe WaterfallChartFieldWellsProperty),
                                         legend :: (Prelude.Maybe LegendOptionsProperty),
                                         primaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                         primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                         sortConfiguration :: (Prelude.Maybe WaterfallChartSortConfigurationProperty),
                                         visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                         waterfallChartOptions :: (Prelude.Maybe WaterfallChartOptionsProperty)}
mkWaterfallChartConfigurationProperty ::
  WaterfallChartConfigurationProperty
mkWaterfallChartConfigurationProperty
  = WaterfallChartConfigurationProperty
      {categoryAxisDisplayOptions = Prelude.Nothing,
       categoryAxisLabelOptions = Prelude.Nothing,
       dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       visualPalette = Prelude.Nothing,
       waterfallChartOptions = Prelude.Nothing}
instance ToResourceProperties WaterfallChartConfigurationProperty where
  toResourceProperties WaterfallChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryAxisDisplayOptions"
                              Prelude.<$> categoryAxisDisplayOptions,
                            (JSON..=) "CategoryAxisLabelOptions"
                              Prelude.<$> categoryAxisLabelOptions,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "PrimaryYAxisDisplayOptions"
                              Prelude.<$> primaryYAxisDisplayOptions,
                            (JSON..=) "PrimaryYAxisLabelOptions"
                              Prelude.<$> primaryYAxisLabelOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "WaterfallChartOptions"
                              Prelude.<$> waterfallChartOptions])}
instance JSON.ToJSON WaterfallChartConfigurationProperty where
  toJSON WaterfallChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryAxisDisplayOptions"
                 Prelude.<$> categoryAxisDisplayOptions,
               (JSON..=) "CategoryAxisLabelOptions"
                 Prelude.<$> categoryAxisLabelOptions,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "PrimaryYAxisDisplayOptions"
                 Prelude.<$> primaryYAxisDisplayOptions,
               (JSON..=) "PrimaryYAxisLabelOptions"
                 Prelude.<$> primaryYAxisLabelOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "WaterfallChartOptions"
                 Prelude.<$> waterfallChartOptions]))
instance Property "CategoryAxisDisplayOptions" WaterfallChartConfigurationProperty where
  type PropertyType "CategoryAxisDisplayOptions" WaterfallChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {categoryAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "CategoryAxisLabelOptions" WaterfallChartConfigurationProperty where
  type PropertyType "CategoryAxisLabelOptions" WaterfallChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {categoryAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "DataLabels" WaterfallChartConfigurationProperty where
  type PropertyType "DataLabels" WaterfallChartConfigurationProperty = DataLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" WaterfallChartConfigurationProperty where
  type PropertyType "FieldWells" WaterfallChartConfigurationProperty = WaterfallChartFieldWellsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" WaterfallChartConfigurationProperty where
  type PropertyType "Legend" WaterfallChartConfigurationProperty = LegendOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisDisplayOptions" WaterfallChartConfigurationProperty where
  type PropertyType "PrimaryYAxisDisplayOptions" WaterfallChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {primaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisLabelOptions" WaterfallChartConfigurationProperty where
  type PropertyType "PrimaryYAxisLabelOptions" WaterfallChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {primaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" WaterfallChartConfigurationProperty where
  type PropertyType "SortConfiguration" WaterfallChartConfigurationProperty = WaterfallChartSortConfigurationProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "VisualPalette" WaterfallChartConfigurationProperty where
  type PropertyType "VisualPalette" WaterfallChartConfigurationProperty = VisualPaletteProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "WaterfallChartOptions" WaterfallChartConfigurationProperty where
  type PropertyType "WaterfallChartOptions" WaterfallChartConfigurationProperty = WaterfallChartOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {waterfallChartOptions = Prelude.pure newValue, ..}