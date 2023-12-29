module Stratosphere.QuickSight.Template.TableCellConditionalFormattingProperty (
        module Exports, TableCellConditionalFormattingProperty(..),
        mkTableCellConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TextConditionalFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TableCellConditionalFormattingProperty
  = TableCellConditionalFormattingProperty {fieldId :: (Value Prelude.Text),
                                            textFormat :: (Prelude.Maybe TextConditionalFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTableCellConditionalFormattingProperty ::
  Value Prelude.Text -> TableCellConditionalFormattingProperty
mkTableCellConditionalFormattingProperty fieldId
  = TableCellConditionalFormattingProperty
      {fieldId = fieldId, textFormat = Prelude.Nothing}
instance ToResourceProperties TableCellConditionalFormattingProperty where
  toResourceProperties TableCellConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.TableCellConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "TextFormat" Prelude.<$> textFormat]))}
instance JSON.ToJSON TableCellConditionalFormattingProperty where
  toJSON TableCellConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "TextFormat" Prelude.<$> textFormat])))
instance Property "FieldId" TableCellConditionalFormattingProperty where
  type PropertyType "FieldId" TableCellConditionalFormattingProperty = Value Prelude.Text
  set newValue TableCellConditionalFormattingProperty {..}
    = TableCellConditionalFormattingProperty {fieldId = newValue, ..}
instance Property "TextFormat" TableCellConditionalFormattingProperty where
  type PropertyType "TextFormat" TableCellConditionalFormattingProperty = TextConditionalFormatProperty
  set newValue TableCellConditionalFormattingProperty {..}
    = TableCellConditionalFormattingProperty
        {textFormat = Prelude.pure newValue, ..}