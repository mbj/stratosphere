module Stratosphere.QuickSight.Analysis.SheetProperty (
        SheetProperty(..), mkSheetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SheetProperty
  = SheetProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                   sheetId :: (Prelude.Maybe (Value Prelude.Text))}
mkSheetProperty :: SheetProperty
mkSheetProperty
  = SheetProperty {name = Prelude.Nothing, sheetId = Prelude.Nothing}
instance ToResourceProperties SheetProperty where
  toResourceProperties SheetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.Sheet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SheetId" Prelude.<$> sheetId])}
instance JSON.ToJSON SheetProperty where
  toJSON SheetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SheetId" Prelude.<$> sheetId]))
instance Property "Name" SheetProperty where
  type PropertyType "Name" SheetProperty = Value Prelude.Text
  set newValue SheetProperty {..}
    = SheetProperty {name = Prelude.pure newValue, ..}
instance Property "SheetId" SheetProperty where
  type PropertyType "SheetId" SheetProperty = Value Prelude.Text
  set newValue SheetProperty {..}
    = SheetProperty {sheetId = Prelude.pure newValue, ..}