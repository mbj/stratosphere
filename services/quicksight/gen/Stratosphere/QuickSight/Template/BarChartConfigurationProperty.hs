module Stratosphere.QuickSight.Template.BarChartConfigurationProperty (
        module Exports, BarChartConfigurationProperty(..),
        mkBarChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BarChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BarChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BarChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html>
    BarChartConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-barsarrangement>
                                   barsArrangement :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-categoryaxis>
                                   categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-categorylabeloptions>
                                   categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-colorlabeloptions>
                                   colorLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-contributionanalysisdefaults>
                                   contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-datalabels>
                                   dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-fieldwells>
                                   fieldWells :: (Prelude.Maybe BarChartFieldWellsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-interactions>
                                   interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-legend>
                                   legend :: (Prelude.Maybe LegendOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-orientation>
                                   orientation :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-referencelines>
                                   referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-smallmultiplesoptions>
                                   smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-sortconfiguration>
                                   sortConfiguration :: (Prelude.Maybe BarChartSortConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-tooltip>
                                   tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-valueaxis>
                                   valueAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-valuelabeloptions>
                                   valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-barchartconfiguration.html#cfn-quicksight-template-barchartconfiguration-visualpalette>
                                   visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBarChartConfigurationProperty :: BarChartConfigurationProperty
mkBarChartConfigurationProperty
  = BarChartConfigurationProperty
      {haddock_workaround_ = (), barsArrangement = Prelude.Nothing,
       categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       colorLabelOptions = Prelude.Nothing,
       contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing, fieldWells = Prelude.Nothing,
       interactions = Prelude.Nothing, legend = Prelude.Nothing,
       orientation = Prelude.Nothing, referenceLines = Prelude.Nothing,
       smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueAxis = Prelude.Nothing, valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties BarChartConfigurationProperty where
  toResourceProperties BarChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BarChartConfiguration",
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
                            (JSON..=) "Interactions" Prelude.<$> interactions,
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
               (JSON..=) "Interactions" Prelude.<$> interactions,
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
instance Property "Interactions" BarChartConfigurationProperty where
  type PropertyType "Interactions" BarChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue BarChartConfigurationProperty {..}
    = BarChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
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