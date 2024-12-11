module Stratosphere.Bedrock.Agent (
        module Exports, Agent(..), mkAgent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentActionGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.AgentKnowledgeBaseProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.GuardrailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.PromptOverrideConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Agent
  = Agent {actionGroups :: (Prelude.Maybe [AgentActionGroupProperty]),
           agentName :: (Value Prelude.Text),
           agentResourceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
           autoPrepare :: (Prelude.Maybe (Value Prelude.Bool)),
           customerEncryptionKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
           description :: (Prelude.Maybe (Value Prelude.Text)),
           foundationModel :: (Prelude.Maybe (Value Prelude.Text)),
           guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
           idleSessionTTLInSeconds :: (Prelude.Maybe (Value Prelude.Double)),
           instruction :: (Prelude.Maybe (Value Prelude.Text)),
           knowledgeBases :: (Prelude.Maybe [AgentKnowledgeBaseProperty]),
           promptOverrideConfiguration :: (Prelude.Maybe PromptOverrideConfigurationProperty),
           skipResourceInUseCheckOnDelete :: (Prelude.Maybe (Value Prelude.Bool)),
           tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           testAliasTags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgent :: Value Prelude.Text -> Agent
mkAgent agentName
  = Agent
      {agentName = agentName, actionGroups = Prelude.Nothing,
       agentResourceRoleArn = Prelude.Nothing,
       autoPrepare = Prelude.Nothing,
       customerEncryptionKeyArn = Prelude.Nothing,
       description = Prelude.Nothing, foundationModel = Prelude.Nothing,
       guardrailConfiguration = Prelude.Nothing,
       idleSessionTTLInSeconds = Prelude.Nothing,
       instruction = Prelude.Nothing, knowledgeBases = Prelude.Nothing,
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
                               (JSON..=) "AgentResourceRoleArn" Prelude.<$> agentResourceRoleArn,
                               (JSON..=) "AutoPrepare" Prelude.<$> autoPrepare,
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
                  (JSON..=) "AgentResourceRoleArn" Prelude.<$> agentResourceRoleArn,
                  (JSON..=) "AutoPrepare" Prelude.<$> autoPrepare,
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