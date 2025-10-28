module Stratosphere.Bedrock.FlowVersion.TextPromptTemplateConfigurationProperty (
        module Exports, TextPromptTemplateConfigurationProperty(..),
        mkTextPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptInputVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextPromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-textprompttemplateconfiguration.html>
    TextPromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-textprompttemplateconfiguration.html#cfn-bedrock-flowversion-textprompttemplateconfiguration-inputvariables>
                                             inputVariables :: (Prelude.Maybe [PromptInputVariableProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-textprompttemplateconfiguration.html#cfn-bedrock-flowversion-textprompttemplateconfiguration-text>
                                             text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextPromptTemplateConfigurationProperty ::
  Value Prelude.Text -> TextPromptTemplateConfigurationProperty
mkTextPromptTemplateConfigurationProperty text
  = TextPromptTemplateConfigurationProperty
      {haddock_workaround_ = (), text = text,
       inputVariables = Prelude.Nothing}
instance ToResourceProperties TextPromptTemplateConfigurationProperty where
  toResourceProperties TextPromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.TextPromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Text" JSON..= text]
                           (Prelude.catMaybes
                              [(JSON..=) "InputVariables" Prelude.<$> inputVariables]))}
instance JSON.ToJSON TextPromptTemplateConfigurationProperty where
  toJSON TextPromptTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Text" JSON..= text]
              (Prelude.catMaybes
                 [(JSON..=) "InputVariables" Prelude.<$> inputVariables])))
instance Property "InputVariables" TextPromptTemplateConfigurationProperty where
  type PropertyType "InputVariables" TextPromptTemplateConfigurationProperty = [PromptInputVariableProperty]
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {inputVariables = Prelude.pure newValue, ..}
instance Property "Text" TextPromptTemplateConfigurationProperty where
  type PropertyType "Text" TextPromptTemplateConfigurationProperty = Value Prelude.Text
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty {text = newValue, ..}