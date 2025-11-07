module Stratosphere.BedrockAgentCore.Memory.TriggerConditionInputProperty (
        module Exports, TriggerConditionInputProperty(..),
        mkTriggerConditionInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.MessageBasedTriggerInputProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.TimeBasedTriggerInputProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.TokenBasedTriggerInputProperty as Exports
import Stratosphere.ResourceProperties
data TriggerConditionInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html>
    TriggerConditionInputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-messagebasedtrigger>
                                   messageBasedTrigger :: (Prelude.Maybe MessageBasedTriggerInputProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-timebasedtrigger>
                                   timeBasedTrigger :: (Prelude.Maybe TimeBasedTriggerInputProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-triggerconditioninput.html#cfn-bedrockagentcore-memory-triggerconditioninput-tokenbasedtrigger>
                                   tokenBasedTrigger :: (Prelude.Maybe TokenBasedTriggerInputProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerConditionInputProperty :: TriggerConditionInputProperty
mkTriggerConditionInputProperty
  = TriggerConditionInputProperty
      {haddock_workaround_ = (), messageBasedTrigger = Prelude.Nothing,
       timeBasedTrigger = Prelude.Nothing,
       tokenBasedTrigger = Prelude.Nothing}
instance ToResourceProperties TriggerConditionInputProperty where
  toResourceProperties TriggerConditionInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.TriggerConditionInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MessageBasedTrigger" Prelude.<$> messageBasedTrigger,
                            (JSON..=) "TimeBasedTrigger" Prelude.<$> timeBasedTrigger,
                            (JSON..=) "TokenBasedTrigger" Prelude.<$> tokenBasedTrigger])}
instance JSON.ToJSON TriggerConditionInputProperty where
  toJSON TriggerConditionInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MessageBasedTrigger" Prelude.<$> messageBasedTrigger,
               (JSON..=) "TimeBasedTrigger" Prelude.<$> timeBasedTrigger,
               (JSON..=) "TokenBasedTrigger" Prelude.<$> tokenBasedTrigger]))
instance Property "MessageBasedTrigger" TriggerConditionInputProperty where
  type PropertyType "MessageBasedTrigger" TriggerConditionInputProperty = MessageBasedTriggerInputProperty
  set newValue TriggerConditionInputProperty {..}
    = TriggerConditionInputProperty
        {messageBasedTrigger = Prelude.pure newValue, ..}
instance Property "TimeBasedTrigger" TriggerConditionInputProperty where
  type PropertyType "TimeBasedTrigger" TriggerConditionInputProperty = TimeBasedTriggerInputProperty
  set newValue TriggerConditionInputProperty {..}
    = TriggerConditionInputProperty
        {timeBasedTrigger = Prelude.pure newValue, ..}
instance Property "TokenBasedTrigger" TriggerConditionInputProperty where
  type PropertyType "TokenBasedTrigger" TriggerConditionInputProperty = TokenBasedTriggerInputProperty
  set newValue TriggerConditionInputProperty {..}
    = TriggerConditionInputProperty
        {tokenBasedTrigger = Prelude.pure newValue, ..}