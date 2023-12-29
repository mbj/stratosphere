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
                          sheetIndexes :: (Prelude.Maybe (ValueList Prelude.Integer)),
                          sheetNames :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExcelOptionsProperty :: ExcelOptionsProperty
mkExcelOptionsProperty
  = ExcelOptionsProperty
      {headerRow = Prelude.Nothing, sheetIndexes = Prelude.Nothing,
       sheetNames = Prelude.Nothing}
instance ToResourceProperties ExcelOptionsProperty where
  toResourceProperties ExcelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.ExcelOptions",
         supportsTags = Prelude.False,
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
  type PropertyType "SheetIndexes" ExcelOptionsProperty = ValueList Prelude.Integer
  set newValue ExcelOptionsProperty {..}
    = ExcelOptionsProperty {sheetIndexes = Prelude.pure newValue, ..}
instance Property "SheetNames" ExcelOptionsProperty where
  type PropertyType "SheetNames" ExcelOptionsProperty = ValueList Prelude.Text
  set newValue ExcelOptionsProperty {..}
    = ExcelOptionsProperty {sheetNames = Prelude.pure newValue, ..}