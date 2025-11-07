module Stratosphere.BedrockAgentCore.Memory.TimeBasedTriggerInputProperty (
        TimeBasedTriggerInputProperty(..), mkTimeBasedTriggerInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedTriggerInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-timebasedtriggerinput.html>
    TimeBasedTriggerInputProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-timebasedtriggerinput.html#cfn-bedrockagentcore-memory-timebasedtriggerinput-idlesessiontimeout>
                                   idleSessionTimeout :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedTriggerInputProperty :: TimeBasedTriggerInputProperty
mkTimeBasedTriggerInputProperty
  = TimeBasedTriggerInputProperty
      {haddock_workaround_ = (), idleSessionTimeout = Prelude.Nothing}
instance ToResourceProperties TimeBasedTriggerInputProperty where
  toResourceProperties TimeBasedTriggerInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.TimeBasedTriggerInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IdleSessionTimeout" Prelude.<$> idleSessionTimeout])}
instance JSON.ToJSON TimeBasedTriggerInputProperty where
  toJSON TimeBasedTriggerInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IdleSessionTimeout" Prelude.<$> idleSessionTimeout]))
instance Property "IdleSessionTimeout" TimeBasedTriggerInputProperty where
  type PropertyType "IdleSessionTimeout" TimeBasedTriggerInputProperty = Value Prelude.Integer
  set newValue TimeBasedTriggerInputProperty {..}
    = TimeBasedTriggerInputProperty
        {idleSessionTimeout = Prelude.pure newValue, ..}