module Stratosphere.QuickSight.Template.HistogramConfigurationProperty (
        module Exports, HistogramConfigurationProperty(..),
        mkHistogramConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HistogramBinOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HistogramFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data HistogramConfigurationProperty
  = HistogramConfigurationProperty {binOptions :: (Prelude.Maybe HistogramBinOptionsProperty),
                                    dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                    fieldWells :: (Prelude.Maybe HistogramFieldWellsProperty),
                                    tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                    visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                    xAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                    xAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                    yAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHistogramConfigurationProperty :: HistogramConfigurationProperty
mkHistogramConfigurationProperty
  = HistogramConfigurationProperty
      {binOptions = Prelude.Nothing, dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing,
       xAxisDisplayOptions = Prelude.Nothing,
       xAxisLabelOptions = Prelude.Nothing,
       yAxisDisplayOptions = Prelude.Nothing}
instance ToResourceProperties HistogramConfigurationProperty where
  toResourceProperties HistogramConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.HistogramConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BinOptions" Prelude.<$> binOptions,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
                            (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions,
                            (JSON..=) "YAxisDisplayOptions" Prelude.<$> yAxisDisplayOptions])}
instance JSON.ToJSON HistogramConfigurationProperty where
  toJSON HistogramConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BinOptions" Prelude.<$> binOptions,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "XAxisDisplayOptions" Prelude.<$> xAxisDisplayOptions,
               (JSON..=) "XAxisLabelOptions" Prelude.<$> xAxisLabelOptions,
               (JSON..=) "YAxisDisplayOptions" Prelude.<$> yAxisDisplayOptions]))
instance Property "BinOptions" HistogramConfigurationProperty where
  type PropertyType "BinOptions" HistogramConfigurationProperty = HistogramBinOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {binOptions = Prelude.pure newValue, ..}
instance Property "DataLabels" HistogramConfigurationProperty where
  type PropertyType "DataLabels" HistogramConfigurationProperty = DataLabelOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" HistogramConfigurationProperty where
  type PropertyType "FieldWells" HistogramConfigurationProperty = HistogramFieldWellsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Tooltip" HistogramConfigurationProperty where
  type PropertyType "Tooltip" HistogramConfigurationProperty = TooltipOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "VisualPalette" HistogramConfigurationProperty where
  type PropertyType "VisualPalette" HistogramConfigurationProperty = VisualPaletteProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "XAxisDisplayOptions" HistogramConfigurationProperty where
  type PropertyType "XAxisDisplayOptions" HistogramConfigurationProperty = AxisDisplayOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {xAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "XAxisLabelOptions" HistogramConfigurationProperty where
  type PropertyType "XAxisLabelOptions" HistogramConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {xAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "YAxisDisplayOptions" HistogramConfigurationProperty where
  type PropertyType "YAxisDisplayOptions" HistogramConfigurationProperty = AxisDisplayOptionsProperty
  set newValue HistogramConfigurationProperty {..}
    = HistogramConfigurationProperty
        {yAxisDisplayOptions = Prelude.pure newValue, ..}