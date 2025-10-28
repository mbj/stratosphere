module Stratosphere.Bedrock.Flow.AgentFlowNodeConfigurationProperty (
        AgentFlowNodeConfigurationProperty(..),
        mkAgentFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-agentflownodeconfiguration.html>
    AgentFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-agentflownodeconfiguration.html#cfn-bedrock-flow-agentflownodeconfiguration-agentaliasarn>
                                        agentAliasArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentFlowNodeConfigurationProperty ::
  Value Prelude.Text -> AgentFlowNodeConfigurationProperty
mkAgentFlowNodeConfigurationProperty agentAliasArn
  = AgentFlowNodeConfigurationProperty
      {haddock_workaround_ = (), agentAliasArn = agentAliasArn}
instance ToResourceProperties AgentFlowNodeConfigurationProperty where
  toResourceProperties AgentFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.AgentFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["AgentAliasArn" JSON..= agentAliasArn]}
instance JSON.ToJSON AgentFlowNodeConfigurationProperty where
  toJSON AgentFlowNodeConfigurationProperty {..}
    = JSON.object ["AgentAliasArn" JSON..= agentAliasArn]
instance Property "AgentAliasArn" AgentFlowNodeConfigurationProperty where
  type PropertyType "AgentAliasArn" AgentFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue AgentFlowNodeConfigurationProperty {..}
    = AgentFlowNodeConfigurationProperty {agentAliasArn = newValue, ..}