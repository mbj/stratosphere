module Stratosphere.Bedrock.PromptVersion.MessageProperty (
        module Exports, MessageProperty(..), mkMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.ContentBlockProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-message.html>
    MessageProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-message.html#cfn-bedrock-promptversion-message-content>
                     content :: [ContentBlockProperty],
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-message.html#cfn-bedrock-promptversion-message-role>
                     role :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageProperty ::
  [ContentBlockProperty] -> Value Prelude.Text -> MessageProperty
mkMessageProperty content role
  = MessageProperty
      {haddock_workaround_ = (), content = content, role = role}
instance ToResourceProperties MessageProperty where
  toResourceProperties MessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.Message",
         supportsTags = Prelude.False,
         properties = ["Content" JSON..= content, "Role" JSON..= role]}
instance JSON.ToJSON MessageProperty where
  toJSON MessageProperty {..}
    = JSON.object ["Content" JSON..= content, "Role" JSON..= role]
instance Property "Content" MessageProperty where
  type PropertyType "Content" MessageProperty = [ContentBlockProperty]
  set newValue MessageProperty {..}
    = MessageProperty {content = newValue, ..}
instance Property "Role" MessageProperty where
  type PropertyType "Role" MessageProperty = Value Prelude.Text
  set newValue MessageProperty {..}
    = MessageProperty {role = newValue, ..}