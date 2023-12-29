module Stratosphere.QuickSight.Analysis.TableVisualProperty (
        module Exports, TableVisualProperty(..), mkTableVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.TableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableVisualProperty
  = TableVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                         chartConfiguration :: (Prelude.Maybe TableConfigurationProperty),
                         conditionalFormatting :: (Prelude.Maybe TableConditionalFormattingProperty),
                         subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                         title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                         visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableVisualProperty :: Value Prelude.Text -> TableVisualProperty
mkTableVisualProperty visualId
  = TableVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties TableVisualProperty where
  toResourceProperties TableVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.TableVisual",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VisualId" JSON..= visualId]
                           (Prelude.catMaybes
                              [(JSON..=) "Actions" Prelude.<$> actions,
                               (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                               (JSON..=) "ConditionalFormatting"
                                 Prelude.<$> conditionalFormatting,
                               (JSON..=) "Subtitle" Prelude.<$> subtitle,
                               (JSON..=) "Title" Prelude.<$> title]))}
instance JSON.ToJSON TableVisualProperty where
  toJSON TableVisualProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VisualId" JSON..= visualId]
              (Prelude.catMaybes
                 [(JSON..=) "Actions" Prelude.<$> actions,
                  (JSON..=) "ChartConfiguration" Prelude.<$> chartConfiguration,
                  (JSON..=) "ConditionalFormatting"
                    Prelude.<$> conditionalFormatting,
                  (JSON..=) "Subtitle" Prelude.<$> subtitle,
                  (JSON..=) "Title" Prelude.<$> title])))
instance Property "Actions" TableVisualProperty where
  type PropertyType "Actions" TableVisualProperty = [VisualCustomActionProperty]
  set newValue TableVisualProperty {..}
    = TableVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" TableVisualProperty where
  type PropertyType "ChartConfiguration" TableVisualProperty = TableConfigurationProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" TableVisualProperty where
  type PropertyType "ConditionalFormatting" TableVisualProperty = TableConditionalFormattingProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" TableVisualProperty where
  type PropertyType "Subtitle" TableVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" TableVisualProperty where
  type PropertyType "Title" TableVisualProperty = VisualTitleLabelOptionsProperty
  set newValue TableVisualProperty {..}
    = TableVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" TableVisualProperty where
  type PropertyType "VisualId" TableVisualProperty = Value Prelude.Text
  set newValue TableVisualProperty {..}
    = TableVisualProperty {visualId = newValue, ..}