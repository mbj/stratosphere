module Stratosphere.QuickSight.Analysis.GaugeChartConfigurationProperty (
        module Exports, GaugeChartConfigurationProperty(..),
        mkGaugeChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartColorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.GaugeChartOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data GaugeChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html>
    GaugeChartConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-colorconfiguration>
                                     colorConfiguration :: (Prelude.Maybe GaugeChartColorConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-datalabels>
                                     dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-fieldwells>
                                     fieldWells :: (Prelude.Maybe GaugeChartFieldWellsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-gaugechartoptions>
                                     gaugeChartOptions :: (Prelude.Maybe GaugeChartOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-interactions>
                                     interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-tooltipoptions>
                                     tooltipOptions :: (Prelude.Maybe TooltipOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-gaugechartconfiguration.html#cfn-quicksight-analysis-gaugechartconfiguration-visualpalette>
                                     visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGaugeChartConfigurationProperty ::
  GaugeChartConfigurationProperty
mkGaugeChartConfigurationProperty
  = GaugeChartConfigurationProperty
      {haddock_workaround_ = (), colorConfiguration = Prelude.Nothing,
       dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       gaugeChartOptions = Prelude.Nothing,
       interactions = Prelude.Nothing, tooltipOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties GaugeChartConfigurationProperty where
  toResourceProperties GaugeChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.GaugeChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorConfiguration" Prelude.<$> colorConfiguration,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "GaugeChartOptions" Prelude.<$> gaugeChartOptions,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "TooltipOptions" Prelude.<$> tooltipOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON GaugeChartConfigurationProperty where
  toJSON GaugeChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorConfiguration" Prelude.<$> colorConfiguration,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "GaugeChartOptions" Prelude.<$> gaugeChartOptions,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "TooltipOptions" Prelude.<$> tooltipOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "ColorConfiguration" GaugeChartConfigurationProperty where
  type PropertyType "ColorConfiguration" GaugeChartConfigurationProperty = GaugeChartColorConfigurationProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {colorConfiguration = Prelude.pure newValue, ..}
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
instance Property "Interactions" GaugeChartConfigurationProperty where
  type PropertyType "Interactions" GaugeChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue GaugeChartConfigurationProperty {..}
    = GaugeChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
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