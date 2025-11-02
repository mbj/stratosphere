module Stratosphere.Wisdom.AIPrompt.TextFullAIPromptEditTemplateConfigurationProperty (
        TextFullAIPromptEditTemplateConfigurationProperty(..),
        mkTextFullAIPromptEditTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TextFullAIPromptEditTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-textfullaipromptedittemplateconfiguration.html>
    TextFullAIPromptEditTemplateConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-aiprompt-textfullaipromptedittemplateconfiguration.html#cfn-wisdom-aiprompt-textfullaipromptedittemplateconfiguration-text>
                                                       text :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTextFullAIPromptEditTemplateConfigurationProperty ::
  Value Prelude.Text
  -> TextFullAIPromptEditTemplateConfigurationProperty
mkTextFullAIPromptEditTemplateConfigurationProperty text
  = TextFullAIPromptEditTemplateConfigurationProperty
      {haddock_workaround_ = (), text = text}
instance ToResourceProperties TextFullAIPromptEditTemplateConfigurationProperty where
  toResourceProperties
    TextFullAIPromptEditTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIPrompt.TextFullAIPromptEditTemplateConfiguration",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON TextFullAIPromptEditTemplateConfigurationProperty where
  toJSON TextFullAIPromptEditTemplateConfigurationProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" TextFullAIPromptEditTemplateConfigurationProperty where
  type PropertyType "Text" TextFullAIPromptEditTemplateConfigurationProperty = Value Prelude.Text
  set newValue TextFullAIPromptEditTemplateConfigurationProperty {..}
    = TextFullAIPromptEditTemplateConfigurationProperty
        {text = newValue, ..}