module Stratosphere.Logs.Transformer.CsvProperty (
        CsvProperty(..), mkCsvProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-csv.html>
    CsvProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-csv.html#cfn-logs-transformer-csv-columns>
                 columns :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-csv.html#cfn-logs-transformer-csv-delimiter>
                 delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-csv.html#cfn-logs-transformer-csv-quotecharacter>
                 quoteCharacter :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-transformer-csv.html#cfn-logs-transformer-csv-source>
                 source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvProperty :: CsvProperty
mkCsvProperty
  = CsvProperty
      {haddock_workaround_ = (), columns = Prelude.Nothing,
       delimiter = Prelude.Nothing, quoteCharacter = Prelude.Nothing,
       source = Prelude.Nothing}
instance ToResourceProperties CsvProperty where
  toResourceProperties CsvProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Transformer.Csv",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Columns" Prelude.<$> columns,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "QuoteCharacter" Prelude.<$> quoteCharacter,
                            (JSON..=) "Source" Prelude.<$> source])}
instance JSON.ToJSON CsvProperty where
  toJSON CsvProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Columns" Prelude.<$> columns,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "QuoteCharacter" Prelude.<$> quoteCharacter,
               (JSON..=) "Source" Prelude.<$> source]))
instance Property "Columns" CsvProperty where
  type PropertyType "Columns" CsvProperty = ValueList Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {columns = Prelude.pure newValue, ..}
instance Property "Delimiter" CsvProperty where
  type PropertyType "Delimiter" CsvProperty = Value Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {delimiter = Prelude.pure newValue, ..}
instance Property "QuoteCharacter" CsvProperty where
  type PropertyType "QuoteCharacter" CsvProperty = Value Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {quoteCharacter = Prelude.pure newValue, ..}
instance Property "Source" CsvProperty where
  type PropertyType "Source" CsvProperty = Value Prelude.Text
  set newValue CsvProperty {..}
    = CsvProperty {source = Prelude.pure newValue, ..}