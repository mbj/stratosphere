module Stratosphere.QuickSight.Analysis.ScatterPlotVisualProperty (
        module Exports, ScatterPlotVisualProperty(..),
        mkScatterPlotVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ScatterPlotConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScatterPlotVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html>
    ScatterPlotVisualProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-actions>
                               actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-chartconfiguration>
                               chartConfiguration :: (Prelude.Maybe ScatterPlotConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-columnhierarchies>
                               columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-subtitle>
                               subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-title>
                               title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-visualcontentalttext>
                               visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-scatterplotvisual.html#cfn-quicksight-analysis-scatterplotvisual-visualid>
                               visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScatterPlotVisualProperty ::
  Value Prelude.Text -> ScatterPlotVisualProperty
mkScatterPlotVisualProperty visualId
  = ScatterPlotVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties ScatterPlotVisualProperty where
  toResourceProperties ScatterPlotVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ScatterPlotVisual",
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
instance JSON.ToJSON ScatterPlotVisualProperty where
  toJSON ScatterPlotVisualProperty {..}
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
instance Property "Actions" ScatterPlotVisualProperty where
  type PropertyType "Actions" ScatterPlotVisualProperty = [VisualCustomActionProperty]
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" ScatterPlotVisualProperty where
  type PropertyType "ChartConfiguration" ScatterPlotVisualProperty = ScatterPlotConfigurationProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" ScatterPlotVisualProperty where
  type PropertyType "ColumnHierarchies" ScatterPlotVisualProperty = [ColumnHierarchyProperty]
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" ScatterPlotVisualProperty where
  type PropertyType "Subtitle" ScatterPlotVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" ScatterPlotVisualProperty where
  type PropertyType "Title" ScatterPlotVisualProperty = VisualTitleLabelOptionsProperty
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" ScatterPlotVisualProperty where
  type PropertyType "VisualContentAltText" ScatterPlotVisualProperty = Value Prelude.Text
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" ScatterPlotVisualProperty where
  type PropertyType "VisualId" ScatterPlotVisualProperty = Value Prelude.Text
  set newValue ScatterPlotVisualProperty {..}
    = ScatterPlotVisualProperty {visualId = newValue, ..}