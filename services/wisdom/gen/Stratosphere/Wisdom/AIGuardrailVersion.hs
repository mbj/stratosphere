module Stratosphere.Wisdom.AIGuardrailVersion (
        AIGuardrailVersion(..), mkAIGuardrailVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIGuardrailVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrailversion.html>
    AIGuardrailVersion {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrailversion.html#cfn-wisdom-aiguardrailversion-aiguardrailid>
                        aIGuardrailId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrailversion.html#cfn-wisdom-aiguardrailversion-assistantid>
                        assistantId :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiguardrailversion.html#cfn-wisdom-aiguardrailversion-modifiedtimeseconds>
                        modifiedTimeSeconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIGuardrailVersion ::
  Value Prelude.Text -> Value Prelude.Text -> AIGuardrailVersion
mkAIGuardrailVersion aIGuardrailId assistantId
  = AIGuardrailVersion
      {haddock_workaround_ = (), aIGuardrailId = aIGuardrailId,
       assistantId = assistantId, modifiedTimeSeconds = Prelude.Nothing}
instance ToResourceProperties AIGuardrailVersion where
  toResourceProperties AIGuardrailVersion {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIGuardrailVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AIGuardrailId" JSON..= aIGuardrailId,
                            "AssistantId" JSON..= assistantId]
                           (Prelude.catMaybes
                              [(JSON..=) "ModifiedTimeSeconds"
                                 Prelude.<$> modifiedTimeSeconds]))}
instance JSON.ToJSON AIGuardrailVersion where
  toJSON AIGuardrailVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AIGuardrailId" JSON..= aIGuardrailId,
               "AssistantId" JSON..= assistantId]
              (Prelude.catMaybes
                 [(JSON..=) "ModifiedTimeSeconds"
                    Prelude.<$> modifiedTimeSeconds])))
instance Property "AIGuardrailId" AIGuardrailVersion where
  type PropertyType "AIGuardrailId" AIGuardrailVersion = Value Prelude.Text
  set newValue AIGuardrailVersion {..}
    = AIGuardrailVersion {aIGuardrailId = newValue, ..}
instance Property "AssistantId" AIGuardrailVersion where
  type PropertyType "AssistantId" AIGuardrailVersion = Value Prelude.Text
  set newValue AIGuardrailVersion {..}
    = AIGuardrailVersion {assistantId = newValue, ..}
instance Property "ModifiedTimeSeconds" AIGuardrailVersion where
  type PropertyType "ModifiedTimeSeconds" AIGuardrailVersion = Value Prelude.Double
  set newValue AIGuardrailVersion {..}
    = AIGuardrailVersion
        {modifiedTimeSeconds = Prelude.pure newValue, ..}