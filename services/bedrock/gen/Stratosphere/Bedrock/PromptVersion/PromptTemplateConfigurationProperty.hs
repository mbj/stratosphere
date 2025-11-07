module Stratosphere.Bedrock.PromptVersion.PromptTemplateConfigurationProperty (
        module Exports, PromptTemplateConfigurationProperty(..),
        mkPromptTemplateConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.ChatPromptTemplateConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.TextPromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptTemplateConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-prompttemplateconfiguration.html>
    PromptTemplateConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-prompttemplateconfiguration.html#cfn-bedrock-promptversion-prompttemplateconfiguration-chat>
                                         chat :: (Prelude.Maybe ChatPromptTemplateConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-prompttemplateconfiguration.html#cfn-bedrock-promptversion-prompttemplateconfiguration-text>
                                         text :: (Prelude.Maybe TextPromptTemplateConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptTemplateConfigurationProperty ::
  PromptTemplateConfigurationProperty
mkPromptTemplateConfigurationProperty
  = PromptTemplateConfigurationProperty
      {haddock_workaround_ = (), chat = Prelude.Nothing,
       text = Prelude.Nothing}
instance ToResourceProperties PromptTemplateConfigurationProperty where
  toResourceProperties PromptTemplateConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptTemplateConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Chat" Prelude.<$> chat,
                            (JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON PromptTemplateConfigurationProperty where
  toJSON PromptTemplateConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Chat" Prelude.<$> chat,
               (JSON..=) "Text" Prelude.<$> text]))
instance Property "Chat" PromptTemplateConfigurationProperty where
  type PropertyType "Chat" PromptTemplateConfigurationProperty = ChatPromptTemplateConfigurationProperty
  set newValue PromptTemplateConfigurationProperty {..}
    = PromptTemplateConfigurationProperty
        {chat = Prelude.pure newValue, ..}
instance Property "Text" PromptTemplateConfigurationProperty where
  type PropertyType "Text" PromptTemplateConfigurationProperty = TextPromptTemplateConfigurationProperty
  set newValue PromptTemplateConfigurationProperty {..}
    = PromptTemplateConfigurationProperty
        {text = Prelude.pure newValue, ..}