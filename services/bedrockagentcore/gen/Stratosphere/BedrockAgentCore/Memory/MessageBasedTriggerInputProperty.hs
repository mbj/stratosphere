module Stratosphere.BedrockAgentCore.Memory.MessageBasedTriggerInputProperty (
        MessageBasedTriggerInputProperty(..),
        mkMessageBasedTriggerInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageBasedTriggerInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-messagebasedtriggerinput.html>
    MessageBasedTriggerInputProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-messagebasedtriggerinput.html#cfn-bedrockagentcore-memory-messagebasedtriggerinput-messagecount>
                                      messageCount :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageBasedTriggerInputProperty ::
  MessageBasedTriggerInputProperty
mkMessageBasedTriggerInputProperty
  = MessageBasedTriggerInputProperty
      {haddock_workaround_ = (), messageCount = Prelude.Nothing}
instance ToResourceProperties MessageBasedTriggerInputProperty where
  toResourceProperties MessageBasedTriggerInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.MessageBasedTriggerInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageCount" Prelude.<$> messageCount])}
instance JSON.ToJSON MessageBasedTriggerInputProperty where
  toJSON MessageBasedTriggerInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageCount" Prelude.<$> messageCount]))
instance Property "MessageCount" MessageBasedTriggerInputProperty where
  type PropertyType "MessageCount" MessageBasedTriggerInputProperty = Value Prelude.Integer
  set newValue MessageBasedTriggerInputProperty {..}
    = MessageBasedTriggerInputProperty
        {messageCount = Prelude.pure newValue, ..}