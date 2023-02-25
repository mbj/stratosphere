module Stratosphere.IoTAnalytics.Dataset.OutputFileUriValueProperty (
        OutputFileUriValueProperty(..), mkOutputFileUriValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputFileUriValueProperty
  = OutputFileUriValueProperty {fileName :: (Value Prelude.Text)}
mkOutputFileUriValueProperty ::
  Value Prelude.Text -> OutputFileUriValueProperty
mkOutputFileUriValueProperty fileName
  = OutputFileUriValueProperty {fileName = fileName}
instance ToResourceProperties OutputFileUriValueProperty where
  toResourceProperties OutputFileUriValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.OutputFileUriValue",
         properties = ["FileName" JSON..= fileName]}
instance JSON.ToJSON OutputFileUriValueProperty where
  toJSON OutputFileUriValueProperty {..}
    = JSON.object ["FileName" JSON..= fileName]
instance Property "FileName" OutputFileUriValueProperty where
  type PropertyType "FileName" OutputFileUriValueProperty = Value Prelude.Text
  set newValue OutputFileUriValueProperty {}
    = OutputFileUriValueProperty {fileName = newValue, ..}