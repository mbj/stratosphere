module Stratosphere.QuickSight.Analysis.SheetTextBoxProperty (
        SheetTextBoxProperty(..), mkSheetTextBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetTextBoxProperty
  = SheetTextBoxProperty {content :: (Prelude.Maybe (Value Prelude.Text)),
                          sheetTextBoxId :: (Value Prelude.Text)}
mkSheetTextBoxProperty ::
  Value Prelude.Text -> SheetTextBoxProperty
mkSheetTextBoxProperty sheetTextBoxId
  = SheetTextBoxProperty
      {sheetTextBoxId = sheetTextBoxId, content = Prelude.Nothing}
instance ToResourceProperties SheetTextBoxProperty where
  toResourceProperties SheetTextBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.SheetTextBox",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SheetTextBoxId" JSON..= sheetTextBoxId]
                           (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content]))}
instance JSON.ToJSON SheetTextBoxProperty where
  toJSON SheetTextBoxProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SheetTextBoxId" JSON..= sheetTextBoxId]
              (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content])))
instance Property "Content" SheetTextBoxProperty where
  type PropertyType "Content" SheetTextBoxProperty = Value Prelude.Text
  set newValue SheetTextBoxProperty {..}
    = SheetTextBoxProperty {content = Prelude.pure newValue, ..}
instance Property "SheetTextBoxId" SheetTextBoxProperty where
  type PropertyType "SheetTextBoxId" SheetTextBoxProperty = Value Prelude.Text
  set newValue SheetTextBoxProperty {..}
    = SheetTextBoxProperty {sheetTextBoxId = newValue, ..}