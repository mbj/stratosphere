module Stratosphere.Glue.Classifier.CsvClassifierProperty (
        CsvClassifierProperty(..), mkCsvClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvClassifierProperty
  = CsvClassifierProperty {allowSingleColumn :: (Prelude.Maybe (Value Prelude.Bool)),
                           containsHeader :: (Prelude.Maybe (Value Prelude.Text)),
                           delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                           disableValueTrimming :: (Prelude.Maybe (Value Prelude.Bool)),
                           header :: (Prelude.Maybe (ValueList Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           quoteSymbol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvClassifierProperty :: CsvClassifierProperty
mkCsvClassifierProperty
  = CsvClassifierProperty
      {allowSingleColumn = Prelude.Nothing,
       containsHeader = Prelude.Nothing, delimiter = Prelude.Nothing,
       disableValueTrimming = Prelude.Nothing, header = Prelude.Nothing,
       name = Prelude.Nothing, quoteSymbol = Prelude.Nothing}
instance ToResourceProperties CsvClassifierProperty where
  toResourceProperties CsvClassifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Classifier.CsvClassifier",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowSingleColumn" Prelude.<$> allowSingleColumn,
                            (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "DisableValueTrimming" Prelude.<$> disableValueTrimming,
                            (JSON..=) "Header" Prelude.<$> header,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "QuoteSymbol" Prelude.<$> quoteSymbol])}
instance JSON.ToJSON CsvClassifierProperty where
  toJSON CsvClassifierProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowSingleColumn" Prelude.<$> allowSingleColumn,
               (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "DisableValueTrimming" Prelude.<$> disableValueTrimming,
               (JSON..=) "Header" Prelude.<$> header,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "QuoteSymbol" Prelude.<$> quoteSymbol]))
instance Property "AllowSingleColumn" CsvClassifierProperty where
  type PropertyType "AllowSingleColumn" CsvClassifierProperty = Value Prelude.Bool
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {allowSingleColumn = Prelude.pure newValue, ..}
instance Property "ContainsHeader" CsvClassifierProperty where
  type PropertyType "ContainsHeader" CsvClassifierProperty = Value Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {containsHeader = Prelude.pure newValue, ..}
instance Property "Delimiter" CsvClassifierProperty where
  type PropertyType "Delimiter" CsvClassifierProperty = Value Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty {delimiter = Prelude.pure newValue, ..}
instance Property "DisableValueTrimming" CsvClassifierProperty where
  type PropertyType "DisableValueTrimming" CsvClassifierProperty = Value Prelude.Bool
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {disableValueTrimming = Prelude.pure newValue, ..}
instance Property "Header" CsvClassifierProperty where
  type PropertyType "Header" CsvClassifierProperty = ValueList Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty {header = Prelude.pure newValue, ..}
instance Property "Name" CsvClassifierProperty where
  type PropertyType "Name" CsvClassifierProperty = Value Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty {name = Prelude.pure newValue, ..}
instance Property "QuoteSymbol" CsvClassifierProperty where
  type PropertyType "QuoteSymbol" CsvClassifierProperty = Value Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty {quoteSymbol = Prelude.pure newValue, ..}