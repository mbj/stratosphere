module Stratosphere.Bedrock.AgentAlias.AgentAliasRoutingConfigurationListItemProperty (
        AgentAliasRoutingConfigurationListItemProperty(..),
        mkAgentAliasRoutingConfigurationListItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentAliasRoutingConfigurationListItemProperty
  = AgentAliasRoutingConfigurationListItemProperty {agentVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentAliasRoutingConfigurationListItemProperty ::
  Value Prelude.Text
  -> AgentAliasRoutingConfigurationListItemProperty
mkAgentAliasRoutingConfigurationListItemProperty agentVersion
  = AgentAliasRoutingConfigurationListItemProperty
      {agentVersion = agentVersion}
instance ToResourceProperties AgentAliasRoutingConfigurationListItemProperty where
  toResourceProperties
    AgentAliasRoutingConfigurationListItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AgentAlias.AgentAliasRoutingConfigurationListItem",
         supportsTags = Prelude.False,
         properties = ["AgentVersion" JSON..= agentVersion]}
instance JSON.ToJSON AgentAliasRoutingConfigurationListItemProperty where
  toJSON AgentAliasRoutingConfigurationListItemProperty {..}
    = JSON.object ["AgentVersion" JSON..= agentVersion]
instance Property "AgentVersion" AgentAliasRoutingConfigurationListItemProperty where
  type PropertyType "AgentVersion" AgentAliasRoutingConfigurationListItemProperty = Value Prelude.Text
  set newValue AgentAliasRoutingConfigurationListItemProperty {}
    = AgentAliasRoutingConfigurationListItemProperty
        {agentVersion = newValue, ..}