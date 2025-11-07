module Stratosphere.Bedrock.PromptVersion.PromptAgentResourceProperty (
        PromptAgentResourceProperty(..), mkPromptAgentResourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptAgentResourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptagentresource.html>
    PromptAgentResourceProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptagentresource.html#cfn-bedrock-promptversion-promptagentresource-agentidentifier>
                                 agentIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptAgentResourceProperty ::
  Value Prelude.Text -> PromptAgentResourceProperty
mkPromptAgentResourceProperty agentIdentifier
  = PromptAgentResourceProperty
      {haddock_workaround_ = (), agentIdentifier = agentIdentifier}
instance ToResourceProperties PromptAgentResourceProperty where
  toResourceProperties PromptAgentResourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptAgentResource",
         supportsTags = Prelude.False,
         properties = ["AgentIdentifier" JSON..= agentIdentifier]}
instance JSON.ToJSON PromptAgentResourceProperty where
  toJSON PromptAgentResourceProperty {..}
    = JSON.object ["AgentIdentifier" JSON..= agentIdentifier]
instance Property "AgentIdentifier" PromptAgentResourceProperty where
  type PropertyType "AgentIdentifier" PromptAgentResourceProperty = Value Prelude.Text
  set newValue PromptAgentResourceProperty {..}
    = PromptAgentResourceProperty {agentIdentifier = newValue, ..}