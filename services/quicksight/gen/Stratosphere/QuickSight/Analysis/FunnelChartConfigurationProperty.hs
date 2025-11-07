module Stratosphere.QuickSight.Analysis.FunnelChartConfigurationProperty (
        module Exports, FunnelChartConfigurationProperty(..),
        mkFunnelChartConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ChartAxisLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartDataLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartFieldWellsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartSortConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TooltipOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualInteractionOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualPaletteProperty as Exports
import Stratosphere.ResourceProperties
data FunnelChartConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html>
    FunnelChartConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-categorylabeloptions>
                                      categoryLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-datalabeloptions>
                                      dataLabelOptions :: (Prelude.Maybe FunnelChartDataLabelOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-fieldwells>
                                      fieldWells :: (Prelude.Maybe FunnelChartFieldWellsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-interactions>
                                      interactions :: (Prelude.Maybe VisualInteractionOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-sortconfiguration>
                                      sortConfiguration :: (Prelude.Maybe FunnelChartSortConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-tooltip>
                                      tooltip :: (Prelude.Maybe TooltipOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-valuelabeloptions>
                                      valueLabelOptions :: (Prelude.Maybe ChartAxisLabelOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartconfiguration.html#cfn-quicksight-analysis-funnelchartconfiguration-visualpalette>
                                      visualPalette :: (Prelude.Maybe VisualPaletteProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartConfigurationProperty ::
  FunnelChartConfigurationProperty
mkFunnelChartConfigurationProperty
  = FunnelChartConfigurationProperty
      {haddock_workaround_ = (), categoryLabelOptions = Prelude.Nothing,
       dataLabelOptions = Prelude.Nothing, fieldWells = Prelude.Nothing,
       interactions = Prelude.Nothing,
       sortConfiguration = Prelude.Nothing, tooltip = Prelude.Nothing,
       valueLabelOptions = Prelude.Nothing,
       visualPalette = Prelude.Nothing}
instance ToResourceProperties FunnelChartConfigurationProperty where
  toResourceProperties FunnelChartConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
                            (JSON..=) "DataLabelOptions" Prelude.<$> dataLabelOptions,
                            (JSON..=) "FieldWells" Prelude.<$> fieldWells,
                            (JSON..=) "Interactions" Prelude.<$> interactions,
                            (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
                            (JSON..=) "Tooltip" Prelude.<$> tooltip,
                            (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
                            (JSON..=) "VisualPalette" Prelude.<$> visualPalette])}
instance JSON.ToJSON FunnelChartConfigurationProperty where
  toJSON FunnelChartConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CategoryLabelOptions" Prelude.<$> categoryLabelOptions,
               (JSON..=) "DataLabelOptions" Prelude.<$> dataLabelOptions,
               (JSON..=) "FieldWells" Prelude.<$> fieldWells,
               (JSON..=) "Interactions" Prelude.<$> interactions,
               (JSON..=) "SortConfiguration" Prelude.<$> sortConfiguration,
               (JSON..=) "Tooltip" Prelude.<$> tooltip,
               (JSON..=) "ValueLabelOptions" Prelude.<$> valueLabelOptions,
               (JSON..=) "VisualPalette" Prelude.<$> visualPalette]))
instance Property "CategoryLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "CategoryLabelOptions" FunnelChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {categoryLabelOptions = Prelude.pure newValue, ..}
instance Property "DataLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "DataLabelOptions" FunnelChartConfigurationProperty = FunnelChartDataLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {dataLabelOptions = Prelude.pure newValue, ..}
instance Property "FieldWells" FunnelChartConfigurationProperty where
  type PropertyType "FieldWells" FunnelChartConfigurationProperty = FunnelChartFieldWellsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {fieldWells = Prelude.pure newValue, ..}
instance Property "Interactions" FunnelChartConfigurationProperty where
  type PropertyType "Interactions" FunnelChartConfigurationProperty = VisualInteractionOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {interactions = Prelude.pure newValue, ..}
instance Property "SortConfiguration" FunnelChartConfigurationProperty where
  type PropertyType "SortConfiguration" FunnelChartConfigurationProperty = FunnelChartSortConfigurationProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {sortConfiguration = Prelude.pure newValue, ..}
instance Property "Tooltip" FunnelChartConfigurationProperty where
  type PropertyType "Tooltip" FunnelChartConfigurationProperty = TooltipOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {tooltip = Prelude.pure newValue, ..}
instance Property "ValueLabelOptions" FunnelChartConfigurationProperty where
  type PropertyType "ValueLabelOptions" FunnelChartConfigurationProperty = ChartAxisLabelOptionsProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {valueLabelOptions = Prelude.pure newValue, ..}
instance Property "VisualPalette" FunnelChartConfigurationProperty where
  type PropertyType "VisualPalette" FunnelChartConfigurationProperty = VisualPaletteProperty
  set newValue FunnelChartConfigurationProperty {..}
    = FunnelChartConfigurationProperty
        {visualPalette = Prelude.pure newValue, ..}