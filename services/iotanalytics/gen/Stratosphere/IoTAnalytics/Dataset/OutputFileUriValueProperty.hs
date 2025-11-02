module Stratosphere.IoTAnalytics.Dataset.OutputFileUriValueProperty (
        OutputFileUriValueProperty(..), mkOutputFileUriValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputFileUriValueProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-outputfileurivalue.html>
    OutputFileUriValueProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-outputfileurivalue.html#cfn-iotanalytics-dataset-outputfileurivalue-filename>
                                fileName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputFileUriValueProperty ::
  Value Prelude.Text -> OutputFileUriValueProperty
mkOutputFileUriValueProperty fileName
  = OutputFileUriValueProperty
      {haddock_workaround_ = (), fileName = fileName}
instance ToResourceProperties OutputFileUriValueProperty where
  toResourceProperties OutputFileUriValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.OutputFileUriValue",
         supportsTags = Prelude.False,
         properties = ["FileName" JSON..= fileName]}
instance JSON.ToJSON OutputFileUriValueProperty where
  toJSON OutputFileUriValueProperty {..}
    = JSON.object ["FileName" JSON..= fileName]
instance Property "FileName" OutputFileUriValueProperty where
  type PropertyType "FileName" OutputFileUriValueProperty = Value Prelude.Text
  set newValue OutputFileUriValueProperty {..}
    = OutputFileUriValueProperty {fileName = newValue, ..}