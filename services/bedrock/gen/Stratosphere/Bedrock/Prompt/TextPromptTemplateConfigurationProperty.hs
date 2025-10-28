module Stratosphere.Bedrock.Prompt.TextPromptTemplateConfigurationProperty (
        module Exports, TextPromptTemplateConfigurationProperty(..),
        mkTextPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.PromptInputVariableProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.TextS3LocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextPromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-textprompttemplateconfiguration.html>
    TextPromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-textprompttemplateconfiguration.html#cfn-bedrock-prompt-textprompttemplateconfiguration-inputvariables>
                                             inputVariables :: (Prelude.Maybe [PromptInputVariableProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-textprompttemplateconfiguration.html#cfn-bedrock-prompt-textprompttemplateconfiguration-text>
                                             text :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-textprompttemplateconfiguration.html#cfn-bedrock-prompt-textprompttemplateconfiguration-texts3location>
                                             textS3Location :: (Prelude.Maybe TextS3LocationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextPromptTemplateConfigurationProperty ::
  TextPromptTemplateConfigurationProperty
mkTextPromptTemplateConfigurationProperty
  = TextPromptTemplateConfigurationProperty
      {haddock_workaround_ = (), inputVariables = Prelude.Nothing,
       text = Prelude.Nothing, textS3Location = Prelude.Nothing}
instance ToResourceProperties TextPromptTemplateConfigurationProperty where
  toResourceProperties TextPromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.TextPromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputVariables" Prelude.<$> inputVariables,
                            (JSON..=) "Text" Prelude.<$> text,
                            (JSON..=) "TextS3Location" Prelude.<$> textS3Location])}
instance JSON.ToJSON TextPromptTemplateConfigurationProperty where
  toJSON TextPromptTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputVariables" Prelude.<$> inputVariables,
               (JSON..=) "Text" Prelude.<$> text,
               (JSON..=) "TextS3Location" Prelude.<$> textS3Location]))
instance Property "InputVariables" TextPromptTemplateConfigurationProperty where
  type PropertyType "InputVariables" TextPromptTemplateConfigurationProperty = [PromptInputVariableProperty]
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {inputVariables = Prelude.pure newValue, ..}
instance Property "Text" TextPromptTemplateConfigurationProperty where
  type PropertyType "Text" TextPromptTemplateConfigurationProperty = Value Prelude.Text
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {text = Prelude.pure newValue, ..}
instance Property "TextS3Location" TextPromptTemplateConfigurationProperty where
  type PropertyType "TextS3Location" TextPromptTemplateConfigurationProperty = TextS3LocationProperty
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {textS3Location = Prelude.pure newValue, ..}