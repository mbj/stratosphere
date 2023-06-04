module Stratosphere.QuickSight.Template.FilledMapVisualProperty (
        module Exports, FilledMapVisualProperty(..),
        mkFilledMapVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilledMapConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.FilledMapConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilledMapVisualProperty
  = FilledMapVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                             chartConfiguration :: (Prelude.Maybe FilledMapConfigurationProperty),
                             columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                             conditionalFormatting :: (Prelude.Maybe FilledMapConditionalFormattingProperty),
                             subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                             title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                             visualId :: (Value Prelude.Text)}
mkFilledMapVisualProperty ::
  Value Prelude.Text -> FilledMapVisualProperty
mkFilledMapVisualProperty visualId
  = FilledMapVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties FilledMapVisualProperty where
  toResourceProperties FilledMapVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FilledMapVisual",
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
                               (JSON..=) "Title" Prelude.<$> title]))}
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
                  (JSON..=) "Title" Prelude.<$> title])))
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
instance Property "VisualId" FilledMapVisualProperty where
  type PropertyType "VisualId" FilledMapVisualProperty = Value Prelude.Text
  set newValue FilledMapVisualProperty {..}
    = FilledMapVisualProperty {visualId = newValue, ..}