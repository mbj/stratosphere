module Stratosphere.DataBrew.Dataset.ExcelOptionsProperty (
        ExcelOptionsProperty(..), mkExcelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExcelOptionsProperty
  = ExcelOptionsProperty {headerRow :: (Prelude.Maybe (Value Prelude.Bool)),
                          sheetIndexes :: (Prelude.Maybe (ValueList (Value Prelude.Integer))),
                          sheetNames :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkExcelOptionsProperty :: ExcelOptionsProperty
mkExcelOptionsProperty
  = ExcelOptionsProperty
      {headerRow = Prelude.Nothing, sheetIndexes = Prelude.Nothing,
       sheetNames = Prelude.Nothing}
instance ToResourceProperties ExcelOptionsProperty where
  toResourceProperties ExcelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.ExcelOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderRow" Prelude.<$> headerRow,
                            (JSON..=) "SheetIndexes" Prelude.<$> sheetIndexes,
                            (JSON..=) "SheetNames" Prelude.<$> sheetNames])}
instance JSON.ToJSON ExcelOptionsProperty where
  toJSON ExcelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderRow" Prelude.<$> headerRow,
               (JSON..=) "SheetIndexes" Prelude.<$> sheetIndexes,
               (JSON..=) "SheetNames" Prelude.<$> sheetNames]))
instance Property "HeaderRow" ExcelOptionsProperty where
  type PropertyType "HeaderRow" ExcelOptionsProperty = Value Prelude.Bool
  set newValue ExcelOptionsProperty {..}
    = ExcelOptionsProperty {headerRow = Prelude.pure newValue, ..}
instance Property "SheetIndexes" ExcelOptionsProperty where
  type PropertyType "SheetIndexes" ExcelOptionsProperty = ValueList (Value Prelude.Integer)
  set newValue ExcelOptionsProperty {..}
    = ExcelOptionsProperty {sheetIndexes = Prelude.pure newValue, ..}
instance Property "SheetNames" ExcelOptionsProperty where
  type PropertyType "SheetNames" ExcelOptionsProperty = ValueList (Value Prelude.Text)
  set newValue ExcelOptionsProperty {..}
    = ExcelOptionsProperty {sheetNames = Prelude.pure newValue, ..}