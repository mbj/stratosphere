module Stratosphere.QuickSight.Analysis.ScatterPlotConfigurationProperty (
        module Exports, ScatterPlotConfigurationProperty(..),
        mkScatterPlotConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ScatterPlotFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotConfigurationProperty
  = ScatterPlotConfigurationProperty {dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                      fieldWells :: (Prelude.Maybe ScatterPlotFieldWellsProperty),
                                      legend :: (Prelude.Maybe LegendOptionsProperty),
                                      tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                      visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                      xAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                      xAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      yAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                      yAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty)}
mkScatterPlotConfigurationProperty ::
  ScatterPlotConfigurationProperty
mkScatterPlotConfigurationProperty
  = ScatterPlotConfigurationProperty
      {dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       legend = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing,
       xAxisDisplayOptions = Prelude.Nothing,
       xAxisLabelOptions = Prelude.Nothing,
       yAxisDisplayOptions = Prelude.Nothing,
       yAxisLabelOptions = Prelude.Nothing}
instance ToResourceProperties ScatterPlotConfigurationProperty where
  toResourceProperties ScatterPlotConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
                            (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions,
                            (JSON..=) "YAxisDisplayOptions" Prelude.<$> yAxisDisplayOptions,
                            (JSON..=) "YAxisLabelOptions" Prelude.<$> yAxisLabelOptions])}
instance JSON.ToJSON ScatterPlotConfigurationProperty where
  toJSON ScatterPlotConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
               (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions,
               (JSON..=) "YAxisDisplayOptions" Prelude.<$> yAxisDisplayOptions,
               (JSON..=) "YAxisLabelOptions" Prelude.<$> yAxisLabelOptions]))
instance Property "DataLabels" ScatterPlotConfigurationProperty where
  type PropertyType "DataLabels" ScatterPlotConfigurationProperty = DataLabelOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" ScatterPlotConfigurationProperty where
  type PropertyType "FieldWells" ScatterPlotConfigurationProperty = ScatterPlotFieldWellsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Legend" ScatterPlotConfigurationProperty where
  type PropertyType "Legend" ScatterPlotConfigurationProperty = LegendOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "Tooltip" ScatterPlotConfigurationProperty where
  type PropertyType "Tooltip" ScatterPlotConfigurationProperty = TooltipOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "VisualPalette" ScatterPlotConfigurationProperty where
  type PropertyType "VisualPalette" ScatterPlotConfigurationProperty = VisualPaletteProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "XAxisDisplayOptions" ScatterPlotConfigurationProperty where
  type PropertyType "XAxisDisplayOptions" ScatterPlotConfigurationProperty = AxisDisplayOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {xAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "XAxisLabelOptions" ScatterPlotConfigurationProperty where
  type PropertyType "XAxisLabelOptions" ScatterPlotConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {xAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "YAxisDisplayOptions" ScatterPlotConfigurationProperty where
  type PropertyType "YAxisDisplayOptions" ScatterPlotConfigurationProperty = AxisDisplayOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {yAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "YAxisLabelOptions" ScatterPlotConfigurationProperty where
  type PropertyType "YAxisLabelOptions" ScatterPlotConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {yAxisLabelOptions = Prelude.pure newValue, ..}