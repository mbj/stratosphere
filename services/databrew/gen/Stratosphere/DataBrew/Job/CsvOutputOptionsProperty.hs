module Stratosphere.DataBrew.Job.CsvOutputOptionsProperty (
        CsvOutputOptionsProperty(..), mkCsvOutputOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CsvOutputOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-csvoutputoptions.html>
    CsvOutputOptionsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-databrew-job-csvoutputoptions.html#cfn-databrew-job-csvoutputoptions-delimiter>
                              delimiter :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCsvOutputOptionsProperty :: CsvOutputOptionsProperty
mkCsvOutputOptionsProperty
  = CsvOutputOptionsProperty
      {haddock_workaround_ = (), delimiter = Prelude.Nothing}
instance ToResourceProperties CsvOutputOptionsProperty where
  toResourceProperties CsvOutputOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Job.CsvOutputOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Delimiter" Prelude.<$> delimiter])}
instance JSON.ToJSON CsvOutputOptionsProperty where
  toJSON CsvOutputOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Delimiter" Prelude.<$> delimiter]))
instance Property "Delimiter" CsvOutputOptionsProperty where
  type PropertyType "Delimiter" CsvOutputOptionsProperty = Value Prelude.Text
  set newValue CsvOutputOptionsProperty {..}
    = CsvOutputOptionsProperty {delimiter = Prelude.pure newValue, ..}