module Stratosphere.BedrockAgentCore.RuntimeEndpoint (
        RuntimeEndpoint(..), mkRuntimeEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuntimeEndpoint
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html>
    RuntimeEndpoint {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html#cfn-bedrockagentcore-runtimeendpoint-agentruntimeid>
                     agentRuntimeId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html#cfn-bedrockagentcore-runtimeendpoint-agentruntimeversion>
                     agentRuntimeVersion :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html#cfn-bedrockagentcore-runtimeendpoint-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html#cfn-bedrockagentcore-runtimeendpoint-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-runtimeendpoint.html#cfn-bedrockagentcore-runtimeendpoint-tags>
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimeEndpoint ::
  Value Prelude.Text -> Value Prelude.Text -> RuntimeEndpoint
mkRuntimeEndpoint agentRuntimeId name
  = RuntimeEndpoint
      {haddock_workaround_ = (), agentRuntimeId = agentRuntimeId,
       name = name, agentRuntimeVersion = Prelude.Nothing,
       description = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties RuntimeEndpoint where
  toResourceProperties RuntimeEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::RuntimeEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentRuntimeId" JSON..= agentRuntimeId, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentRuntimeVersion" Prelude.<$> agentRuntimeVersion,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON RuntimeEndpoint where
  toJSON RuntimeEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentRuntimeId" JSON..= agentRuntimeId, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "AgentRuntimeVersion" Prelude.<$> agentRuntimeVersion,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentRuntimeId" RuntimeEndpoint where
  type PropertyType "AgentRuntimeId" RuntimeEndpoint = Value Prelude.Text
  set newValue RuntimeEndpoint {..}
    = RuntimeEndpoint {agentRuntimeId = newValue, ..}
instance Property "AgentRuntimeVersion" RuntimeEndpoint where
  type PropertyType "AgentRuntimeVersion" RuntimeEndpoint = Value Prelude.Text
  set newValue RuntimeEndpoint {..}
    = RuntimeEndpoint {agentRuntimeVersion = Prelude.pure newValue, ..}
instance Property "Description" RuntimeEndpoint where
  type PropertyType "Description" RuntimeEndpoint = Value Prelude.Text
  set newValue RuntimeEndpoint {..}
    = RuntimeEndpoint {description = Prelude.pure newValue, ..}
instance Property "Name" RuntimeEndpoint where
  type PropertyType "Name" RuntimeEndpoint = Value Prelude.Text
  set newValue RuntimeEndpoint {..}
    = RuntimeEndpoint {name = newValue, ..}
instance Property "Tags" RuntimeEndpoint where
  type PropertyType "Tags" RuntimeEndpoint = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RuntimeEndpoint {..}
    = RuntimeEndpoint {tags = Prelude.pure newValue, ..}