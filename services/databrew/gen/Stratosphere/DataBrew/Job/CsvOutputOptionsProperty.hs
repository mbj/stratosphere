module Stratosphere.DataBrew.Job.CsvOutputOptionsProperty (
        CsvOutputOptionsProperty(..), mkCsvOutputOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvOutputOptionsProperty
  = CsvOutputOptionsProperty {delimiter :: (Prelude.Maybe (Value Prelude.Text))}
mkCsvOutputOptionsProperty :: CsvOutputOptionsProperty
mkCsvOutputOptionsProperty
  = CsvOutputOptionsProperty {delimiter = Prelude.Nothing}
instance ToResourceProperties CsvOutputOptionsProperty where
  toResourceProperties CsvOutputOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.CsvOutputOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Delimiter" Prelude.<$> delimiter])}
instance JSON.ToJSON CsvOutputOptionsProperty where
  toJSON CsvOutputOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Delimiter" Prelude.<$> delimiter]))
instance Property "Delimiter" CsvOutputOptionsProperty where
  type PropertyType "Delimiter" CsvOutputOptionsProperty = Value Prelude.Text
  set newValue CsvOutputOptionsProperty {}
    = CsvOutputOptionsProperty {delimiter = Prelude.pure newValue, ..}