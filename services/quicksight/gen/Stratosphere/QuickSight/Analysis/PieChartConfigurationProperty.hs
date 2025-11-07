module Stratosphere.QuickSight.Analysis.PieChartConfigurationProperty (
        module Exports, PieChartConfigurationProperty(..),
        mkPieChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ContributionAnalysisDefaultProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DonutOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PieChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.PieChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SmallMultiplesOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data PieChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html>
    PieChartConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-categorylabeloptions>
                                   categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-contributionanalysisdefaults>
                                   contributionAnalysisDefaults :: (Prelude.Maybe [ContributionAnalysisDefaultProperty]),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-datalabels>
                                   dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-donutoptions>
                                   donutOptions :: (Prelude.Maybe DonutOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-fieldwells>
                                   fieldWells :: (Prelude.Maybe PieChartFieldWellsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-interactions>
                                   interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-legend>
                                   legend :: (Prelude.Maybe LegendOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-smallmultiplesoptions>
                                   smallMultiplesOptions :: (Prelude.Maybe SmallMultiplesOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-sortconfiguration>
                                   sortConfiguration :: (Prelude.Maybe PieChartSortConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-tooltip>
                                   tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-valuelabeloptions>
                                   valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-piechartconfiguration.html#cfn-quicksight-analysis-piechartconfiguration-visualpalette>
                                   visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPieChartConfigurationProperty :: PieChartConfigurationProperty
mkPieChartConfigurationProperty
  = PieChartConfigurationProperty
      {haddock_workaround_ = (), categoryLabelOptions = Prelude.Nothing,
       contributionAnalysisDefaults = Prelude.Nothing,
       dataLabels = Prelude.Nothing, donutOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing, smallMultiplesOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties PieChartConfigurationProperty where
  toResourceProperties PieChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.PieChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "ContributionAnalysisDefaults"
                              Prelude.<$> contributionAnalysisDefaults,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "DonutOptions" Prelude.<$> donutOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "SmallMultiplesOptions"
                              Prelude.<$> smallMultiplesOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON PieChartConfigurationProperty where
  toJSON PieChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "ContributionAnalysisDefaults"
                 Prelude.<$> contributionAnalysisDefaults,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "DonutOptions" Prelude.<$> donutOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "SmallMultiplesOptions"
                 Prelude.<$> smallMultiplesOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "CategoryLabelOptions" PieChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" PieChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "ContributionAnalysisDefaults" PieChartConfigurationProperty where
  type PropertyType "ContributionAnalysisDefaults" PieChartConfigurationProperty = [ContributionAnalysisDefaultProperty]
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {contributionAnalysisDefaults = Prelude.pure newValue, ..}
instance Property "DataLabels" PieChartConfigurationProperty where
  type PropertyType "DataLabels" PieChartConfigurationProperty = DataLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "DonutOptions" PieChartConfigurationProperty where
  type PropertyType "DonutOptions" PieChartConfigurationProperty = DonutOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {donutOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" PieChartConfigurationProperty where
  type PropertyType "FieldWells" PieChartConfigurationProperty = PieChartFieldWellsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" PieChartConfigurationProperty where
  type PropertyType "Interactions" PieChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" PieChartConfigurationProperty where
  type PropertyType "Legend" PieChartConfigurationProperty = LegendOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "SmallMultiplesOptions" PieChartConfigurationProperty where
  type PropertyType "SmallMultiplesOptions" PieChartConfigurationProperty = SmallMultiplesOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {smallMultiplesOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" PieChartConfigurationProperty where
  type PropertyType "SortConfiguration" PieChartConfigurationProperty = PieChartSortConfigurationProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" PieChartConfigurationProperty where
  type PropertyType "Tooltip" PieChartConfigurationProperty = TooltipOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "ValueLabelOptions" PieChartConfigurationProperty where
  type PropertyType "ValueLabelOptions" PieChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {valueLabelOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" PieChartConfigurationProperty where
  type PropertyType "VisualPalette" PieChartConfigurationProperty = VisualPaletteProperty
  set newValue PieChartConfigurationProperty {..}
    = PieChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}