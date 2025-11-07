module Stratosphere.Bedrock.PromptVersion.TextPromptTemplateConfigurationProperty (
        module Exports, TextPromptTemplateConfigurationProperty(..),
        mkTextPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.CachePointBlockProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptInputVariableProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextPromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-textprompttemplateconfiguration.html>
    TextPromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-textprompttemplateconfiguration.html#cfn-bedrock-promptversion-textprompttemplateconfiguration-cachepoint>
                                             cachePoint :: (Prelude.Maybe CachePointBlockProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-textprompttemplateconfiguration.html#cfn-bedrock-promptversion-textprompttemplateconfiguration-inputvariables>
                                             inputVariables :: (Prelude.Maybe [PromptInputVariableProperty]),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-textprompttemplateconfiguration.html#cfn-bedrock-promptversion-textprompttemplateconfiguration-text>
                                             text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextPromptTemplateConfigurationProperty ::
  Value Prelude.Text -> TextPromptTemplateConfigurationProperty
mkTextPromptTemplateConfigurationProperty text
  = TextPromptTemplateConfigurationProperty
      {haddock_workaround_ = (), text = text,
       cachePoint = Prelude.Nothing, inputVariables = Prelude.Nothing}
instance ToResourceProperties TextPromptTemplateConfigurationProperty where
  toResourceProperties TextPromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.TextPromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Text" JSON..= text]
                           (Prelude.catMaybes
                              [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
                               (JSON..=) "InputVariables" Prelude.<$> inputVariables]))}
instance JSON.ToJSON TextPromptTemplateConfigurationProperty where
  toJSON TextPromptTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Text" JSON..= text]
              (Prelude.catMaybes
                 [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
                  (JSON..=) "InputVariables" Prelude.<$> inputVariables])))
instance Property "CachePoint" TextPromptTemplateConfigurationProperty where
  type PropertyType "CachePoint" TextPromptTemplateConfigurationProperty = CachePointBlockProperty
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {cachePoint = Prelude.pure newValue, ..}
instance Property "InputVariables" TextPromptTemplateConfigurationProperty where
  type PropertyType "InputVariables" TextPromptTemplateConfigurationProperty = [PromptInputVariableProperty]
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty
        {inputVariables = Prelude.pure newValue, ..}
instance Property "Text" TextPromptTemplateConfigurationProperty where
  type PropertyType "Text" TextPromptTemplateConfigurationProperty = Value Prelude.Text
  set newValue TextPromptTemplateConfigurationProperty {..}
    = TextPromptTemplateConfigurationProperty {text = newValue, ..}