module Stratosphere.Wisdom.AIAgentVersion (
        AIAgentVersion(..), mkAIAgentVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIAgentVersion
  = AIAgentVersion {aIAgentId :: (Value Prelude.Text),
                    assistantId :: (Value Prelude.Text),
                    modifiedTimeSeconds :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIAgentVersion ::
  Value Prelude.Text -> Value Prelude.Text -> AIAgentVersion
mkAIAgentVersion aIAgentId assistantId
  = AIAgentVersion
      {aIAgentId = aIAgentId, assistantId = assistantId,
       modifiedTimeSeconds = Prelude.Nothing}
instance ToResourceProperties AIAgentVersion where
  toResourceProperties AIAgentVersion {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgentVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AIAgentId" JSON..= aIAgentId, "AssistantId" JSON..= assistantId]
                           (Prelude.catMaybes
                              [(JSON..=) "ModifiedTimeSeconds"
                                 Prelude.<$> modifiedTimeSeconds]))}
instance JSON.ToJSON AIAgentVersion where
  toJSON AIAgentVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AIAgentId" JSON..= aIAgentId, "AssistantId" JSON..= assistantId]
              (Prelude.catMaybes
                 [(JSON..=) "ModifiedTimeSeconds"
                    Prelude.<$> modifiedTimeSeconds])))
instance Property "AIAgentId" AIAgentVersion where
  type PropertyType "AIAgentId" AIAgentVersion = Value Prelude.Text
  set newValue AIAgentVersion {..}
    = AIAgentVersion {aIAgentId = newValue, ..}
instance Property "AssistantId" AIAgentVersion where
  type PropertyType "AssistantId" AIAgentVersion = Value Prelude.Text
  set newValue AIAgentVersion {..}
    = AIAgentVersion {assistantId = newValue, ..}
instance Property "ModifiedTimeSeconds" AIAgentVersion where
  type PropertyType "ModifiedTimeSeconds" AIAgentVersion = Value Prelude.Double
  set newValue AIAgentVersion {..}
    = AIAgentVersion {modifiedTimeSeconds = Prelude.pure newValue, ..}