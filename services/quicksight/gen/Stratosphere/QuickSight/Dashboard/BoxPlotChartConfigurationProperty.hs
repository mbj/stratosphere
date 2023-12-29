module Stratosphere.QuickSight.Dashboard.BoxPlotChartConfigurationProperty (
        module Exports, BoxPlotChartConfigurationProperty(..),
        mkBoxPlotChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BoxPlotFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BoxPlotOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.BoxPlotSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotChartConfigurationProperty
  = BoxPlotChartConfigurationProperty {boxPlotOptions :: (Prelude.Maybe BoxPlotOptionsProperty),
                                       categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                       categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                       fieldWells :: (Prelude.Maybe BoxPlotFieldWellsProperty),
                                       legend :: (Prelude.Maybe LegendOptionsProperty),
                                       primaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                       primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                       referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                       sortConfiguration :: (Prelude.Maybe BoxPlotSortConfigurationProperty),
                                       tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                       visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotChartConfigurationProperty ::
  BoxPlotChartConfigurationProperty
mkBoxPlotChartConfigurationProperty
  = BoxPlotChartConfigurationProperty
      {boxPlotOptions = Prelude.Nothing, categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties BoxPlotChartConfigurationProperty where
  toResourceProperties BoxPlotChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.BoxPlotChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BoxPlotOptions" Prelude.<$> boxPlotOptions,
                            (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
                            (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "PrimaryYAxisDisplayOptions"
                              Prelude.<$> primaryYAxisDisplayOptions,
                            (JSON..=) "PrimaryYAxisLabelOptions"
                              Prelude.<$> primaryYAxisLabelOptions,
                            (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON BoxPlotChartConfigurationProperty where
  toJSON BoxPlotChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BoxPlotOptions" Prelude.<$> boxPlotOptions,
               (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
               (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "PrimaryYAxisDisplayOptions"
                 Prelude.<$> primaryYAxisDisplayOptions,
               (JSON..=) "PrimaryYAxisLabelOptions"
                 Prelude.<$> primaryYAxisLabelOptions,
               (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "BoxPlotOptions" BoxPlotChartConfigurationProperty where
  type PropertyType "BoxPlotOptions" BoxPlotChartConfigurationProperty = BoxPlotOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {boxPlotOptions = Prelude.pure newValue, ..}
instance Property "CategoryAxis" BoxPlotChartConfigurationProperty where
  type PropertyType "CategoryAxis" BoxPlotChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {categoryAxis = Prelude.pure newValue, ..}
instance Property "CategoryLabelOptions" BoxPlotChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" BoxPlotChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" BoxPlotChartConfigurationProperty where
  type PropertyType "FieldWells" BoxPlotChartConfigurationProperty = BoxPlotFieldWellsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" BoxPlotChartConfigurationProperty where
  type PropertyType "Legend" BoxPlotChartConfigurationProperty = LegendOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisDisplayOptions" BoxPlotChartConfigurationProperty where
  type PropertyType "PrimaryYAxisDisplayOptions" BoxPlotChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {primaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisLabelOptions" BoxPlotChartConfigurationProperty where
  type PropertyType "PrimaryYAxisLabelOptions" BoxPlotChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {primaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "ReferenceLines" BoxPlotChartConfigurationProperty where
  type PropertyType "ReferenceLines" BoxPlotChartConfigurationProperty = [ReferenceLineProperty]
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {referenceLines = Prelude.pure newValue, ..}
instance Property "SortConfiguration" BoxPlotChartConfigurationProperty where
  type PropertyType "SortConfiguration" BoxPlotChartConfigurationProperty = BoxPlotSortConfigurationProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" BoxPlotChartConfigurationProperty where
  type PropertyType "Tooltip" BoxPlotChartConfigurationProperty = TooltipOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "VisualPalette" BoxPlotChartConfigurationProperty where
  type PropertyType "VisualPalette" BoxPlotChartConfigurationProperty = VisualPaletteProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}