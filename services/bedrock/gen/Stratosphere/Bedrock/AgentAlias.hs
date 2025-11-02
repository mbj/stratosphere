module Stratosphere.Bedrock.AgentAlias (
        module Exports, AgentAlias(..), mkAgentAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.AgentAlias.AgentAliasRoutingConfigurationListItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentAlias
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html>
    AgentAlias {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html#cfn-bedrock-agentalias-agentaliasname>
                agentAliasName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html#cfn-bedrock-agentalias-agentid>
                agentId :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html#cfn-bedrock-agentalias-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html#cfn-bedrock-agentalias-routingconfiguration>
                routingConfiguration :: (Prelude.Maybe [AgentAliasRoutingConfigurationListItemProperty]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agentalias.html#cfn-bedrock-agentalias-tags>
                tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentAlias ::
  Value Prelude.Text -> Value Prelude.Text -> AgentAlias
mkAgentAlias agentAliasName agentId
  = AgentAlias
      {haddock_workaround_ = (), agentAliasName = agentAliasName,
       agentId = agentId, description = Prelude.Nothing,
       routingConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AgentAlias where
  toResourceProperties AgentAlias {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AgentAlias", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentAliasName" JSON..= agentAliasName,
                            "AgentId" JSON..= agentId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RoutingConfiguration" Prelude.<$> routingConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AgentAlias where
  toJSON AgentAlias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentAliasName" JSON..= agentAliasName,
               "AgentId" JSON..= agentId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RoutingConfiguration" Prelude.<$> routingConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AgentAliasName" AgentAlias where
  type PropertyType "AgentAliasName" AgentAlias = Value Prelude.Text
  set newValue AgentAlias {..}
    = AgentAlias {agentAliasName = newValue, ..}
instance Property "AgentId" AgentAlias where
  type PropertyType "AgentId" AgentAlias = Value Prelude.Text
  set newValue AgentAlias {..} = AgentAlias {agentId = newValue, ..}
instance Property "Description" AgentAlias where
  type PropertyType "Description" AgentAlias = Value Prelude.Text
  set newValue AgentAlias {..}
    = AgentAlias {description = Prelude.pure newValue, ..}
instance Property "RoutingConfiguration" AgentAlias where
  type PropertyType "RoutingConfiguration" AgentAlias = [AgentAliasRoutingConfigurationListItemProperty]
  set newValue AgentAlias {..}
    = AgentAlias {routingConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" AgentAlias where
  type PropertyType "Tags" AgentAlias = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AgentAlias {..}
    = AgentAlias {tags = Prelude.pure newValue, ..}