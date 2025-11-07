module Stratosphere.Bedrock.DataAutomationProject.DocumentOutputAdditionalFileFormatProperty (
        DocumentOutputAdditionalFileFormatProperty(..),
        mkDocumentOutputAdditionalFileFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentOutputAdditionalFileFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputadditionalfileformat.html>
    DocumentOutputAdditionalFileFormatProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentoutputadditionalfileformat.html#cfn-bedrock-dataautomationproject-documentoutputadditionalfileformat-state>
                                                state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentOutputAdditionalFileFormatProperty ::
  Value Prelude.Text -> DocumentOutputAdditionalFileFormatProperty
mkDocumentOutputAdditionalFileFormatProperty state
  = DocumentOutputAdditionalFileFormatProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties DocumentOutputAdditionalFileFormatProperty where
  toResourceProperties
    DocumentOutputAdditionalFileFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentOutputAdditionalFileFormat",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON DocumentOutputAdditionalFileFormatProperty where
  toJSON DocumentOutputAdditionalFileFormatProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" DocumentOutputAdditionalFileFormatProperty where
  type PropertyType "State" DocumentOutputAdditionalFileFormatProperty = Value Prelude.Text
  set newValue DocumentOutputAdditionalFileFormatProperty {..}
    = DocumentOutputAdditionalFileFormatProperty {state = newValue, ..}