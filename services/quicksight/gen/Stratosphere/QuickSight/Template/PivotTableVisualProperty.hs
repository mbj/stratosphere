module Stratosphere.QuickSight.Template.PivotTableVisualProperty (
        module Exports, PivotTableVisualProperty(..),
        mkPivotTableVisualProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableConditionalFormattingProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.PivotTableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualCustomActionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualSubtitleLabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.VisualTitleLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableVisualProperty
  = PivotTableVisualProperty {actions :: (Prelude.Maybe [VisualCustomActionProperty]),
                              chartConfiguration :: (Prelude.Maybe PivotTableConfigurationProperty),
                              conditionalFormatting :: (Prelude.Maybe PivotTableConditionalFormattingProperty),
                              subtitle :: (Prelude.Maybe VisualSubtitleLabelOptionsProperty),
                              title :: (Prelude.Maybe VisualTitleLabelOptionsProperty),
                              visualId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableVisualProperty ::
  Value Prelude.Text -> PivotTableVisualProperty
mkPivotTableVisualProperty visualId
  = PivotTableVisualProperty
      {visualId = visualId, actions = Prelude.Nothing,
       chartConfiguration = Prelude.Nothing,
       conditionalFormatting = Prelude.Nothing,
       subtitle = Prelude.Nothing, title = Prelude.Nothing}
instance ToResourceProperties PivotTableVisualProperty where
  toResourceProperties PivotTableVisualProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableVisual",
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
instance JSON.ToJSON PivotTableVisualProperty where
  toJSON PivotTableVisualProperty {..}
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
instance Property "Actions" PivotTableVisualProperty where
  type PropertyType "Actions" PivotTableVisualProperty = [VisualCustomActionProperty]
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {actions = Prelude.pure newValue, ..}
instance Property "ChartConfiguration" PivotTableVisualProperty where
  type PropertyType "ChartConfiguration" PivotTableVisualProperty = PivotTableConfigurationProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty
        {chartConfiguration = Prelude.pure newValue, ..}
instance Property "ConditionalFormatting" PivotTableVisualProperty where
  type PropertyType "ConditionalFormatting" PivotTableVisualProperty = PivotTableConditionalFormattingProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty
        {conditionalFormatting = Prelude.pure newValue, ..}
instance Property "Subtitle" PivotTableVisualProperty where
  type PropertyType "Subtitle" PivotTableVisualProperty = VisualSubtitleLabelOptionsProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {subtitle = Prelude.pure newValue, ..}
instance Property "Title" PivotTableVisualProperty where
  type PropertyType "Title" PivotTableVisualProperty = VisualTitleLabelOptionsProperty
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {title = Prelude.pure newValue, ..}
instance Property "VisualId" PivotTableVisualProperty where
  type PropertyType "VisualId" PivotTableVisualProperty = Value Prelude.Text
  set newValue PivotTableVisualProperty {..}
    = PivotTableVisualProperty {visualId = newValue, ..}