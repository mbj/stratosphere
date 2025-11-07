module Stratosphere.Bedrock.DataAutomationProject.DocumentBoundingBoxProperty (
        DocumentBoundingBoxProperty(..), mkDocumentBoundingBoxProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DocumentBoundingBoxProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentboundingbox.html>
    DocumentBoundingBoxProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-dataautomationproject-documentboundingbox.html#cfn-bedrock-dataautomationproject-documentboundingbox-state>
                                 state :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDocumentBoundingBoxProperty ::
  Value Prelude.Text -> DocumentBoundingBoxProperty
mkDocumentBoundingBoxProperty state
  = DocumentBoundingBoxProperty
      {haddock_workaround_ = (), state = state}
instance ToResourceProperties DocumentBoundingBoxProperty where
  toResourceProperties DocumentBoundingBoxProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataAutomationProject.DocumentBoundingBox",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON DocumentBoundingBoxProperty where
  toJSON DocumentBoundingBoxProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" DocumentBoundingBoxProperty where
  type PropertyType "State" DocumentBoundingBoxProperty = Value Prelude.Text
  set newValue DocumentBoundingBoxProperty {..}
    = DocumentBoundingBoxProperty {state = newValue, ..}