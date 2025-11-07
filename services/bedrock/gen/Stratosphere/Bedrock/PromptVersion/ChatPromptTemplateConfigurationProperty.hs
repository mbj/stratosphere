module Stratosphere.Bedrock.PromptVersion.ChatPromptTemplateConfigurationProperty (
        module Exports, ChatPromptTemplateConfigurationProperty(..),
        mkChatPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.MessageProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptInputVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.SystemContentBlockProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.ToolConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ChatPromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-chatprompttemplateconfiguration.html>
    ChatPromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-chatprompttemplateconfiguration.html#cfn-bedrock-promptversion-chatprompttemplateconfiguration-inputvariables>
                                             inputVariables :: (Prelude.Maybe [PromptInputVariableProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-chatprompttemplateconfiguration.html#cfn-bedrock-promptversion-chatprompttemplateconfiguration-messages>
                                             messages :: [MessageProperty],
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-chatprompttemplateconfiguration.html#cfn-bedrock-promptversion-chatprompttemplateconfiguration-system>
                                             system :: (Prelude.Maybe [SystemContentBlockProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-chatprompttemplateconfiguration.html#cfn-bedrock-promptversion-chatprompttemplateconfiguration-toolconfiguration>
                                             toolConfiguration :: (Prelude.Maybe ToolConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChatPromptTemplateConfigurationProperty ::
  [MessageProperty] -> ChatPromptTemplateConfigurationProperty
mkChatPromptTemplateConfigurationProperty messages
  = ChatPromptTemplateConfigurationProperty
      {haddock_workaround_ = (), messages = messages,
       inputVariables = Prelude.Nothing, system = Prelude.Nothing,
       toolConfiguration = Prelude.Nothing}
instance ToResourceProperties ChatPromptTemplateConfigurationProperty where
  toResourceProperties ChatPromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.ChatPromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Messages" JSON..= messages]
                           (Prelude.catMaybes
                              [(JSON..=) "InputVariables" Prelude.<$> inputVariables,
                               (JSON..=) "System" Prelude.<$> system,
                               (JSON..=) "ToolConfiguration" Prelude.<$> toolConfiguration]))}
instance JSON.ToJSON ChatPromptTemplateConfigurationProperty where
  toJSON ChatPromptTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Messages" JSON..= messages]
              (Prelude.catMaybes
                 [(JSON..=) "InputVariables" Prelude.<$> inputVariables,
                  (JSON..=) "System" Prelude.<$> system,
                  (JSON..=) "ToolConfiguration" Prelude.<$> toolConfiguration])))
instance Property "InputVariables" ChatPromptTemplateConfigurationProperty where
  type PropertyType "InputVariables" ChatPromptTemplateConfigurationProperty = [PromptInputVariableProperty]
  set newValue ChatPromptTemplateConfigurationProperty {..}
    = ChatPromptTemplateConfigurationProperty
        {inputVariables = Prelude.pure newValue, ..}
instance Property "Messages" ChatPromptTemplateConfigurationProperty where
  type PropertyType "Messages" ChatPromptTemplateConfigurationProperty = [MessageProperty]
  set newValue ChatPromptTemplateConfigurationProperty {..}
    = ChatPromptTemplateConfigurationProperty {messages = newValue, ..}
instance Property "System" ChatPromptTemplateConfigurationProperty where
  type PropertyType "System" ChatPromptTemplateConfigurationProperty = [SystemContentBlockProperty]
  set newValue ChatPromptTemplateConfigurationProperty {..}
    = ChatPromptTemplateConfigurationProperty
        {system = Prelude.pure newValue, ..}
instance Property "ToolConfiguration" ChatPromptTemplateConfigurationProperty where
  type PropertyType "ToolConfiguration" ChatPromptTemplateConfigurationProperty = ToolConfigurationProperty
  set newValue ChatPromptTemplateConfigurationProperty {..}
    = ChatPromptTemplateConfigurationProperty
        {toolConfiguration = Prelude.pure newValue, ..}