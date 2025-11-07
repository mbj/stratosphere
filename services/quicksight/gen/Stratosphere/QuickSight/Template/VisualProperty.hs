module Stratosphere.QuickSight.Template.VisualProperty (
        module Exports, VisualProperty(..), mkVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BarChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.BoxPlotVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ComboChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.CustomContentVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.EmptyVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilledMapVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FunnelChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GaugeChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.GeospatialMapVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HeatMapVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HistogramVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.InsightVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.LineChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PieChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PluginVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.RadarChartVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.SankeyDiagramVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ScatterPlotVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TableVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TreeMapVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WaterfallVisualProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.WordCloudVisualProperty as Exports
import Stratosphere.ResourceProperties
data VisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html>
    VisualProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-barchartvisual>
                    barChartVisual :: (Prelude.Maybe BarChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-boxplotvisual>
                    boxPlotVisual :: (Prelude.Maybe BoxPlotVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-combochartvisual>
                    comboChartVisual :: (Prelude.Maybe ComboChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-customcontentvisual>
                    customContentVisual :: (Prelude.Maybe CustomContentVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-emptyvisual>
                    emptyVisual :: (Prelude.Maybe EmptyVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-filledmapvisual>
                    filledMapVisual :: (Prelude.Maybe FilledMapVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-funnelchartvisual>
                    funnelChartVisual :: (Prelude.Maybe FunnelChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-gaugechartvisual>
                    gaugeChartVisual :: (Prelude.Maybe GaugeChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-geospatialmapvisual>
                    geospatialMapVisual :: (Prelude.Maybe GeospatialMapVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-heatmapvisual>
                    heatMapVisual :: (Prelude.Maybe HeatMapVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-histogramvisual>
                    histogramVisual :: (Prelude.Maybe HistogramVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-insightvisual>
                    insightVisual :: (Prelude.Maybe InsightVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-kpivisual>
                    kPIVisual :: (Prelude.Maybe KPIVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-linechartvisual>
                    lineChartVisual :: (Prelude.Maybe LineChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-piechartvisual>
                    pieChartVisual :: (Prelude.Maybe PieChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-pivottablevisual>
                    pivotTableVisual :: (Prelude.Maybe PivotTableVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-pluginvisual>
                    pluginVisual :: (Prelude.Maybe PluginVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-radarchartvisual>
                    radarChartVisual :: (Prelude.Maybe RadarChartVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-sankeydiagramvisual>
                    sankeyDiagramVisual :: (Prelude.Maybe SankeyDiagramVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-scatterplotvisual>
                    scatterPlotVisual :: (Prelude.Maybe ScatterPlotVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-tablevisual>
                    tableVisual :: (Prelude.Maybe TableVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-treemapvisual>
                    treeMapVisual :: (Prelude.Maybe TreeMapVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-waterfallvisual>
                    waterfallVisual :: (Prelude.Maybe WaterfallVisualProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-visual.html#cfn-quicksight-template-visual-wordcloudvisual>
                    wordCloudVisual :: (Prelude.Maybe WordCloudVisualProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualProperty :: VisualProperty
mkVisualProperty
  = VisualProperty
      {haddock_workaround_ = (), barChartVisual = Prelude.Nothing,
       boxPlotVisual = Prelude.Nothing,
       comboChartVisual = Prelude.Nothing,
       customContentVisual = Prelude.Nothing,
       emptyVisual = Prelude.Nothing, filledMapVisual = Prelude.Nothing,
       funnelChartVisual = Prelude.Nothing,
       gaugeChartVisual = Prelude.Nothing,
       geospatialMapVisual = Prelude.Nothing,
       heatMapVisual = Prelude.Nothing, histogramVisual = Prelude.Nothing,
       insightVisual = Prelude.Nothing, kPIVisual = Prelude.Nothing,
       lineChartVisual = Prelude.Nothing,
       pieChartVisual = Prelude.Nothing,
       pivotTableVisual = Prelude.Nothing, pluginVisual = Prelude.Nothing,
       radarChartVisual = Prelude.Nothing,
       sankeyDiagramVisual = Prelude.Nothing,
       scatterPlotVisual = Prelude.Nothing, tableVisual = Prelude.Nothing,
       treeMapVisual = Prelude.Nothing, waterfallVisual = Prelude.Nothing,
       wordCloudVisual = Prelude.Nothing}
instance ToResourceProperties VisualProperty where
  toResourceProperties VisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.Visual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BarChartVisual" Prelude.<$> barChartVisual,
                            (JSON..=) "BoxPlotVisual" Prelude.<$> boxPlotVisual,
                            (JSON..=) "ComboChartVisual" Prelude.<$> comboChartVisual,
                            (JSON..=) "CustomContentVisual" Prelude.<$> customContentVisual,
                            (JSON..=) "EmptyVisual" Prelude.<$> emptyVisual,
                            (JSON..=) "FilledMapVisual" Prelude.<$> filledMapVisual,
                            (JSON..=) "FunnelChartVisual" Prelude.<$> funnelChartVisual,
                            (JSON..=) "GaugeChartVisual" Prelude.<$> gaugeChartVisual,
                            (JSON..=) "GeospatialMapVisual" Prelude.<$> geospatialMapVisual,
                            (JSON..=) "HeatMapVisual" Prelude.<$> heatMapVisual,
                            (JSON..=) "HistogramVisual" Prelude.<$> histogramVisual,
                            (JSON..=) "InsightVisual" Prelude.<$> insightVisual,
                            (JSON..=) "KPIVisual" Prelude.<$> kPIVisual,
                            (JSON..=) "LineChartVisual" Prelude.<$> lineChartVisual,
                            (JSON..=) "PieChartVisual" Prelude.<$> pieChartVisual,
                            (JSON..=) "PivotTableVisual" Prelude.<$> pivotTableVisual,
                            (JSON..=) "PluginVisual" Prelude.<$> pluginVisual,
                            (JSON..=) "RadarChartVisual" Prelude.<$> radarChartVisual,
                            (JSON..=) "SankeyDiagramVisual" Prelude.<$> sankeyDiagramVisual,
                            (JSON..=) "ScatterPlotVisual" Prelude.<$> scatterPlotVisual,
                            (JSON..=) "TableVisual" Prelude.<$> tableVisual,
                            (JSON..=) "TreeMapVisual" Prelude.<$> treeMapVisual,
                            (JSON..=) "WaterfallVisual" Prelude.<$> waterfallVisual,
                            (JSON..=) "WordCloudVisual" Prelude.<$> wordCloudVisual])}
instance JSON.ToJSON VisualProperty where
  toJSON VisualProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BarChartVisual" Prelude.<$> barChartVisual,
               (JSON..=) "BoxPlotVisual" Prelude.<$> boxPlotVisual,
               (JSON..=) "ComboChartVisual" Prelude.<$> comboChartVisual,
               (JSON..=) "CustomContentVisual" Prelude.<$> customContentVisual,
               (JSON..=) "EmptyVisual" Prelude.<$> emptyVisual,
               (JSON..=) "FilledMapVisual" Prelude.<$> filledMapVisual,
               (JSON..=) "FunnelChartVisual" Prelude.<$> funnelChartVisual,
               (JSON..=) "GaugeChartVisual" Prelude.<$> gaugeChartVisual,
               (JSON..=) "GeospatialMapVisual" Prelude.<$> geospatialMapVisual,
               (JSON..=) "HeatMapVisual" Prelude.<$> heatMapVisual,
               (JSON..=) "HistogramVisual" Prelude.<$> histogramVisual,
               (JSON..=) "InsightVisual" Prelude.<$> insightVisual,
               (JSON..=) "KPIVisual" Prelude.<$> kPIVisual,
               (JSON..=) "LineChartVisual" Prelude.<$> lineChartVisual,
               (JSON..=) "PieChartVisual" Prelude.<$> pieChartVisual,
               (JSON..=) "PivotTableVisual" Prelude.<$> pivotTableVisual,
               (JSON..=) "PluginVisual" Prelude.<$> pluginVisual,
               (JSON..=) "RadarChartVisual" Prelude.<$> radarChartVisual,
               (JSON..=) "SankeyDiagramVisual" Prelude.<$> sankeyDiagramVisual,
               (JSON..=) "ScatterPlotVisual" Prelude.<$> scatterPlotVisual,
               (JSON..=) "TableVisual" Prelude.<$> tableVisual,
               (JSON..=) "TreeMapVisual" Prelude.<$> treeMapVisual,
               (JSON..=) "WaterfallVisual" Prelude.<$> waterfallVisual,
               (JSON..=) "WordCloudVisual" Prelude.<$> wordCloudVisual]))
instance Property "BarChartVisual" VisualProperty where
  type PropertyType "BarChartVisual" VisualProperty = BarChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {barChartVisual = Prelude.pure newValue, ..}
instance Property "BoxPlotVisual" VisualProperty where
  type PropertyType "BoxPlotVisual" VisualProperty = BoxPlotVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {boxPlotVisual = Prelude.pure newValue, ..}
instance Property "ComboChartVisual" VisualProperty where
  type PropertyType "ComboChartVisual" VisualProperty = ComboChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {comboChartVisual = Prelude.pure newValue, ..}
instance Property "CustomContentVisual" VisualProperty where
  type PropertyType "CustomContentVisual" VisualProperty = CustomContentVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {customContentVisual = Prelude.pure newValue, ..}
instance Property "EmptyVisual" VisualProperty where
  type PropertyType "EmptyVisual" VisualProperty = EmptyVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {emptyVisual = Prelude.pure newValue, ..}
instance Property "FilledMapVisual" VisualProperty where
  type PropertyType "FilledMapVisual" VisualProperty = FilledMapVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {filledMapVisual = Prelude.pure newValue, ..}
instance Property "FunnelChartVisual" VisualProperty where
  type PropertyType "FunnelChartVisual" VisualProperty = FunnelChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {funnelChartVisual = Prelude.pure newValue, ..}
instance Property "GaugeChartVisual" VisualProperty where
  type PropertyType "GaugeChartVisual" VisualProperty = GaugeChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {gaugeChartVisual = Prelude.pure newValue, ..}
instance Property "GeospatialMapVisual" VisualProperty where
  type PropertyType "GeospatialMapVisual" VisualProperty = GeospatialMapVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {geospatialMapVisual = Prelude.pure newValue, ..}
instance Property "HeatMapVisual" VisualProperty where
  type PropertyType "HeatMapVisual" VisualProperty = HeatMapVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {heatMapVisual = Prelude.pure newValue, ..}
instance Property "HistogramVisual" VisualProperty where
  type PropertyType "HistogramVisual" VisualProperty = HistogramVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {histogramVisual = Prelude.pure newValue, ..}
instance Property "InsightVisual" VisualProperty where
  type PropertyType "InsightVisual" VisualProperty = InsightVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {insightVisual = Prelude.pure newValue, ..}
instance Property "KPIVisual" VisualProperty where
  type PropertyType "KPIVisual" VisualProperty = KPIVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {kPIVisual = Prelude.pure newValue, ..}
instance Property "LineChartVisual" VisualProperty where
  type PropertyType "LineChartVisual" VisualProperty = LineChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {lineChartVisual = Prelude.pure newValue, ..}
instance Property "PieChartVisual" VisualProperty where
  type PropertyType "PieChartVisual" VisualProperty = PieChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {pieChartVisual = Prelude.pure newValue, ..}
instance Property "PivotTableVisual" VisualProperty where
  type PropertyType "PivotTableVisual" VisualProperty = PivotTableVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {pivotTableVisual = Prelude.pure newValue, ..}
instance Property "PluginVisual" VisualProperty where
  type PropertyType "PluginVisual" VisualProperty = PluginVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {pluginVisual = Prelude.pure newValue, ..}
instance Property "RadarChartVisual" VisualProperty where
  type PropertyType "RadarChartVisual" VisualProperty = RadarChartVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {radarChartVisual = Prelude.pure newValue, ..}
instance Property "SankeyDiagramVisual" VisualProperty where
  type PropertyType "SankeyDiagramVisual" VisualProperty = SankeyDiagramVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {sankeyDiagramVisual = Prelude.pure newValue, ..}
instance Property "ScatterPlotVisual" VisualProperty where
  type PropertyType "ScatterPlotVisual" VisualProperty = ScatterPlotVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {scatterPlotVisual = Prelude.pure newValue, ..}
instance Property "TableVisual" VisualProperty where
  type PropertyType "TableVisual" VisualProperty = TableVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {tableVisual = Prelude.pure newValue, ..}
instance Property "TreeMapVisual" VisualProperty where
  type PropertyType "TreeMapVisual" VisualProperty = TreeMapVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {treeMapVisual = Prelude.pure newValue, ..}
instance Property "WaterfallVisual" VisualProperty where
  type PropertyType "WaterfallVisual" VisualProperty = WaterfallVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {waterfallVisual = Prelude.pure newValue, ..}
instance Property "WordCloudVisual" VisualProperty where
  type PropertyType "WordCloudVisual" VisualProperty = WordCloudVisualProperty
  set newValue VisualProperty {..}
    = VisualProperty {wordCloudVisual = Prelude.pure newValue, ..}