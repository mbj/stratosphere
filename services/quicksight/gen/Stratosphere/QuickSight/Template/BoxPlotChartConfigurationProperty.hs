module Stratosphere.QuickSight.Template.BoxPlotChartConfigurationProperty (
        module Exports, BoxPlotChartConfigurationProperty(..),
        mkBoxPlotChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BoxPlotFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BoxPlotOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BoxPlotSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ReferenceLineProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data BoxPlotChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html>
    BoxPlotChartConfigurationProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-boxplotoptions>
                                       boxPlotOptions :: (Prelude.Maybe BoxPlotOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-categoryaxis>
                                       categoryAxis :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-categorylabeloptions>
                                       categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-fieldwells>
                                       fieldWells :: (Prelude.Maybe BoxPlotFieldWellsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-interactions>
                                       interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-legend>
                                       legend :: (Prelude.Maybe LegendOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-primaryyaxisdisplayoptions>
                                       primaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-primaryyaxislabeloptions>
                                       primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-referencelines>
                                       referenceLines :: (Prelude.Maybe [ReferenceLineProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-sortconfiguration>
                                       sortConfiguration :: (Prelude.Maybe BoxPlotSortConfigurationProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-tooltip>
                                       tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-boxplotchartconfiguration.html#cfn-quicksight-template-boxplotchartconfiguration-visualpalette>
                                       visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotChartConfigurationProperty ::
  BoxPlotChartConfigurationProperty
mkBoxPlotChartConfigurationProperty
  = BoxPlotChartConfigurationProperty
      {haddock_workaround_ = (), boxPlotOptions = Prelude.Nothing,
       categoryAxis = Prelude.Nothing,
       categoryLabelOptions = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       referenceLines = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties BoxPlotChartConfigurationProperty where
  toResourceProperties BoxPlotChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.BoxPlotChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BoxPlotOptions" Prelude.<$> boxPlotOptions,
                            (JSON..=) "CategoryAxis" Prelude.<$> categoryAxis,
                            (JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
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
               (JSON..=) "Interactions" Prelude.<$> interactions,
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
instance Property "Interactions" BoxPlotChartConfigurationProperty where
  type PropertyType "Interactions" BoxPlotChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue BoxPlotChartConfigurationProperty {..}
    = BoxPlotChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
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