module Stratosphere.QuickSight.Analysis.FunnelChartVisualProperty (
        module Exports, FunnelChartVisualProperty(..),
        mkFunnelChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FunnelChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunnelChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html>
    FunnelChartVisualProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-actions>
                               actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-chartconfiguration>
                               chartConfiguration :: (Prelude.Maybe FunnelChartConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-columnhierarchies>
                               columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-subtitle>
                               subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-title>
                               title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-visualcontentalttext>
                               visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-funnelchartvisual.html#cfn-quicksight-analysis-funnelchartvisual-visualid>
                               visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFunnelChartVisualProperty ::
  Value Prelude.Text -> FunnelChartVisualProperty
mkFunnelChartVisualProperty visualId
  = FunnelChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties FunnelChartVisualProperty where
  toResourceProperties FunnelChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.FunnelChartVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON FunnelChartVisualProperty where
  toJSON FunnelChartVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" FunnelChartVisualProperty where
  type PropertyType "Actions" FunnelChartVisualProperty = [VisualCustomActionProperty]
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" FunnelChartVisualProperty where
  type PropertyType "ChartConfiguration" FunnelChartVisualProperty = FunnelChartConfigurationProperty
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" FunnelChartVisualProperty where
  type PropertyType "ColumnHierarchies" FunnelChartVisualProperty = [ColumnHierarchyProperty]
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" FunnelChartVisualProperty where
  type PropertyType "Subtitle" FunnelChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" FunnelChartVisualProperty where
  type PropertyType "Title" FunnelChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" FunnelChartVisualProperty where
  type PropertyType "VisualContentAltText" FunnelChartVisualProperty = Value Prelude.Text
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" FunnelChartVisualProperty where
  type PropertyType "VisualId" FunnelChartVisualProperty = Value Prelude.Text
  set newValue FunnelChartVisualProperty {..}
    = FunnelChartVisualProperty {visualId = newValue, ..}