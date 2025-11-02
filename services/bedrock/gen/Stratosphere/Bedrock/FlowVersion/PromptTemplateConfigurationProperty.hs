module Stratosphere.Bedrock.FlowVersion.PromptTemplateConfigurationProperty (
        module Exports, PromptTemplateConfigurationProperty(..),
        mkPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.TextPromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-prompttemplateconfiguration.html>
    PromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-prompttemplateconfiguration.html#cfn-bedrock-flowversion-prompttemplateconfiguration-text>
                                         text :: TextPromptTemplateConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptTemplateConfigurationProperty ::
  TextPromptTemplateConfigurationProperty
  -> PromptTemplateConfigurationProperty
mkPromptTemplateConfigurationProperty text
  = PromptTemplateConfigurationProperty
      {haddock_workaround_ = (), text = text}
instance ToResourceProperties PromptTemplateConfigurationProperty where
  toResourceProperties PromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.PromptTemplateConfiguration",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON PromptTemplateConfigurationProperty where
  toJSON PromptTemplateConfigurationProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" PromptTemplateConfigurationProperty where
  type PropertyType "Text" PromptTemplateConfigurationProperty = TextPromptTemplateConfigurationProperty
  set newValue PromptTemplateConfigurationProperty {..}
    = PromptTemplateConfigurationProperty {text = newValue, ..}