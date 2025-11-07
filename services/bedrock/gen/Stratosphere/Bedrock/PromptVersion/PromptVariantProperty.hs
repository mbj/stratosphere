module Stratosphere.Bedrock.PromptVersion.PromptVariantProperty (
        module Exports, PromptVariantProperty(..), mkPromptVariantProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptGenAiResourceProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptInferenceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptMetadataEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.PromptVersion.PromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptVariantProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html>
    PromptVariantProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-additionalmodelrequestfields>
                           additionalModelRequestFields :: (Prelude.Maybe JSON.Object),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-genairesource>
                           genAiResource :: (Prelude.Maybe PromptGenAiResourceProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-inferenceconfiguration>
                           inferenceConfiguration :: (Prelude.Maybe PromptInferenceConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-metadata>
                           metadata :: (Prelude.Maybe [PromptMetadataEntryProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-modelid>
                           modelId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-name>
                           name :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-templateconfiguration>
                           templateConfiguration :: PromptTemplateConfigurationProperty,
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-promptvariant.html#cfn-bedrock-promptversion-promptvariant-templatetype>
                           templateType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptVariantProperty ::
  Value Prelude.Text
  -> PromptTemplateConfigurationProperty
     -> Value Prelude.Text -> PromptVariantProperty
mkPromptVariantProperty name templateConfiguration templateType
  = PromptVariantProperty
      {haddock_workaround_ = (), name = name,
       templateConfiguration = templateConfiguration,
       templateType = templateType,
       additionalModelRequestFields = Prelude.Nothing,
       genAiResource = Prelude.Nothing,
       inferenceConfiguration = Prelude.Nothing,
       metadata = Prelude.Nothing, modelId = Prelude.Nothing}
instance ToResourceProperties PromptVariantProperty where
  toResourceProperties PromptVariantProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.PromptVariant",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name,
                            "TemplateConfiguration" JSON..= templateConfiguration,
                            "TemplateType" JSON..= templateType]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalModelRequestFields"
                                 Prelude.<$> additionalModelRequestFields,
                               (JSON..=) "GenAiResource" Prelude.<$> genAiResource,
                               (JSON..=) "InferenceConfiguration"
                                 Prelude.<$> inferenceConfiguration,
                               (JSON..=) "Metadata" Prelude.<$> metadata,
                               (JSON..=) "ModelId" Prelude.<$> modelId]))}
instance JSON.ToJSON PromptVariantProperty where
  toJSON PromptVariantProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name,
               "TemplateConfiguration" JSON..= templateConfiguration,
               "TemplateType" JSON..= templateType]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalModelRequestFields"
                    Prelude.<$> additionalModelRequestFields,
                  (JSON..=) "GenAiResource" Prelude.<$> genAiResource,
                  (JSON..=) "InferenceConfiguration"
                    Prelude.<$> inferenceConfiguration,
                  (JSON..=) "Metadata" Prelude.<$> metadata,
                  (JSON..=) "ModelId" Prelude.<$> modelId])))
instance Property "AdditionalModelRequestFields" PromptVariantProperty where
  type PropertyType "AdditionalModelRequestFields" PromptVariantProperty = JSON.Object
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty
        {additionalModelRequestFields = Prelude.pure newValue, ..}
instance Property "GenAiResource" PromptVariantProperty where
  type PropertyType "GenAiResource" PromptVariantProperty = PromptGenAiResourceProperty
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {genAiResource = Prelude.pure newValue, ..}
instance Property "InferenceConfiguration" PromptVariantProperty where
  type PropertyType "InferenceConfiguration" PromptVariantProperty = PromptInferenceConfigurationProperty
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty
        {inferenceConfiguration = Prelude.pure newValue, ..}
instance Property "Metadata" PromptVariantProperty where
  type PropertyType "Metadata" PromptVariantProperty = [PromptMetadataEntryProperty]
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {metadata = Prelude.pure newValue, ..}
instance Property "ModelId" PromptVariantProperty where
  type PropertyType "ModelId" PromptVariantProperty = Value Prelude.Text
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {modelId = Prelude.pure newValue, ..}
instance Property "Name" PromptVariantProperty where
  type PropertyType "Name" PromptVariantProperty = Value Prelude.Text
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {name = newValue, ..}
instance Property "TemplateConfiguration" PromptVariantProperty where
  type PropertyType "TemplateConfiguration" PromptVariantProperty = PromptTemplateConfigurationProperty
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {templateConfiguration = newValue, ..}
instance Property "TemplateType" PromptVariantProperty where
  type PropertyType "TemplateType" PromptVariantProperty = Value Prelude.Text
  set newValue PromptVariantProperty {..}
    = PromptVariantProperty {templateType = newValue, ..}