module Stratosphere.Bedrock.Agent (
        module Exports, Agent(..), mkAgent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentActionGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentCollaboratorProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentKnowledgeBaseProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.CustomOrchestrationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.GuardrailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.MemoryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.PromptOverrideConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Agent
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html>
    Agent {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-actiongroups>
           actionGroups :: (Prelude.Maybe [AgentActionGroupProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-agentcollaboration>
           agentCollaboration :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-agentcollaborators>
           agentCollaborators :: (Prelude.Maybe [AgentCollaboratorProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-agentname>
           agentName :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-agentresourcerolearn>
           agentResourceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-autoprepare>
           autoPrepare :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-customorchestration>
           customOrchestration :: (Prelude.Maybe CustomOrchestrationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-customerencryptionkeyarn>
           customerEncryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-foundationmodel>
           foundationModel :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-guardrailconfiguration>
           guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-idlesessionttlinseconds>
           idleSessionTTLInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-instruction>
           instruction :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-knowledgebases>
           knowledgeBases :: (Prelude.Maybe [AgentKnowledgeBaseProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-memoryconfiguration>
           memoryConfiguration :: (Prelude.Maybe MemoryConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-orchestrationtype>
           orchestrationType :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-promptoverrideconfiguration>
           promptOverrideConfiguration :: (Prelude.Maybe PromptOverrideConfigurationProperty),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-skipresourceinusecheckondelete>
           skipResourceInUseCheckOnDelete :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-tags>
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrock-agent.html#cfn-bedrock-agent-testaliastags>
           testAliasTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgent :: Value Prelude.Text -> Agent
mkAgent agentName
  = Agent
      {haddock_workaround_ = (), agentName = agentName,
       actionGroups = Prelude.Nothing,
       agentCollaboration = Prelude.Nothing,
       agentCollaborators = Prelude.Nothing,
       agentResourceRoleArn = Prelude.Nothing,
       autoPrepare = Prelude.Nothing,
       customOrchestration = Prelude.Nothing,
       customerEncryptionKeyArn = Prelude.Nothing,
       description = Prelude.Nothing, foundationModel = Prelude.Nothing,
       guardrailConfiguration = Prelude.Nothing,
       idleSessionTTLInSeconds = Prelude.Nothing,
       instruction = Prelude.Nothing, knowledgeBases = Prelude.Nothing,
       memoryConfiguration = Prelude.Nothing,
       orchestrationType = Prelude.Nothing,
       promptOverrideConfiguration = Prelude.Nothing,
       skipResourceInUseCheckOnDelete = Prelude.Nothing,
       tags = Prelude.Nothing, testAliasTags = Prelude.Nothing}
instance ToResourceProperties Agent where
  toResourceProperties Agent {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AgentName" JSON..= agentName]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionGroups" Prelude.<$> actionGroups,
                               (JSON..=) "AgentCollaboration" Prelude.<$> agentCollaboration,
                               (JSON..=) "AgentCollaborators" Prelude.<$> agentCollaborators,
                               (JSON..=) "AgentResourceRoleArn" Prelude.<$> agentResourceRoleArn,
                               (JSON..=) "AutoPrepare" Prelude.<$> autoPrepare,
                               (JSON..=) "CustomOrchestration" Prelude.<$> customOrchestration,
                               (JSON..=) "CustomerEncryptionKeyArn"
                                 Prelude.<$> customerEncryptionKeyArn,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FoundationModel" Prelude.<$> foundationModel,
                               (JSON..=) "GuardrailConfiguration"
                                 Prelude.<$> guardrailConfiguration,
                               (JSON..=) "IdleSessionTTLInSeconds"
                                 Prelude.<$> idleSessionTTLInSeconds,
                               (JSON..=) "Instruction" Prelude.<$> instruction,
                               (JSON..=) "KnowledgeBases" Prelude.<$> knowledgeBases,
                               (JSON..=) "MemoryConfiguration" Prelude.<$> memoryConfiguration,
                               (JSON..=) "OrchestrationType" Prelude.<$> orchestrationType,
                               (JSON..=) "PromptOverrideConfiguration"
                                 Prelude.<$> promptOverrideConfiguration,
                               (JSON..=) "SkipResourceInUseCheckOnDelete"
                                 Prelude.<$> skipResourceInUseCheckOnDelete,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TestAliasTags" Prelude.<$> testAliasTags]))}
instance JSON.ToJSON Agent where
  toJSON Agent {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AgentName" JSON..= agentName]
              (Prelude.catMaybes
                 [(JSON..=) "ActionGroups" Prelude.<$> actionGroups,
                  (JSON..=) "AgentCollaboration" Prelude.<$> agentCollaboration,
                  (JSON..=) "AgentCollaborators" Prelude.<$> agentCollaborators,
                  (JSON..=) "AgentResourceRoleArn" Prelude.<$> agentResourceRoleArn,
                  (JSON..=) "AutoPrepare" Prelude.<$> autoPrepare,
                  (JSON..=) "CustomOrchestration" Prelude.<$> customOrchestration,
                  (JSON..=) "CustomerEncryptionKeyArn"
                    Prelude.<$> customerEncryptionKeyArn,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FoundationModel" Prelude.<$> foundationModel,
                  (JSON..=) "GuardrailConfiguration"
                    Prelude.<$> guardrailConfiguration,
                  (JSON..=) "IdleSessionTTLInSeconds"
                    Prelude.<$> idleSessionTTLInSeconds,
                  (JSON..=) "Instruction" Prelude.<$> instruction,
                  (JSON..=) "KnowledgeBases" Prelude.<$> knowledgeBases,
                  (JSON..=) "MemoryConfiguration" Prelude.<$> memoryConfiguration,
                  (JSON..=) "OrchestrationType" Prelude.<$> orchestrationType,
                  (JSON..=) "PromptOverrideConfiguration"
                    Prelude.<$> promptOverrideConfiguration,
                  (JSON..=) "SkipResourceInUseCheckOnDelete"
                    Prelude.<$> skipResourceInUseCheckOnDelete,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TestAliasTags" Prelude.<$> testAliasTags])))
instance Property "ActionGroups" Agent where
  type PropertyType "ActionGroups" Agent = [AgentActionGroupProperty]
  set newValue Agent {..}
    = Agent {actionGroups = Prelude.pure newValue, ..}
instance Property "AgentCollaboration" Agent where
  type PropertyType "AgentCollaboration" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {agentCollaboration = Prelude.pure newValue, ..}
instance Property "AgentCollaborators" Agent where
  type PropertyType "AgentCollaborators" Agent = [AgentCollaboratorProperty]
  set newValue Agent {..}
    = Agent {agentCollaborators = Prelude.pure newValue, ..}
instance Property "AgentName" Agent where
  type PropertyType "AgentName" Agent = Value Prelude.Text
  set newValue Agent {..} = Agent {agentName = newValue, ..}
instance Property "AgentResourceRoleArn" Agent where
  type PropertyType "AgentResourceRoleArn" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {agentResourceRoleArn = Prelude.pure newValue, ..}
instance Property "AutoPrepare" Agent where
  type PropertyType "AutoPrepare" Agent = Value Prelude.Bool
  set newValue Agent {..}
    = Agent {autoPrepare = Prelude.pure newValue, ..}
instance Property "CustomOrchestration" Agent where
  type PropertyType "CustomOrchestration" Agent = CustomOrchestrationProperty
  set newValue Agent {..}
    = Agent {customOrchestration = Prelude.pure newValue, ..}
instance Property "CustomerEncryptionKeyArn" Agent where
  type PropertyType "CustomerEncryptionKeyArn" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {customerEncryptionKeyArn = Prelude.pure newValue, ..}
instance Property "Description" Agent where
  type PropertyType "Description" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {description = Prelude.pure newValue, ..}
instance Property "FoundationModel" Agent where
  type PropertyType "FoundationModel" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {foundationModel = Prelude.pure newValue, ..}
instance Property "GuardrailConfiguration" Agent where
  type PropertyType "GuardrailConfiguration" Agent = GuardrailConfigurationProperty
  set newValue Agent {..}
    = Agent {guardrailConfiguration = Prelude.pure newValue, ..}
instance Property "IdleSessionTTLInSeconds" Agent where
  type PropertyType "IdleSessionTTLInSeconds" Agent = Value Prelude.Double
  set newValue Agent {..}
    = Agent {idleSessionTTLInSeconds = Prelude.pure newValue, ..}
instance Property "Instruction" Agent where
  type PropertyType "Instruction" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {instruction = Prelude.pure newValue, ..}
instance Property "KnowledgeBases" Agent where
  type PropertyType "KnowledgeBases" Agent = [AgentKnowledgeBaseProperty]
  set newValue Agent {..}
    = Agent {knowledgeBases = Prelude.pure newValue, ..}
instance Property "MemoryConfiguration" Agent where
  type PropertyType "MemoryConfiguration" Agent = MemoryConfigurationProperty
  set newValue Agent {..}
    = Agent {memoryConfiguration = Prelude.pure newValue, ..}
instance Property "OrchestrationType" Agent where
  type PropertyType "OrchestrationType" Agent = Value Prelude.Text
  set newValue Agent {..}
    = Agent {orchestrationType = Prelude.pure newValue, ..}
instance Property "PromptOverrideConfiguration" Agent where
  type PropertyType "PromptOverrideConfiguration" Agent = PromptOverrideConfigurationProperty
  set newValue Agent {..}
    = Agent {promptOverrideConfiguration = Prelude.pure newValue, ..}
instance Property "SkipResourceInUseCheckOnDelete" Agent where
  type PropertyType "SkipResourceInUseCheckOnDelete" Agent = Value Prelude.Bool
  set newValue Agent {..}
    = Agent
        {skipResourceInUseCheckOnDelete = Prelude.pure newValue, ..}
instance Property "Tags" Agent where
  type PropertyType "Tags" Agent = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Agent {..} = Agent {tags = Prelude.pure newValue, ..}
instance Property "TestAliasTags" Agent where
  type PropertyType "TestAliasTags" Agent = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Agent {..}
    = Agent {testAliasTags = Prelude.pure newValue, ..}