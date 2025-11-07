module Stratosphere.QuickSight.Dashboard.HeatMapConfigurationProperty (
        module Exports, HeatMapConfigurationProperty(..),
        mkHeatMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColorScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.HeatMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.HeatMapSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data HeatMapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html>
    HeatMapConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-colorscale>
                                  colorScale :: (Prelude.Maybe ColorScaleProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-columnlabeloptions>
                                  columnLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-datalabels>
                                  dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-fieldwells>
                                  fieldWells :: (Prelude.Maybe HeatMapFieldWellsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-interactions>
                                  interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-legend>
                                  legend :: (Prelude.Maybe LegendOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-rowlabeloptions>
                                  rowLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-sortconfiguration>
                                  sortConfiguration :: (Prelude.Maybe HeatMapSortConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-heatmapconfiguration.html#cfn-quicksight-dashboard-heatmapconfiguration-tooltip>
                                  tooltip :: (Prelude.Maybe TooltipOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapConfigurationProperty :: HeatMapConfigurationProperty
mkHeatMapConfigurationProperty
  = HeatMapConfigurationProperty
      {haddock_workaround_ = (), colorScale = Prelude.Nothing,
       columnLabelOptions = Prelude.Nothing, dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing, rowLabelOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing}
instance ToResourceProperties HeatMapConfigurationProperty where
  toResourceProperties HeatMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.HeatMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorScale" Prelude.<$> colorScale,
                            (JSON..=) "ColumnLabelOptions" Prelude.<$> columnLabelOptions,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "RowLabelOptions" Prelude.<$> rowLabelOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip])}
instance JSON.ToJSON HeatMapConfigurationProperty where
  toJSON HeatMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorScale" Prelude.<$> colorScale,
               (JSON..=) "ColumnLabelOptions" Prelude.<$> columnLabelOptions,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "RowLabelOptions" Prelude.<$> rowLabelOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip]))
instance Property "ColorScale" HeatMapConfigurationProperty where
  type PropertyType "ColorScale" HeatMapConfigurationProperty = ColorScaleProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {colorScale = Prelude.pure newValue, ..}
instance Property "ColumnLabelOptions" HeatMapConfigurationProperty where
  type PropertyType "ColumnLabelOptions" HeatMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {columnLabelOptions = Prelude.pure newValue, ..}
instance Property "DataLabels" HeatMapConfigurationProperty where
  type PropertyType "DataLabels" HeatMapConfigurationProperty = DataLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" HeatMapConfigurationProperty where
  type PropertyType "FieldWells" HeatMapConfigurationProperty = HeatMapFieldWellsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" HeatMapConfigurationProperty where
  type PropertyType "Interactions" HeatMapConfigurationProperty = VisualInteractionOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" HeatMapConfigurationProperty where
  type PropertyType "Legend" HeatMapConfigurationProperty = LegendOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty {legend = Prelude.pure newValue, ..}
instance Property "RowLabelOptions" HeatMapConfigurationProperty where
  type PropertyType "RowLabelOptions" HeatMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {rowLabelOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" HeatMapConfigurationProperty where
  type PropertyType "SortConfiguration" HeatMapConfigurationProperty = HeatMapSortConfigurationProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" HeatMapConfigurationProperty where
  type PropertyType "Tooltip" HeatMapConfigurationProperty = TooltipOptionsProperty
  set newValue HeatMapConfigurationProperty {..}
    = HeatMapConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}