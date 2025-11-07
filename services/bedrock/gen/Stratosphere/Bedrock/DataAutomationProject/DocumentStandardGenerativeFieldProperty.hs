module Stratosphere.Bedrock.DataAutomationProject.DocumentStandardGenerativeFieldProperty (
        DocumentStandardGenerativeFieldProperty(..),
        mkDocumentStandardGenerativeFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentStandardGenerativeFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardgenerativefield.html>
    DocumentStandardGenerativeFieldProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentstandardgenerativefield.html#cfn-bedrock-dataautomationproject-documentstandardgenerativefield-state>
                                             state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentStandardGenerativeFieldProperty ::
  Value Prelude.Text -> DocumentStandardGenerativeFieldProperty
mkDocumentStandardGenerativeFieldProperty state
  = DocumentStandardGenerativeFieldProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties DocumentStandardGenerativeFieldProperty where
  toResourceProperties DocumentStandardGenerativeFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentStandardGenerativeField",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON DocumentStandardGenerativeFieldProperty where
  toJSON DocumentStandardGenerativeFieldProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" DocumentStandardGenerativeFieldProperty where
  type PropertyType "State" DocumentStandardGenerativeFieldProperty = Value Prelude.Text
  set newValue DocumentStandardGenerativeFieldProperty {..}
    = DocumentStandardGenerativeFieldProperty {state = newValue, ..}