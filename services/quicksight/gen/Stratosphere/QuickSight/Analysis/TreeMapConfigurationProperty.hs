module Stratosphere.QuickSight.Analysis.TreeMapConfigurationProperty (
        module Exports, TreeMapConfigurationProperty(..),
        mkTreeMapConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColorScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LegendOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TreeMapFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TreeMapSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import Stratosphere.ResourceProperties
data TreeMapConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html>
    TreeMapConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-colorlabeloptions>
                                  colorLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-colorscale>
                                  colorScale :: (Prelude.Maybe ColorScaleProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-datalabels>
                                  dataLabels :: (Prelude.Maybe DataLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-fieldwells>
                                  fieldWells :: (Prelude.Maybe TreeMapFieldWellsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-grouplabeloptions>
                                  groupLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-interactions>
                                  interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-legend>
                                  legend :: (Prelude.Maybe LegendOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-sizelabeloptions>
                                  sizeLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-sortconfiguration>
                                  sortConfiguration :: (Prelude.Maybe TreeMapSortConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-treemapconfiguration.html#cfn-quicksight-analysis-treemapconfiguration-tooltip>
                                  tooltip :: (Prelude.Maybe TooltipOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTreeMapConfigurationProperty :: TreeMapConfigurationProperty
mkTreeMapConfigurationProperty
  = TreeMapConfigurationProperty
      {haddock_workaround_ = (), colorLabelOptions = Prelude.Nothing,
       colorScale = Prelude.Nothing, dataLabels = Prelude.Nothing,
       fieldWells = Prelude.Nothing, groupLabelOptions = Prelude.Nothing,
       interactions = Prelude.Nothing, legend = Prelude.Nothing,
       sizeLabelOptions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing}
instance ToResourceProperties TreeMapConfigurationProperty where
  toResourceProperties TreeMapConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TreeMapConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
                            (JSON..=) "ColorScale" Prelude.<$> colorScale,
                            (JSON..=) "DataLabels" Prelude.<$> dataLabels,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "GroupLabelOptions" Prelude.<$> groupLabelOptions,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "Legend" Prelude.<$> legend,
                            (JSON..=) "SizeLabelOptions" Prelude.<$> sizeLabelOptions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip])}
instance JSON.ToJSON TreeMapConfigurationProperty where
  toJSON TreeMapConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorLabelOptions" Prelude.<$> colorLabelOptions,
               (JSON..=) "ColorScale" Prelude.<$> colorScale,
               (JSON..=) "DataLabels" Prelude.<$> dataLabels,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "GroupLabelOptions" Prelude.<$> groupLabelOptions,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "Legend" Prelude.<$> legend,
               (JSON..=) "SizeLabelOptions" Prelude.<$> sizeLabelOptions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip]))
instance Property "ColorLabelOptions" TreeMapConfigurationProperty where
  type PropertyType "ColorLabelOptions" TreeMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {colorLabelOptions = Prelude.pure newValue, ..}
instance Property "ColorScale" TreeMapConfigurationProperty where
  type PropertyType "ColorScale" TreeMapConfigurationProperty = ColorScaleProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {colorScale = Prelude.pure newValue, ..}
instance Property "DataLabels" TreeMapConfigurationProperty where
  type PropertyType "DataLabels" TreeMapConfigurationProperty = DataLabelOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {dataLabels = Prelude.pure newValue, ..}
instance Property "FieldWells" TreeMapConfigurationProperty where
  type PropertyType "FieldWells" TreeMapConfigurationProperty = TreeMapFieldWellsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "GroupLabelOptions" TreeMapConfigurationProperty where
  type PropertyType "GroupLabelOptions" TreeMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {groupLabelOptions = Prelude.pure newValue, ..}
instance Property "Interactions" TreeMapConfigurationProperty where
  type PropertyType "Interactions" TreeMapConfigurationProperty = VisualInteractionOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "Legend" TreeMapConfigurationProperty where
  type PropertyType "Legend" TreeMapConfigurationProperty = LegendOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty {legend = Prelude.pure newValue, ..}
instance Property "SizeLabelOptions" TreeMapConfigurationProperty where
  type PropertyType "SizeLabelOptions" TreeMapConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {sizeLabelOptions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" TreeMapConfigurationProperty where
  type PropertyType "SortConfiguration" TreeMapConfigurationProperty = TreeMapSortConfigurationProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" TreeMapConfigurationProperty where
  type PropertyType "Tooltip" TreeMapConfigurationProperty = TooltipOptionsProperty
  set newValue TreeMapConfigurationProperty {..}
    = TreeMapConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}