module Stratosphere.Wisdom.AIPromptVersion (
        AIPromptVersion(..), mkAIPromptVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIPromptVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aipromptversion.html>
    AIPromptVersion {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aipromptversion.html#cfn-wisdom-aipromptversion-aipromptid>
                     aIPromptId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aipromptversion.html#cfn-wisdom-aipromptversion-assistantid>
                     assistantId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aipromptversion.html#cfn-wisdom-aipromptversion-modifiedtimeseconds>
                     modifiedTimeSeconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIPromptVersion ::
  Value Prelude.Text -> Value Prelude.Text -> AIPromptVersion
mkAIPromptVersion aIPromptId assistantId
  = AIPromptVersion
      {haddock_workaround_ = (), aIPromptId = aIPromptId,
       assistantId = assistantId, modifiedTimeSeconds = Prelude.Nothing}
instance ToResourceProperties AIPromptVersion where
  toResourceProperties AIPromptVersion {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIPromptVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AIPromptId" JSON..= aIPromptId,
                            "AssistantId" JSON..= assistantId]
                           (Prelude.catMaybes
                              [(JSON..=) "ModifiedTimeSeconds"
                                 Prelude.<$> modifiedTimeSeconds]))}
instance JSON.ToJSON AIPromptVersion where
  toJSON AIPromptVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AIPromptId" JSON..= aIPromptId,
               "AssistantId" JSON..= assistantId]
              (Prelude.catMaybes
                 [(JSON..=) "ModifiedTimeSeconds"
                    Prelude.<$> modifiedTimeSeconds])))
instance Property "AIPromptId" AIPromptVersion where
  type PropertyType "AIPromptId" AIPromptVersion = Value Prelude.Text
  set newValue AIPromptVersion {..}
    = AIPromptVersion {aIPromptId = newValue, ..}
instance Property "AssistantId" AIPromptVersion where
  type PropertyType "AssistantId" AIPromptVersion = Value Prelude.Text
  set newValue AIPromptVersion {..}
    = AIPromptVersion {assistantId = newValue, ..}
instance Property "ModifiedTimeSeconds" AIPromptVersion where
  type PropertyType "ModifiedTimeSeconds" AIPromptVersion = Value Prelude.Double
  set newValue AIPromptVersion {..}
    = AIPromptVersion {modifiedTimeSeconds = Prelude.pure newValue, ..}