module Stratosphere.QuickSight.Dashboard.WaterfallChartConfigurationProperty (
        module Exports, WaterfallChartConfigurationProperty(..),
        mkWaterfallChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.AxisDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualPaletteProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartColorConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.WaterfallChartSortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data WaterfallChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html>
    WaterfallChartConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-categoryaxisdisplayoptions>
                                         categoryAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-categoryaxislabeloptions>
                                         categoryAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-colorconfiguration>
                                         colorConfiguration :: (Prelude.Maybe WaterfallChartColorConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-datalabels>
                                         dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-fieldwells>
                                         fieldWells :: (Prelude.Maybe WaterfallChartFieldWellsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-interactions>
                                         interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-legend>
                                         legend :: (Prelude.Maybe LegendOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-primaryyaxisdisplayoptions>
                                         primaryYAxisDisplayOptions :: (Prelude.Maybe AxisDisplayOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-primaryyaxislabeloptions>
                                         primaryYAxisLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-sortconfiguration>
                                         sortConfiguration :: (Prelude.Maybe WaterfallChartSortConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-visualpalette>
                                         visualPalette :: (Prelude.Maybe VisualPaletteProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-waterfallchartconfiguration.html#cfn-quicksight-dashboard-waterfallchartconfiguration-waterfallchartoptions>
                                         waterfallChartOptions :: (Prelude.Maybe WaterfallChartOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWaterfallChartConfigurationProperty ::
  WaterfallChartConfigurationProperty
mkWaterfallChartConfigurationProperty
  = WaterfallChartConfigurationProperty
      {haddock_workaround_ = (),
       categoryAxisDisplayOptions = Prelude.Nothing,
       categoryAxisLabelOptions = Prelude.Nothing,
       colorConfiguration = Prelude.Nothing, dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, interactions = Prelude.Nothing,
       legend = Prelude.Nothing,
       primaryYAxisDisplayOptions = Prelude.Nothing,
       primaryYAxisLabelOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing,
       visualPalette = Prelude.Nothing,
       waterfallChartOptions = Prelude.Nothing}
instance ToResourceProperties WaterfallChartConfigurationProperty where
  toResourceProperties WaterfallChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.WaterfallChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryAxisDisplayOptions"
                              Prelude.<$> categoryAxisDisplayOptions,
                            (JSON..=) "CategoryAxisLabelOptions"
                              Prelude.<$> categoryAxisLabelOptions,
                            (JSON..=) "ColorConfiguration" Prelude.<$> colorConfiguration,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "PrimaryYAxisDisplayOptions"
                              Prelude.<$> primaryYAxisDisplayOptions,
                            (JSON..=) "PrimaryYAxisLabelOptions"
                              Prelude.<$> primaryYAxisLabelOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
                            (JSON..=) "WaterfallChartOptions"
                              Prelude.<$> waterfallChartOptions])}
instance JSON.ToJSON WaterfallChartConfigurationProperty where
  toJSON WaterfallChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryAxisDisplayOptions"
                 Prelude.<$> categoryAxisDisplayOptions,
               (JSON..=) "CategoryAxisLabelOptions"
                 Prelude.<$> categoryAxisLabelOptions,
               (JSON..=) "ColorConfiguration" Prelude.<$> colorConfiguration,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "PrimaryYAxisDisplayOptions"
                 Prelude.<$> primaryYAxisDisplayOptions,
               (JSON..=) "PrimaryYAxisLabelOptions"
                 Prelude.<$> primaryYAxisLabelOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette,
               (JSON..=) "WaterfallChartOptions"
                 Prelude.<$> waterfallChartOptions]))
instance Property "CategoryAxisDisplayOptions" WaterfallChartConfigurationProperty where
  type PropertyType "CategoryAxisDisplayOptions" WaterfallChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {categoryAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "CategoryAxisLabelOptions" WaterfallChartConfigurationProperty where
  type PropertyType "CategoryAxisLabelOptions" WaterfallChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {categoryAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "ColorConfiguration" WaterfallChartConfigurationProperty where
  type PropertyType "ColorConfiguration" WaterfallChartConfigurationProperty = WaterfallChartColorConfigurationProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {colorConfiguration = Prelude.pure newValue, ..}
instance Property "DataLabels" WaterfallChartConfigurationProperty where
  type PropertyType "DataLabels" WaterfallChartConfigurationProperty = DataLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" WaterfallChartConfigurationProperty where
  type PropertyType "FieldWells" WaterfallChartConfigurationProperty = WaterfallChartFieldWellsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" WaterfallChartConfigurationProperty where
  type PropertyType "Interactions" WaterfallChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" WaterfallChartConfigurationProperty where
  type PropertyType "Legend" WaterfallChartConfigurationProperty = LegendOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {legend = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisDisplayOptions" WaterfallChartConfigurationProperty where
  type PropertyType "PrimaryYAxisDisplayOptions" WaterfallChartConfigurationProperty = AxisDisplayOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {primaryYAxisDisplayOptions = Prelude.pure newValue, ..}
instance Property "PrimaryYAxisLabelOptions" WaterfallChartConfigurationProperty where
  type PropertyType "PrimaryYAxisLabelOptions" WaterfallChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {primaryYAxisLabelOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" WaterfallChartConfigurationProperty where
  type PropertyType "SortConfiguration" WaterfallChartConfigurationProperty = WaterfallChartSortConfigurationProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "VisualPalette" WaterfallChartConfigurationProperty where
  type PropertyType "VisualPalette" WaterfallChartConfigurationProperty = VisualPaletteProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}
instance Property "WaterfallChartOptions" WaterfallChartConfigurationProperty where
  type PropertyType "WaterfallChartOptions" WaterfallChartConfigurationProperty = WaterfallChartOptionsProperty
  set newValue WaterfallChartConfigurationProperty {..}
    = WaterfallChartConfigurationProperty
        {waterfallChartOptions = Prelude.pure newValue, ..}