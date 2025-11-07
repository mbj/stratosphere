module Stratosphere.QuickSight.Dashboard.FilledMapVisualProperty (
        module Exports, FilledMapVisualProperty(..),
        mkFilledMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilledMapVisualProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html>
    FilledMapVisualProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-actions>
                             actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-chartconfiguration>
                             chartConfiguration :: (Prelude.Maybe FilledMapConfigurationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-columnhierarchies>
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-conditionalformatting>
                             conditionalFormatting :: (Prelude.Maybe FilledMapConditionalFormattingProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-subtitle>
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-title>
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-visualcontentalttext>
                             visualContentAltText :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapvisual.html#cfn-quicksight-dashboard-filledmapvisual-visualid>
                             visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapVisualProperty ::
  Value Prelude.Text -> FilledMapVisualProperty
mkFilledMapVisualProperty visualId
  = FilledMapVisualProperty
      {haddock_workaround_ = (), visualId = visualId,
       actions = Prelude.Nothing, chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing,
       visualContentAltText = Prelude.Nothing}
instance ToResourceProperties FilledMapVisualProperty where
  toResourceProperties FilledMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilledMapVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                               (JSON..=) "ConditionalFormatting"
                                 Prelude.<$> conditionalFormatting,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title,
                               (JSON..=) "VisualContentAltText"
                                 Prelude.<$> visualContentAltText]))}
instance JSON.ToJSON FilledMapVisualProperty where
  toJSON FilledMapVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ColumnHierarchies" Prelude.<$> columnHierarchies,
                  (JSON..=) "ConditionalFormatting"
                    Prelude.<$> conditionalFormatting,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title,
                  (JSON..=) "VisualContentAltText"
                    Prelude.<$> visualContentAltText])))
instance Property "Actions" FilledMapVisualProperty where
  type PropertyType "Actions" FilledMapVisualProperty = [VisualCustomActionProperty]
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" FilledMapVisualProperty where
  type PropertyType "ChartConfiguration" FilledMapVisualProperty = FilledMapConfigurationProperty
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" FilledMapVisualProperty where
  type PropertyType "ColumnHierarchies" FilledMapVisualProperty = [ColumnHierarchyProperty]
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty
        {columnHierarchies = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" FilledMapVisualProperty where
  type PropertyType "ConditionalFormatting" FilledMapVisualProperty = FilledMapConditionalFormattingProperty
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" FilledMapVisualProperty where
  type PropertyType "Subtitle" FilledMapVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" FilledMapVisualProperty where
  type PropertyType "Title" FilledMapVisualProperty = VisualTitleLabelOptionsProperty
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualContentAltText" FilledMapVisualProperty where
  type PropertyType "VisualContentAltText" FilledMapVisualProperty = Value Prelude.Text
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty
        {visualContentAltText = Prelude.pure newValue, ..}
instance Property "VisualId" FilledMapVisualProperty where
  type PropertyType "VisualId" FilledMapVisualProperty = Value Prelude.Text
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty {visualId = newValue, ..}