module Stratosphere.DynamoDB.Table.CsvProperty (
        CsvProperty(..), mkCsvProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvProperty
  = CsvProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                 headerList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvProperty :: CsvProperty
mkCsvProperty
  = CsvProperty
      {delimiter = Prelude.Nothing, headerList = Prelude.Nothing}
instance ToResourceProperties CsvProperty where
  toResourceProperties CsvProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.Csv",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "HeaderList" Prelude.<$> headerList])}
instance JSON.ToJSON CsvProperty where
  toJSON CsvProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "HeaderList" Prelude.<$> headerList]))
instance Property "Delimiter" CsvProperty where
  type PropertyType "Delimiter" CsvProperty = Value Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {delimiter = Prelude.pure newValue, ..}
instance Property "HeaderList" CsvProperty where
  type PropertyType "HeaderList" CsvProperty = ValueList Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {headerList = Prelude.pure newValue, ..}