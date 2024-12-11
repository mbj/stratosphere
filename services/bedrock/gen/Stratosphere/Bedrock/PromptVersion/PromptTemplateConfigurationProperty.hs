module Stratosphere.Bedrock.PromptVersion.PromptTemplateConfigurationProperty (
        module Exports, PromptTemplateConfigurationProperty(..),
        mkPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.TextPromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptTemplateConfigurationProperty
  = PromptTemplateConfigurationProperty {text :: TextPromptTemplateConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptTemplateConfigurationProperty ::
  TextPromptTemplateConfigurationProperty
  -> PromptTemplateConfigurationProperty
mkPromptTemplateConfigurationProperty text
  = PromptTemplateConfigurationProperty {text = text}
instance ToResourceProperties PromptTemplateConfigurationProperty where
  toResourceProperties PromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptTemplateConfiguration",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON PromptTemplateConfigurationProperty where
  toJSON PromptTemplateConfigurationProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" PromptTemplateConfigurationProperty where
  type PropertyType "Text" PromptTemplateConfigurationProperty = TextPromptTemplateConfigurationProperty
  set newValue PromptTemplateConfigurationProperty {}
    = PromptTemplateConfigurationProperty {text = newValue, ..}