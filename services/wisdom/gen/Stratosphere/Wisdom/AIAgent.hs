module Stratosphere.Wisdom.AIAgent (
        module Exports, AIAgent(..), mkAIAgent
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIAgent.AIAgentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIAgent
  = AIAgent {assistantId :: (Value Prelude.Text),
             configuration :: AIAgentConfigurationProperty,
             description :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIAgent ::
  Value Prelude.Text
  -> AIAgentConfigurationProperty -> Value Prelude.Text -> AIAgent
mkAIAgent assistantId configuration type'
  = AIAgent
      {assistantId = assistantId, configuration = configuration,
       type' = type', description = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AIAgent where
  toResourceProperties AIAgent {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIAgent", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssistantId" JSON..= assistantId,
                            "Configuration" JSON..= configuration, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AIAgent where
  toJSON AIAgent {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssistantId" JSON..= assistantId,
               "Configuration" JSON..= configuration, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssistantId" AIAgent where
  type PropertyType "AssistantId" AIAgent = Value Prelude.Text
  set newValue AIAgent {..} = AIAgent {assistantId = newValue, ..}
instance Property "Configuration" AIAgent where
  type PropertyType "Configuration" AIAgent = AIAgentConfigurationProperty
  set newValue AIAgent {..} = AIAgent {configuration = newValue, ..}
instance Property "Description" AIAgent where
  type PropertyType "Description" AIAgent = Value Prelude.Text
  set newValue AIAgent {..}
    = AIAgent {description = Prelude.pure newValue, ..}
instance Property "Name" AIAgent where
  type PropertyType "Name" AIAgent = Value Prelude.Text
  set newValue AIAgent {..}
    = AIAgent {name = Prelude.pure newValue, ..}
instance Property "Tags" AIAgent where
  type PropertyType "Tags" AIAgent = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AIAgent {..}
    = AIAgent {tags = Prelude.pure newValue, ..}
instance Property "Type" AIAgent where
  type PropertyType "Type" AIAgent = Value Prelude.Text
  set newValue AIAgent {..} = AIAgent {type' = newValue, ..}