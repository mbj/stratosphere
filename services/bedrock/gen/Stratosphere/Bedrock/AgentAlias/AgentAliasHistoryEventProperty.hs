module Stratosphere.Bedrock.AgentAlias.AgentAliasHistoryEventProperty (
        module Exports, AgentAliasHistoryEventProperty(..),
        mkAgentAliasHistoryEventProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.AgentAlias.AgentAliasRoutingConfigurationListItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentAliasHistoryEventProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agentalias-agentaliashistoryevent.html>
    AgentAliasHistoryEventProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agentalias-agentaliashistoryevent.html#cfn-bedrock-agentalias-agentaliashistoryevent-enddate>
                                    endDate :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agentalias-agentaliashistoryevent.html#cfn-bedrock-agentalias-agentaliashistoryevent-routingconfiguration>
                                    routingConfiguration :: (Prelude.Maybe [AgentAliasRoutingConfigurationListItemProperty]),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agentalias-agentaliashistoryevent.html#cfn-bedrock-agentalias-agentaliashistoryevent-startdate>
                                    startDate :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentAliasHistoryEventProperty :: AgentAliasHistoryEventProperty
mkAgentAliasHistoryEventProperty
  = AgentAliasHistoryEventProperty
      {haddock_workaround_ = (), endDate = Prelude.Nothing,
       routingConfiguration = Prelude.Nothing,
       startDate = Prelude.Nothing}
instance ToResourceProperties AgentAliasHistoryEventProperty where
  toResourceProperties AgentAliasHistoryEventProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::AgentAlias.AgentAliasHistoryEvent",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndDate" Prelude.<$> endDate,
                            (JSON..=) "RoutingConfiguration" Prelude.<$> routingConfiguration,
                            (JSON..=) "StartDate" Prelude.<$> startDate])}
instance JSON.ToJSON AgentAliasHistoryEventProperty where
  toJSON AgentAliasHistoryEventProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndDate" Prelude.<$> endDate,
               (JSON..=) "RoutingConfiguration" Prelude.<$> routingConfiguration,
               (JSON..=) "StartDate" Prelude.<$> startDate]))
instance Property "EndDate" AgentAliasHistoryEventProperty where
  type PropertyType "EndDate" AgentAliasHistoryEventProperty = Value Prelude.Text
  set newValue AgentAliasHistoryEventProperty {..}
    = AgentAliasHistoryEventProperty
        {endDate = Prelude.pure newValue, ..}
instance Property "RoutingConfiguration" AgentAliasHistoryEventProperty where
  type PropertyType "RoutingConfiguration" AgentAliasHistoryEventProperty = [AgentAliasRoutingConfigurationListItemProperty]
  set newValue AgentAliasHistoryEventProperty {..}
    = AgentAliasHistoryEventProperty
        {routingConfiguration = Prelude.pure newValue, ..}
instance Property "StartDate" AgentAliasHistoryEventProperty where
  type PropertyType "StartDate" AgentAliasHistoryEventProperty = Value Prelude.Text
  set newValue AgentAliasHistoryEventProperty {..}
    = AgentAliasHistoryEventProperty
        {startDate = Prelude.pure newValue, ..}