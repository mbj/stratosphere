module Stratosphere.DataBrew.Dataset.CsvOptionsProperty (
        CsvOptionsProperty(..), mkCsvOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-csvoptions.html>
    CsvOptionsProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-csvoptions.html#cfn-databrew-dataset-csvoptions-delimiter>
                        delimiter :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-dataset-csvoptions.html#cfn-databrew-dataset-csvoptions-headerrow>
                        headerRow :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvOptionsProperty :: CsvOptionsProperty
mkCsvOptionsProperty
  = CsvOptionsProperty
      {haddock_workaround_ = (), delimiter = Prelude.Nothing,
       headerRow = Prelude.Nothing}
instance ToResourceProperties CsvOptionsProperty where
  toResourceProperties CsvOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Dataset.CsvOptions",
         supportsTags = Prelude.False,
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