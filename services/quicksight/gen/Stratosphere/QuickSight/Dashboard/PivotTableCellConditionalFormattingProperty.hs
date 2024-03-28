module Stratosphere.QuickSight.Dashboard.PivotTableCellConditionalFormattingProperty (
        module Exports, PivotTableCellConditionalFormattingProperty(..),
        mkPivotTableCellConditionalFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.PivotTableConditionalFormattingScopeProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.TextConditionalFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableCellConditionalFormattingProperty
  = PivotTableCellConditionalFormattingProperty {fieldId :: (Value Prelude.Text),
                                                 scope :: (Prelude.Maybe PivotTableConditionalFormattingScopeProperty),
                                                 scopes :: (Prelude.Maybe [PivotTableConditionalFormattingScopeProperty]),
                                                 textFormat :: (Prelude.Maybe TextConditionalFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPivotTableCellConditionalFormattingProperty ::
  Value Prelude.Text -> PivotTableCellConditionalFormattingProperty
mkPivotTableCellConditionalFormattingProperty fieldId
  = PivotTableCellConditionalFormattingProperty
      {fieldId = fieldId, scope = Prelude.Nothing,
       scopes = Prelude.Nothing, textFormat = Prelude.Nothing}
instance ToResourceProperties PivotTableCellConditionalFormattingProperty where
  toResourceProperties
    PivotTableCellConditionalFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.PivotTableCellConditionalFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "Scope" Prelude.<$> scope,
                               (JSON..=) "Scopes" Prelude.<$> scopes,
                               (JSON..=) "TextFormat" Prelude.<$> textFormat]))}
instance JSON.ToJSON PivotTableCellConditionalFormattingProperty where
  toJSON PivotTableCellConditionalFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "Scope" Prelude.<$> scope,
                  (JSON..=) "Scopes" Prelude.<$> scopes,
                  (JSON..=) "TextFormat" Prelude.<$> textFormat])))
instance Property "FieldId" PivotTableCellConditionalFormattingProperty where
  type PropertyType "FieldId" PivotTableCellConditionalFormattingProperty = Value Prelude.Text
  set newValue PivotTableCellConditionalFormattingProperty {..}
    = PivotTableCellConditionalFormattingProperty
        {fieldId = newValue, ..}
instance Property "Scope" PivotTableCellConditionalFormattingProperty where
  type PropertyType "Scope" PivotTableCellConditionalFormattingProperty = PivotTableConditionalFormattingScopeProperty
  set newValue PivotTableCellConditionalFormattingProperty {..}
    = PivotTableCellConditionalFormattingProperty
        {scope = Prelude.pure newValue, ..}
instance Property "Scopes" PivotTableCellConditionalFormattingProperty where
  type PropertyType "Scopes" PivotTableCellConditionalFormattingProperty = [PivotTableConditionalFormattingScopeProperty]
  set newValue PivotTableCellConditionalFormattingProperty {..}
    = PivotTableCellConditionalFormattingProperty
        {scopes = Prelude.pure newValue, ..}
instance Property "TextFormat" PivotTableCellConditionalFormattingProperty where
  type PropertyType "TextFormat" PivotTableCellConditionalFormattingProperty = TextConditionalFormatProperty
  set newValue PivotTableCellConditionalFormattingProperty {..}
    = PivotTableCellConditionalFormattingProperty
        {textFormat = Prelude.pure newValue, ..}