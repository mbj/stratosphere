module Stratosphere.Bedrock.Agent.AgentKnowledgeBaseProperty (
        AgentKnowledgeBaseProperty(..), mkAgentKnowledgeBaseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AgentKnowledgeBaseProperty
  = AgentKnowledgeBaseProperty {description :: (Value Prelude.Text),
                                knowledgeBaseId :: (Value Prelude.Text),
                                knowledgeBaseState :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgentKnowledgeBaseProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AgentKnowledgeBaseProperty
mkAgentKnowledgeBaseProperty description knowledgeBaseId
  = AgentKnowledgeBaseProperty
      {description = description, knowledgeBaseId = knowledgeBaseId,
       knowledgeBaseState = Prelude.Nothing}
instance ToResourceProperties AgentKnowledgeBaseProperty where
  toResourceProperties AgentKnowledgeBaseProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.AgentKnowledgeBase",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description,
                            "KnowledgeBaseId" JSON..= knowledgeBaseId]
                           (Prelude.catMaybes
                              [(JSON..=) "KnowledgeBaseState" Prelude.<$> knowledgeBaseState]))}
instance JSON.ToJSON AgentKnowledgeBaseProperty where
  toJSON AgentKnowledgeBaseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description,
               "KnowledgeBaseId" JSON..= knowledgeBaseId]
              (Prelude.catMaybes
                 [(JSON..=) "KnowledgeBaseState" Prelude.<$> knowledgeBaseState])))
instance Property "Description" AgentKnowledgeBaseProperty where
  type PropertyType "Description" AgentKnowledgeBaseProperty = Value Prelude.Text
  set newValue AgentKnowledgeBaseProperty {..}
    = AgentKnowledgeBaseProperty {description = newValue, ..}
instance Property "KnowledgeBaseId" AgentKnowledgeBaseProperty where
  type PropertyType "KnowledgeBaseId" AgentKnowledgeBaseProperty = Value Prelude.Text
  set newValue AgentKnowledgeBaseProperty {..}
    = AgentKnowledgeBaseProperty {knowledgeBaseId = newValue, ..}
instance Property "KnowledgeBaseState" AgentKnowledgeBaseProperty where
  type PropertyType "KnowledgeBaseState" AgentKnowledgeBaseProperty = Value Prelude.Text
  set newValue AgentKnowledgeBaseProperty {..}
    = AgentKnowledgeBaseProperty
        {knowledgeBaseState = Prelude.pure newValue, ..}