module Stratosphere.Bedrock.Agent.AgentDescriptorProperty (
        AgentDescriptorProperty(..), mkAgentDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentdescriptor.html>
    AgentDescriptorProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentdescriptor.html#cfn-bedrock-agent-agentdescriptor-aliasarn>
                             aliasArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentDescriptorProperty :: AgentDescriptorProperty
mkAgentDescriptorProperty
  = AgentDescriptorProperty
      {haddock_workaround_ = (), aliasArn = Prelude.Nothing}
instance ToResourceProperties AgentDescriptorProperty where
  toResourceProperties AgentDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.AgentDescriptor",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "AliasArn" Prelude.<$> aliasArn])}
instance JSON.ToJSON AgentDescriptorProperty where
  toJSON AgentDescriptorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "AliasArn" Prelude.<$> aliasArn]))
instance Property "AliasArn" AgentDescriptorProperty where
  type PropertyType "AliasArn" AgentDescriptorProperty = Value Prelude.Text
  set newValue AgentDescriptorProperty {..}
    = AgentDescriptorProperty {aliasArn = Prelude.pure newValue, ..}