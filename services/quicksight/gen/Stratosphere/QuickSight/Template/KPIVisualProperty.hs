module Stratosphere.QuickSight.Template.KPIVisualProperty (
        module Exports, KPIVisualProperty(..), mkKPIVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnHierarchyProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.KPIConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KPIVisualProperty
  = KPIVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                       chartConfiguration :: (Prelude.Maybe KPIConfigurationProperty),
                       columnHierarchies :: (Prelude.Maybe [ColumnHierarchyProperty]),
                       conditionalFormatting :: (Prelude.Maybe KPIConditionalFormattingProperty),
                       subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                       title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                       visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIVisualProperty :: Value Prelude.Text -> KPIVisualProperty
mkKPIVisualProperty visualId
  = KPIVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       columnHierarchies = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties KPIVisualProperty where
  toResourceProperties KPIVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.KPIVisual",
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
instance JSON.ToJSON KPIVisualProperty where
  toJSON KPIVisualProperty {..}
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
instance Property "Actions" KPIVisualProperty where
  type PropertyType "Actions" KPIVisualProperty = [VisualCustomActionProperty]
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" KPIVisualProperty where
  type PropertyType "ChartConfiguration" KPIVisualProperty = KPIConfigurationProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ColumnHierarchies" KPIVisualProperty where
  type PropertyType "ColumnHierarchies" KPIVisualProperty = [ColumnHierarchyProperty]
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {columnHierarchies = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" KPIVisualProperty where
  type PropertyType "ConditionalFormatting" KPIVisualProperty = KPIConditionalFormattingProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" KPIVisualProperty where
  type PropertyType "Subtitle" KPIVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" KPIVisualProperty where
  type PropertyType "Title" KPIVisualProperty = VisualTitleLabelOptionsProperty
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" KPIVisualProperty where
  type PropertyType "VisualId" KPIVisualProperty = Value Prelude.Text
  set newValue KPIVisualProperty {..}
    = KPIVisualProperty {visualId = newValue, ..}