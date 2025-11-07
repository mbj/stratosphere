module Stratosphere.QuickSight.Dashboard.ScatterPlotConfigurationProperty (
        module Exports, ScatterPlotConfigurationProperty(..),
        mkScatterPlotConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ScatterPlotFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ScatterPlotSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data ScatterPlotConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html>
    ScatterPlotConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-datalabels>
                                      dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-fieldwells>
                                      fieldWells :: (Prelude.Maybe ScatterPlotFieldWellsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-interactions>
                                      interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-legend>
                                      legend :: (Prelude.Maybe LegendOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-sortconfiguration>
                                      sortConfiguration :: (Prelude.Maybe ScatterPlotSortConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-tooltip>
                                      tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-visualpalette>
                                      visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-xaxisdisplayoptions>
                                      xAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-xaxislabeloptions>
                                      xAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-yaxisdisplayoptions>
                                      yAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-scatterplotconfiguration.html#cfn-quicksight-dashboard-scatterplotconfiguration-yaxislabeloptions>
                                      yAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotConfigurationProperty ::
  ScatterPlotConfigurationProperty
mkScatterPlotConfigurationProperty
  = ScatterPlotConfigurationProperty
      {haddock_workaround_ = (), dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing, sortConfiguration = Prelude.Nothing,
       tooltip = Prelude.Nothing, visualPalette = Prelude.Nothing,
       xAxisDisplayOptions = Prelude.Nothing,
       xAxisLabelOptions = Prelude.Nothing,
       yAxisDisplayOptions = Prelude.Nothing,
       yAxisLabelOptions = Prelude.Nothing}
instance ToResourceProperties ScatterPlotConfigurationProperty where
  toResourceProperties ScatterPlotConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ScatterPlotConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
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
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
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
instance Property "Interactions" ScatterPlotConfigurationProperty where
  type PropertyType "Interactions" ScatterPlotConfigurationProperty = VisualInteractionOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" ScatterPlotConfigurationProperty where
  type PropertyType "Legend" ScatterPlotConfigurationProperty = LegendOptionsProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "SortConfiguration" ScatterPlotConfigurationProperty where
  type PropertyType "SortConfiguration" ScatterPlotConfigurationProperty = ScatterPlotSortConfigurationProperty
  set newValue ScatterPlotConfigurationProperty {..}
    = ScatterPlotConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
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