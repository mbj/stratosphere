module Stratosphere.QuickSight.Analysis.GaugeChartConfigurationProperty (
        module Exports, GaugeChartConfigurationProperty(..),
        mkGaugeChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartConfigurationProperty
  = GaugeChartConfigurationProperty {dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                     fieldWells :: (Prelude.Maybe GaugeChartFieldWellsProperty),
                                     gaugeChartOptions :: (Prelude.Maybe GaugeChartOptionsProperty),
                                     tooltipOptions :: (Prelude.Maybe TooltipOptionsProperty),
                                     visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartConfigurationProperty ::
  GaugeChartConfigurationProperty
mkGaugeChartConfigurationProperty
  = GaugeChartConfigurationProperty
      {dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       gaugeChartOptions = Prelude.Nothing,
       tooltipOptions = Prelude.Nothing, visualPalette = Prelude.Nothing}
instance ToResourceProperties GaugeChartConfigurationProperty where
  toResourceProperties GaugeChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "GaugeChartOptions" Prelude.<$> gaugeChartOptions,
                            (JSON..=) "TooltipOptions" Prelude.<$> tooltipOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON GaugeChartConfigurationProperty where
  toJSON GaugeChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "GaugeChartOptions" Prelude.<$> gaugeChartOptions,
               (JSON..=) "TooltipOptions" Prelude.<$> tooltipOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "DataLabels" GaugeChartConfigurationProperty where
  type PropertyType "DataLabels" GaugeChartConfigurationProperty = DataLabelOptionsProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" GaugeChartConfigurationProperty where
  type PropertyType "FieldWells" GaugeChartConfigurationProperty = GaugeChartFieldWellsProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "GaugeChartOptions" GaugeChartConfigurationProperty where
  type PropertyType "GaugeChartOptions" GaugeChartConfigurationProperty = GaugeChartOptionsProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {gaugeChartOptions = Prelude.pure newValue, ..}
instance Property "TooltipOptions" GaugeChartConfigurationProperty where
  type PropertyType "TooltipOptions" GaugeChartConfigurationProperty = TooltipOptionsProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {tooltipOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" GaugeChartConfigurationProperty where
  type PropertyType "VisualPalette" GaugeChartConfigurationProperty = VisualPaletteProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}