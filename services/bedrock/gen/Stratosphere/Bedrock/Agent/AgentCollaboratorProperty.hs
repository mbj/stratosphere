module Stratosphere.Bedrock.Agent.AgentCollaboratorProperty (
        module Exports, AgentCollaboratorProperty(..),
        mkAgentCollaboratorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentDescriptorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentCollaboratorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentcollaborator.html>
    AgentCollaboratorProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentcollaborator.html#cfn-bedrock-agent-agentcollaborator-agentdescriptor>
                               agentDescriptor :: AgentDescriptorProperty,
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentcollaborator.html#cfn-bedrock-agent-agentcollaborator-collaborationinstruction>
                               collaborationInstruction :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentcollaborator.html#cfn-bedrock-agent-agentcollaborator-collaboratorname>
                               collaboratorName :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-agentcollaborator.html#cfn-bedrock-agent-agentcollaborator-relayconversationhistory>
                               relayConversationHistory :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentCollaboratorProperty ::
  AgentDescriptorProperty
  -> Value Prelude.Text
     -> Value Prelude.Text -> AgentCollaboratorProperty
mkAgentCollaboratorProperty
  agentDescriptor
  collaborationInstruction
  collaboratorName
  = AgentCollaboratorProperty
      {haddock_workaround_ = (), agentDescriptor = agentDescriptor,
       collaborationInstruction = collaborationInstruction,
       collaboratorName = collaboratorName,
       relayConversationHistory = Prelude.Nothing}
instance ToResourceProperties AgentCollaboratorProperty where
  toResourceProperties AgentCollaboratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.AgentCollaborator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentDescriptor" JSON..= agentDescriptor,
                            "CollaborationInstruction" JSON..= collaborationInstruction,
                            "CollaboratorName" JSON..= collaboratorName]
                           (Prelude.catMaybes
                              [(JSON..=) "RelayConversationHistory"
                                 Prelude.<$> relayConversationHistory]))}
instance JSON.ToJSON AgentCollaboratorProperty where
  toJSON AgentCollaboratorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentDescriptor" JSON..= agentDescriptor,
               "CollaborationInstruction" JSON..= collaborationInstruction,
               "CollaboratorName" JSON..= collaboratorName]
              (Prelude.catMaybes
                 [(JSON..=) "RelayConversationHistory"
                    Prelude.<$> relayConversationHistory])))
instance Property "AgentDescriptor" AgentCollaboratorProperty where
  type PropertyType "AgentDescriptor" AgentCollaboratorProperty = AgentDescriptorProperty
  set newValue AgentCollaboratorProperty {..}
    = AgentCollaboratorProperty {agentDescriptor = newValue, ..}
instance Property "CollaborationInstruction" AgentCollaboratorProperty where
  type PropertyType "CollaborationInstruction" AgentCollaboratorProperty = Value Prelude.Text
  set newValue AgentCollaboratorProperty {..}
    = AgentCollaboratorProperty
        {collaborationInstruction = newValue, ..}
instance Property "CollaboratorName" AgentCollaboratorProperty where
  type PropertyType "CollaboratorName" AgentCollaboratorProperty = Value Prelude.Text
  set newValue AgentCollaboratorProperty {..}
    = AgentCollaboratorProperty {collaboratorName = newValue, ..}
instance Property "RelayConversationHistory" AgentCollaboratorProperty where
  type PropertyType "RelayConversationHistory" AgentCollaboratorProperty = Value Prelude.Text
  set newValue AgentCollaboratorProperty {..}
    = AgentCollaboratorProperty
        {relayConversationHistory = Prelude.pure newValue, ..}