module Stratosphere.QuickSight.Template.HeatMapVisualProperty (
        module Exports, HeatMapVisualProperty(..), mkHeatMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.HeatMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HeatMapVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html>
    HeatMapVisualProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-actions>
                           actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-chartconfiguration>
                           chartConfiguration :: (Prelude.Maybe HeatMapConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-columnhierarchies>
                           columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-subtitle>
                           subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-title>
                           title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-visualcontentalttext>
                           visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-heatmapvisual.html#cfn-quicksight-template-heatmapvisual-visualid>
                           visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHeatMapVisualProperty ::
  Value Prelude.Text -> HeatMapVisualProperty
mkHeatMapVisualProperty visualId
  = HeatMapVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing, subtitle = Prelude.Nothing,
       title = Prelude.Nothing, visualContentAltText = Prelude.Nothing}
instance ToResourceProperties HeatMapVisualProperty where
  toResourceProperties HeatMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.HeatMapVisual",
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
instance JSON.ToJSON HeatMapVisualProperty where
  toJSON HeatMapVisualProperty {..}
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
instance Property "Actions" HeatMapVisualProperty where
  type PropertyType "Actions" HeatMapVisualProperty = [VisualCustomActionProperty]
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" HeatMapVisualProperty where
  type PropertyType "ChartConfiguration" HeatMapVisualProperty = HeatMapConfigurationProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" HeatMapVisualProperty where
  type PropertyType "ColumnHierarchies" HeatMapVisualProperty = [ColumnHierarchyProperty]
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "Subtitle" HeatMapVisualProperty where
  type PropertyType "Subtitle" HeatMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" HeatMapVisualProperty where
  type PropertyType "Title" HeatMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" HeatMapVisualProperty where
  type PropertyType "VisualContentAltText" HeatMapVisualProperty = Value Prelude.Text
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" HeatMapVisualProperty where
  type PropertyType "VisualId" HeatMapVisualProperty = Value Prelude.Text
  set newValue HeatMapVisualProperty {..}
    = HeatMapVisualProperty {visualId = newValue, ..}