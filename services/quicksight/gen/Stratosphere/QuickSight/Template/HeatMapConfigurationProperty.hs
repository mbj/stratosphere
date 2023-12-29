module Stratosphere.QuickSight.Template.HeatMapConfigurationProperty (
        module Exports, HeatMapConfigurationProperty(..),
        mkHeatMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColorScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HeatMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HeatMapSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapConfigurationProperty
  = HeatMapConfigurationProperty {colorScale :: (Prelude.Maybe ColorScaleProperty),
                                  columnLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                  fieldWells :: (Prelude.Maybe HeatMapFieldWellsProperty),
                                  legend :: (Prelude.Maybe LegendOptionsProperty),
                                  rowLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  sortConfiguration :: (Prelude.Maybe HeatMapSortConfigurationProperty),
                                  tooltip :: (Prelude.Maybe TooltipOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapConfigurationProperty :: HeatMapConfigurationProperty
mkHeatMapConfigurationProperty
  = HeatMapConfigurationProperty
      {colorScale = Prelude.Nothing,
       columnLabelOptions = Prelude.Nothing, dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, legend = Prelude.Nothing,
       rowLabelOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing}
instance ToResourceProperties HeatMapConfigurationProperty where
  toResourceProperties HeatMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.HeatMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorScale" Prelude.<$> colorScale,
                            (JSON..=) "ColumnLabelOptions" Prelude.<$> columnLabelOptions,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "RowLabelOptions" Prelude.<$> rowLabelOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip])}
instance JSON.ToJSON HeatMapConfigurationProperty where
  toJSON HeatMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorScale" Prelude.<$> colorScale,
               (JSON..=) "ColumnLabelOptions" Prelude.<$> columnLabelOptions,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "RowLabelOptions" Prelude.<$> rowLabelOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip]))
instance Property "ColorScale" HeatMapConfigurationProperty where
  type PropertyType "ColorScale" HeatMapConfigurationProperty = ColorScaleProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {colorScale = Prelude.pure newValue, ..}
instance Property "ColumnLabelOptions" HeatMapConfigurationProperty where
  type PropertyType "ColumnLabelOptions" HeatMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {columnLabelOptions = Prelude.pure newValue, ..}
instance Property "DataLabels" HeatMapConfigurationProperty where
  type PropertyType "DataLabels" HeatMapConfigurationProperty = DataLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" HeatMapConfigurationProperty where
  type PropertyType "FieldWells" HeatMapConfigurationProperty = HeatMapFieldWellsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" HeatMapConfigurationProperty where
  type PropertyType "Legend" HeatMapConfigurationProperty = LegendOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty {legend = Prelude.pure newValue, ..}
instance Property "RowLabelOptions" HeatMapConfigurationProperty where
  type PropertyType "RowLabelOptions" HeatMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {rowLabelOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" HeatMapConfigurationProperty where
  type PropertyType "SortConfiguration" HeatMapConfigurationProperty = HeatMapSortConfigurationProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" HeatMapConfigurationProperty where
  type PropertyType "Tooltip" HeatMapConfigurationProperty = TooltipOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}