module Stratosphere.Glue.Classifier.CsvClassifierProperty (
        CsvClassifierProperty(..), mkCsvClassifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvClassifierProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html>
    CsvClassifierProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-allowsinglecolumn>
                           allowSingleColumn :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-containscustomdatatype>
                           containsCustomDatatype :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-containsheader>
                           containsHeader :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-customdatatypeconfigured>
                           customDatatypeConfigured :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-delimiter>
                           delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-disablevaluetrimming>
                           disableValueTrimming :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-header>
                           header :: (Prelude.Maybe (ValueList Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-classifier-csvclassifier.html#cfn-glue-classifier-csvclassifier-quotesymbol>
                           quoteSymbol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvClassifierProperty :: CsvClassifierProperty
mkCsvClassifierProperty
  = CsvClassifierProperty
      {haddock_workaround_ = (), allowSingleColumn = Prelude.Nothing,
       containsCustomDatatype = Prelude.Nothing,
       containsHeader = Prelude.Nothing,
       customDatatypeConfigured = Prelude.Nothing,
       delimiter = Prelude.Nothing,
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
                            (JSON..=) "ContainsCustomDatatype"
                              Prelude.<$> containsCustomDatatype,
                            (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
                            (JSON..=) "CustomDatatypeConfigured"
                              Prelude.<$> customDatatypeConfigured,
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
               (JSON..=) "ContainsCustomDatatype"
                 Prelude.<$> containsCustomDatatype,
               (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
               (JSON..=) "CustomDatatypeConfigured"
                 Prelude.<$> customDatatypeConfigured,
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
instance Property "ContainsCustomDatatype" CsvClassifierProperty where
  type PropertyType "ContainsCustomDatatype" CsvClassifierProperty = ValueList Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {containsCustomDatatype = Prelude.pure newValue, ..}
instance Property "ContainsHeader" CsvClassifierProperty where
  type PropertyType "ContainsHeader" CsvClassifierProperty = Value Prelude.Text
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {containsHeader = Prelude.pure newValue, ..}
instance Property "CustomDatatypeConfigured" CsvClassifierProperty where
  type PropertyType "CustomDatatypeConfigured" CsvClassifierProperty = Value Prelude.Bool
  set newValue CsvClassifierProperty {..}
    = CsvClassifierProperty
        {customDatatypeConfigured = Prelude.pure newValue, ..}
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