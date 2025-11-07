module Stratosphere.QuickSight.Analysis.BoxPlotVisualProperty (
        module Exports, BoxPlotVisualProperty(..), mkBoxPlotVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.BoxPlotChartConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BoxPlotVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html>
    BoxPlotVisualProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-actions>
                           actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-chartconfiguration>
                           chartConfiguration :: (Prelude.Maybe BoxPlotChartConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-columnhierarchies>
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-subtitle>
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-title>
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-visualcontentalttext>
                           visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-boxplotvisual.html#cfn-quicksight-analysis-boxplotvisual-visualid>
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBoxPlotVisualProperty ::
  Value Prelude.Text -> BoxPlotVisualProperty
mkBoxPlotVisualProperty visualId
  = BoxPlotVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties BoxPlotVisualProperty where
  toResourceProperties BoxPlotVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.BoxPlotVisual",
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
instance JSON.ToJSON BoxPlotVisualProperty where
  toJSON BoxPlotVisualProperty {..}
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
instance Property "Actions" BoxPlotVisualProperty where
  type PropertyType "Actions" BoxPlotVisualProperty = [VisualCustomActionProperty]
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" BoxPlotVisualProperty where
  type PropertyType "ChartConfiguration" BoxPlotVisualProperty = BoxPlotChartConfigurationProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" BoxPlotVisualProperty where
  type PropertyType "ColumnHierarchies" BoxPlotVisualProperty = [ColumnHierarchyProperty]
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" BoxPlotVisualProperty where
  type PropertyType "Subtitle" BoxPlotVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" BoxPlotVisualProperty where
  type PropertyType "Title" BoxPlotVisualProperty = VisualTitleLabelOptionsProperty
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" BoxPlotVisualProperty where
  type PropertyType "VisualContentAltText" BoxPlotVisualProperty = Value Prelude.Text
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" BoxPlotVisualProperty where
  type PropertyType "VisualId" BoxPlotVisualProperty = Value Prelude.Text
  set newValue BoxPlotVisualProperty {..}
    = BoxPlotVisualProperty {visualId = newValue, ..}