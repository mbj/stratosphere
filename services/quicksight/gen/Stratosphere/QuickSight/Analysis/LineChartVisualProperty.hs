module Stratosphere.QuickSight.Analysis.LineChartVisualProperty (
        module Exports, LineChartVisualProperty(..),
        mkLineChartVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LineChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LineChartVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html>
    LineChartVisualProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-actions>
                             actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-chartconfiguration>
                             chartConfiguration :: (Prelude.Maybe LineChartConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-columnhierarchies>
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-subtitle>
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-title>
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-visualcontentalttext>
                             visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-linechartvisual.html#cfn-quicksight-analysis-linechartvisual-visualid>
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLineChartVisualProperty ::
  Value Prelude.Text -> LineChartVisualProperty
mkLineChartVisualProperty visualId
  = LineChartVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties LineChartVisualProperty where
  toResourceProperties LineChartVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.LineChartVisual",
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
instance JSON.ToJSON LineChartVisualProperty where
  toJSON LineChartVisualProperty {..}
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
instance Property "Actions" LineChartVisualProperty where
  type PropertyType "Actions" LineChartVisualProperty = [VisualCustomActionProperty]
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" LineChartVisualProperty where
  type PropertyType "ChartConfiguration" LineChartVisualProperty = LineChartConfigurationProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" LineChartVisualProperty where
  type PropertyType "ColumnHierarchies" LineChartVisualProperty = [ColumnHierarchyProperty]
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" LineChartVisualProperty where
  type PropertyType "Subtitle" LineChartVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" LineChartVisualProperty where
  type PropertyType "Title" LineChartVisualProperty = VisualTitleLabelOptionsProperty
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" LineChartVisualProperty where
  type PropertyType "VisualContentAltText" LineChartVisualProperty = Value Prelude.Text
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" LineChartVisualProperty where
  type PropertyType "VisualId" LineChartVisualProperty = Value Prelude.Text
  set newValue LineChartVisualProperty {..}
    = LineChartVisualProperty {visualId = newValue, ..}