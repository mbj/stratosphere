module Stratosphere.Wisdom.AIPrompt (
        module Exports, AIPrompt(..), mkAIPrompt
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.AIPrompt.AIPromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AIPrompt
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html>
    AIPrompt {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-apiformat>
              apiFormat :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-assistantid>
              assistantId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-modelid>
              modelId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-tags>
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-templateconfiguration>
              templateConfiguration :: AIPromptTemplateConfigurationProperty,
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-templatetype>
              templateType :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-aiprompt.html#cfn-wisdom-aiprompt-type>
              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAIPrompt ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> AIPromptTemplateConfigurationProperty
        -> Value Prelude.Text -> Value Prelude.Text -> AIPrompt
mkAIPrompt
  apiFormat
  modelId
  templateConfiguration
  templateType
  type'
  = AIPrompt
      {haddock_workaround_ = (), apiFormat = apiFormat,
       modelId = modelId, templateConfiguration = templateConfiguration,
       templateType = templateType, type' = type',
       assistantId = Prelude.Nothing, description = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties AIPrompt where
  toResourceProperties AIPrompt {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::AIPrompt", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiFormat" JSON..= apiFormat, "ModelId" JSON..= modelId,
                            "TemplateConfiguration" JSON..= templateConfiguration,
                            "TemplateType" JSON..= templateType, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AssistantId" Prelude.<$> assistantId,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON AIPrompt where
  toJSON AIPrompt {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiFormat" JSON..= apiFormat, "ModelId" JSON..= modelId,
               "TemplateConfiguration" JSON..= templateConfiguration,
               "TemplateType" JSON..= templateType, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AssistantId" Prelude.<$> assistantId,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ApiFormat" AIPrompt where
  type PropertyType "ApiFormat" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..} = AIPrompt {apiFormat = newValue, ..}
instance Property "AssistantId" AIPrompt where
  type PropertyType "AssistantId" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..}
    = AIPrompt {assistantId = Prelude.pure newValue, ..}
instance Property "Description" AIPrompt where
  type PropertyType "Description" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..}
    = AIPrompt {description = Prelude.pure newValue, ..}
instance Property "ModelId" AIPrompt where
  type PropertyType "ModelId" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..} = AIPrompt {modelId = newValue, ..}
instance Property "Name" AIPrompt where
  type PropertyType "Name" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..}
    = AIPrompt {name = Prelude.pure newValue, ..}
instance Property "Tags" AIPrompt where
  type PropertyType "Tags" AIPrompt = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue AIPrompt {..}
    = AIPrompt {tags = Prelude.pure newValue, ..}
instance Property "TemplateConfiguration" AIPrompt where
  type PropertyType "TemplateConfiguration" AIPrompt = AIPromptTemplateConfigurationProperty
  set newValue AIPrompt {..}
    = AIPrompt {templateConfiguration = newValue, ..}
instance Property "TemplateType" AIPrompt where
  type PropertyType "TemplateType" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..} = AIPrompt {templateType = newValue, ..}
instance Property "Type" AIPrompt where
  type PropertyType "Type" AIPrompt = Value Prelude.Text
  set newValue AIPrompt {..} = AIPrompt {type' = newValue, ..}