module Stratosphere.LookoutMetrics.AnomalyDetector.CsvFormatDescriptorProperty (
        CsvFormatDescriptorProperty(..), mkCsvFormatDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvFormatDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html>
    CsvFormatDescriptorProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-charset>
                                 charset :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-containsheader>
                                 containsHeader :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-delimiter>
                                 delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-filecompression>
                                 fileCompression :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-headerlist>
                                 headerList :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-csvformatdescriptor.html#cfn-lookoutmetrics-anomalydetector-csvformatdescriptor-quotesymbol>
                                 quoteSymbol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvFormatDescriptorProperty :: CsvFormatDescriptorProperty
mkCsvFormatDescriptorProperty
  = CsvFormatDescriptorProperty
      {haddock_workaround_ = (), charset = Prelude.Nothing,
       containsHeader = Prelude.Nothing, delimiter = Prelude.Nothing,
       fileCompression = Prelude.Nothing, headerList = Prelude.Nothing,
       quoteSymbol = Prelude.Nothing}
instance ToResourceProperties CsvFormatDescriptorProperty where
  toResourceProperties CsvFormatDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.CsvFormatDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Charset" Prelude.<$> charset,
                            (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
                            (JSON..=) "Delimiter" Prelude.<$> delimiter,
                            (JSON..=) "FileCompression" Prelude.<$> fileCompression,
                            (JSON..=) "HeaderList" Prelude.<$> headerList,
                            (JSON..=) "QuoteSymbol" Prelude.<$> quoteSymbol])}
instance JSON.ToJSON CsvFormatDescriptorProperty where
  toJSON CsvFormatDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Charset" Prelude.<$> charset,
               (JSON..=) "ContainsHeader" Prelude.<$> containsHeader,
               (JSON..=) "Delimiter" Prelude.<$> delimiter,
               (JSON..=) "FileCompression" Prelude.<$> fileCompression,
               (JSON..=) "HeaderList" Prelude.<$> headerList,
               (JSON..=) "QuoteSymbol" Prelude.<$> quoteSymbol]))
instance Property "Charset" CsvFormatDescriptorProperty where
  type PropertyType "Charset" CsvFormatDescriptorProperty = Value Prelude.Text
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty {charset = Prelude.pure newValue, ..}
instance Property "ContainsHeader" CsvFormatDescriptorProperty where
  type PropertyType "ContainsHeader" CsvFormatDescriptorProperty = Value Prelude.Bool
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty
        {containsHeader = Prelude.pure newValue, ..}
instance Property "Delimiter" CsvFormatDescriptorProperty where
  type PropertyType "Delimiter" CsvFormatDescriptorProperty = Value Prelude.Text
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty
        {delimiter = Prelude.pure newValue, ..}
instance Property "FileCompression" CsvFormatDescriptorProperty where
  type PropertyType "FileCompression" CsvFormatDescriptorProperty = Value Prelude.Text
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty
        {fileCompression = Prelude.pure newValue, ..}
instance Property "HeaderList" CsvFormatDescriptorProperty where
  type PropertyType "HeaderList" CsvFormatDescriptorProperty = ValueList Prelude.Text
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty
        {headerList = Prelude.pure newValue, ..}
instance Property "QuoteSymbol" CsvFormatDescriptorProperty where
  type PropertyType "QuoteSymbol" CsvFormatDescriptorProperty = Value Prelude.Text
  set newValue CsvFormatDescriptorProperty {..}
    = CsvFormatDescriptorProperty
        {quoteSymbol = Prelude.pure newValue, ..}