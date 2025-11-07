module Stratosphere.BedrockAgentCore.Memory (
        module Exports, Memory(..), mkMemory
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Memory.MemoryStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Memory
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html>
    Memory {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-description>
            description :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-encryptionkeyarn>
            encryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-eventexpiryduration>
            eventExpiryDuration :: (Value Prelude.Integer),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-memoryexecutionrolearn>
            memoryExecutionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-memorystrategies>
            memoryStrategies :: (Prelude.Maybe [MemoryStrategyProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-name>
            name :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-memory.html#cfn-bedrockagentcore-memory-tags>
            tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemory :: Value Prelude.Integer -> Value Prelude.Text -> Memory
mkMemory eventExpiryDuration name
  = Memory
      {haddock_workaround_ = (),
       eventExpiryDuration = eventExpiryDuration, name = name,
       description = Prelude.Nothing, encryptionKeyArn = Prelude.Nothing,
       memoryExecutionRoleArn = Prelude.Nothing,
       memoryStrategies = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Memory where
  toResourceProperties Memory {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EventExpiryDuration" JSON..= eventExpiryDuration,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                               (JSON..=) "MemoryExecutionRoleArn"
                                 Prelude.<$> memoryExecutionRoleArn,
                               (JSON..=) "MemoryStrategies" Prelude.<$> memoryStrategies,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Memory where
  toJSON Memory {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EventExpiryDuration" JSON..= eventExpiryDuration,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionKeyArn" Prelude.<$> encryptionKeyArn,
                  (JSON..=) "MemoryExecutionRoleArn"
                    Prelude.<$> memoryExecutionRoleArn,
                  (JSON..=) "MemoryStrategies" Prelude.<$> memoryStrategies,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Memory where
  type PropertyType "Description" Memory = Value Prelude.Text
  set newValue Memory {..}
    = Memory {description = Prelude.pure newValue, ..}
instance Property "EncryptionKeyArn" Memory where
  type PropertyType "EncryptionKeyArn" Memory = Value Prelude.Text
  set newValue Memory {..}
    = Memory {encryptionKeyArn = Prelude.pure newValue, ..}
instance Property "EventExpiryDuration" Memory where
  type PropertyType "EventExpiryDuration" Memory = Value Prelude.Integer
  set newValue Memory {..}
    = Memory {eventExpiryDuration = newValue, ..}
instance Property "MemoryExecutionRoleArn" Memory where
  type PropertyType "MemoryExecutionRoleArn" Memory = Value Prelude.Text
  set newValue Memory {..}
    = Memory {memoryExecutionRoleArn = Prelude.pure newValue, ..}
instance Property "MemoryStrategies" Memory where
  type PropertyType "MemoryStrategies" Memory = [MemoryStrategyProperty]
  set newValue Memory {..}
    = Memory {memoryStrategies = Prelude.pure newValue, ..}
instance Property "Name" Memory where
  type PropertyType "Name" Memory = Value Prelude.Text
  set newValue Memory {..} = Memory {name = newValue, ..}
instance Property "Tags" Memory where
  type PropertyType "Tags" Memory = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Memory {..}
    = Memory {tags = Prelude.pure newValue, ..}