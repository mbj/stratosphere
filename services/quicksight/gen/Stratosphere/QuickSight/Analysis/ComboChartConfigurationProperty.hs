module Stratosphere.QuickSight.Analysis.ComboChartConfigurationProperty (
        module Exports, ComboChartConfigurationProperty(..),
        mkComboChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComboChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ComboChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SingleAxisOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ComboChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html>
    ComboChartConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-bardatalabels>
                                     barDataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-barsarrangement>
                                     barsArrangement :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-categoryaxis>
                                     categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-categorylabeloptions>
                                     categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-colorlabeloptions>
                                     colorLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-fieldwells>
                                     fieldWells :: (Prelude.Maybe ComboChartFieldWellsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-interactions>
                                     interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-legend>
                                     legend :: (Prelude.Maybe LegendOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-linedatalabels>
                                     lineDataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-primaryyaxisdisplayoptions>
                                     primaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-primaryyaxislabeloptions>
                                     primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-referencelines>
                                     referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-secondaryyaxisdisplayoptions>
                                     secondaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-secondaryyaxislabeloptions>
                                     secondaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-singleaxisoptions>
                                     singleAxisOptions :: (Prelude.Maybe SingleAxisOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-sortconfiguration>
                                     sortConfiguration :: (Prelude.Maybe ComboChartSortConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-tooltip>
                                     tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-combochartconfiguration.html#cfn-quicksight-analysis-combochartconfiguration-visualpalette>
                                     visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkComboChartConfigurationProperty ::
  ComboChartConfigurationProperty
mkComboChartConfigurationProperty
  = ComboChartConfigurationProperty
      {haddock_workaround_ = (), barDataLabels = Prelude.Nothing,
       barsArrangement = Prelude.Nothing, categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       colorLabelOptions = Prelude.Nothing, fieldWells = Prelude.Nothing,
       interactions = Prelude.Nothing, legend = Prelude.Nothing,
       lineDataLabels = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       secondaryYAxisDisplayOptions = Prelude.Nothing,
       secondaryYAxisLabelOptions = Prelude.Nothing,
       singleAxisOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties ComboChartConfigurationProperty where
  toResourceProperties ComboChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ComboChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BarDataLabels" Prelude.<$> barDataLabels,
                            (JSON..=) "BarsArrangement" Prelude.<$> barsArrangement,
                            (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
                            (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "LineDataLabels" Prelude.<$> lineDataLabels,
                            (JSON..=) "PrimaryYAxisDisplayOptions"
                              Prelude.<$> primaryYAxisDisplayOptions,
                            (JSON..=) "PrimaryYAxisLabelOptions"
                              Prelude.<$> primaryYAxisLabelOptions,
                            (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
                            (JSON..=) "SecondaryYAxisDisplayOptions"
                              Prelude.<$> secondaryYAxisDisplayOptions,
                            (JSON..=) "SecondaryYAxisLabelOptions"
                              Prelude.<$> secondaryYAxisLabelOptions,
                            (JSON..=) "SingleAxisOptions" Prelude.<$> singleAxisOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON ComboChartConfigurationProperty where
  toJSON ComboChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BarDataLabels" Prelude.<$> barDataLabels,
               (JSON..=) "BarsArrangement" Prelude.<$> barsArrangement,
               (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
               (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "LineDataLabels" Prelude.<$> lineDataLabels,
               (JSON..=) "PrimaryYAxisDisplayOptions"
                 Prelude.<$> primaryYAxisDisplayOptions,
               (JSON..=) "PrimaryYAxisLabelOptions"
                 Prelude.<$> primaryYAxisLabelOptions,
               (JSON..=) "ReferenceLines" Prelude.<$> referenceLines,
               (JSON..=) "SecondaryYAxisDisplayOptions"
                 Prelude.<$> secondaryYAxisDisplayOptions,
               (JSON..=) "SecondaryYAxisLabelOptions"
                 Prelude.<$> secondaryYAxisLabelOptions,
               (JSON..=) "SingleAxisOptions" Prelude.<$> singleAxisOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "BarDataLabels" ComboChartConfigurationProperty where
  type PropertyType "BarDataLabels" ComboChartConfigurationProperty = DataLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {barDataLabels = Prelude.pure newValue, ..}
instance Property "BarsArrangement" ComboChartConfigurationProperty where
  type PropertyType "BarsArrangement" ComboChartConfigurationProperty = Value Prelude.Text
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {barsArrangement = Prelude.pure newValue, ..}
instance Property "CategoryAxis" ComboChartConfigurationProperty where
  type PropertyType "CategoryAxis" ComboChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {categoryAxis = Prelude.pure newValue, ..}
instance Property "CategoryLabelOptions" ComboChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" ComboChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "ColorLabelOptions" ComboChartConfigurationProperty where
  type PropertyType "ColorLabelOptions" ComboChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {colorLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" ComboChartConfigurationProperty where
  type PropertyType "FieldWells" ComboChartConfigurationProperty = ComboChartFieldWellsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" ComboChartConfigurationProperty where
  type PropertyType "Interactions" ComboChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" ComboChartConfigurationProperty where
  type PropertyType "Legend" ComboChartConfigurationProperty = LegendOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "LineDataLabels" ComboChartConfigurationProperty where
  type PropertyType "LineDataLabels" ComboChartConfigurationProperty = DataLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {lineDataLabels = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisDisplayOptions" ComboChartConfigurationProperty where
  type PropertyType "PrimaryYAxisDisplayOptions" ComboChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {primaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisLabelOptions" ComboChartConfigurationProperty where
  type PropertyType "PrimaryYAxisLabelOptions" ComboChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {primaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "ReferenceLines" ComboChartConfigurationProperty where
  type PropertyType "ReferenceLines" ComboChartConfigurationProperty = [ReferenceLineProperty]
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {referenceLines = Prelude.pure newValue, ..}
instance Property "SecondaryYAxisDisplayOptions" ComboChartConfigurationProperty where
  type PropertyType "SecondaryYAxisDisplayOptions" ComboChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {secondaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "SecondaryYAxisLabelOptions" ComboChartConfigurationProperty where
  type PropertyType "SecondaryYAxisLabelOptions" ComboChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {secondaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "SingleAxisOptions" ComboChartConfigurationProperty where
  type PropertyType "SingleAxisOptions" ComboChartConfigurationProperty = SingleAxisOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {singleAxisOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" ComboChartConfigurationProperty where
  type PropertyType "SortConfiguration" ComboChartConfigurationProperty = ComboChartSortConfigurationProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" ComboChartConfigurationProperty where
  type PropertyType "Tooltip" ComboChartConfigurationProperty = TooltipOptionsProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "VisualPalette" ComboChartConfigurationProperty where
  type PropertyType "VisualPalette" ComboChartConfigurationProperty = VisualPaletteProperty
  set newValue ComboChartConfigurationProperty {..}
    = ComboChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}