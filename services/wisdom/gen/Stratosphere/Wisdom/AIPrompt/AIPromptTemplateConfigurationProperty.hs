module Stratosphere.Wisdom.AIPrompt.AIPromptTemplateConfigurationProperty (
        module Exports, AIPromptTemplateConfigurationProperty(..),
        mkAIPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIPrompt.TextFullAIPromptEditTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data AIPromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-aiprompttemplateconfiguration.html>
    AIPromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-aiprompttemplateconfiguration.html#cfn-wisdom-aiprompt-aiprompttemplateconfiguration-textfullaipromptedittemplateconfiguration>
                                           textFullAIPromptEditTemplateConfiguration :: TextFullAIPromptEditTemplateConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIPromptTemplateConfigurationProperty ::
  TextFullAIPromptEditTemplateConfigurationProperty
  -> AIPromptTemplateConfigurationProperty
mkAIPromptTemplateConfigurationProperty
  textFullAIPromptEditTemplateConfiguration
  = AIPromptTemplateConfigurationProperty
      {haddock_workaround_ = (),
       textFullAIPromptEditTemplateConfiguration = textFullAIPromptEditTemplateConfiguration}
instance ToResourceProperties AIPromptTemplateConfigurationProperty where
  toResourceProperties AIPromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIPrompt.AIPromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = ["TextFullAIPromptEditTemplateConfiguration"
                         JSON..= textFullAIPromptEditTemplateConfiguration]}
instance JSON.ToJSON AIPromptTemplateConfigurationProperty where
  toJSON AIPromptTemplateConfigurationProperty {..}
    = JSON.object
        ["TextFullAIPromptEditTemplateConfiguration"
           JSON..= textFullAIPromptEditTemplateConfiguration]
instance Property "TextFullAIPromptEditTemplateConfiguration" AIPromptTemplateConfigurationProperty where
  type PropertyType "TextFullAIPromptEditTemplateConfiguration" AIPromptTemplateConfigurationProperty = TextFullAIPromptEditTemplateConfigurationProperty
  set newValue AIPromptTemplateConfigurationProperty {..}
    = AIPromptTemplateConfigurationProperty
        {textFullAIPromptEditTemplateConfiguration = newValue, ..}