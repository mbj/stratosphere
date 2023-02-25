module Stratosphere.DataBrew.Dataset.CsvOptionsProperty (
        CsvOptionsProperty(..), mkCsvOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvOptionsProperty
  = CsvOptionsProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                        headerRow :: (Prelude.Maybe (Value Prelude.Bool))}
mkCsvOptionsProperty :: CsvOptionsProperty
mkCsvOptionsProperty
  = CsvOptionsProperty
      {delimiter = Prelude.Nothing, headerRow = Prelude.Nothing}
instance ToResourceProperties CsvOptionsProperty where
  toResourceProperties CsvOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.CsvOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "HeaderRow" Prelude.<$> headerRow])}
instance JSON.ToJSON CsvOptionsProperty where
  toJSON CsvOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "HeaderRow" Prelude.<$> headerRow]))
instance Property "Delimiter" CsvOptionsProperty where
  type PropertyType "Delimiter" CsvOptionsProperty = Value Prelude.Text
  set newValue CsvOptionsProperty {..}
    = CsvOptionsProperty {delimiter = Prelude.pure newValue, ..}
instance Property "HeaderRow" CsvOptionsProperty where
  type PropertyType "HeaderRow" CsvOptionsProperty = Value Prelude.Bool
  set newValue CsvOptionsProperty {..}
    = CsvOptionsProperty {headerRow = Prelude.pure newValue, ..}