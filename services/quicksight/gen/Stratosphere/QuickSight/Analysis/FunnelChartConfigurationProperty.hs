module Stratosphere.QuickSight.Analysis.FunnelChartConfigurationProperty (
        module Exports, FunnelChartConfigurationProperty(..),
        mkFunnelChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartDataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartConfigurationProperty
  = FunnelChartConfigurationProperty {categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      dataLabelOptions :: (Prelude.Maybe FunnelChartDataLabelOptionsProperty),
                                      fieldWells :: (Prelude.Maybe FunnelChartFieldWellsProperty),
                                      sortConfiguration :: (Prelude.Maybe FunnelChartSortConfigurationProperty),
                                      tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                      valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
mkFunnelChartConfigurationProperty ::
  FunnelChartConfigurationProperty
mkFunnelChartConfigurationProperty
  = FunnelChartConfigurationProperty
      {categoryLabelOptions = Prelude.Nothing,
       dataLabelOptions = Prelude.Nothing, fieldWells = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties FunnelChartConfigurationProperty where
  toResourceProperties FunnelChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "DataLabelOptions" Prelude.<$> dataLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON FunnelChartConfigurationProperty where
  toJSON FunnelChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "DataLabelOptions" Prelude.<$> dataLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "CategoryLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" FunnelChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "DataLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "DataLabelOptions" FunnelChartConfigurationProperty = FunnelChartDataLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {dataLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" FunnelChartConfigurationProperty where
  type PropertyType "FieldWells" FunnelChartConfigurationProperty = FunnelChartFieldWellsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "SortConfiguration" FunnelChartConfigurationProperty where
  type PropertyType "SortConfiguration" FunnelChartConfigurationProperty = FunnelChartSortConfigurationProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" FunnelChartConfigurationProperty where
  type PropertyType "Tooltip" FunnelChartConfigurationProperty = TooltipOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "ValueLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "ValueLabelOptions" FunnelChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {valueLabelOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" FunnelChartConfigurationProperty where
  type PropertyType "VisualPalette" FunnelChartConfigurationProperty = VisualPaletteProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}