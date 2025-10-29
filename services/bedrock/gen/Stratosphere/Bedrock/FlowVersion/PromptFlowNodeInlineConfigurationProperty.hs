module Stratosphere.Bedrock.FlowVersion.PromptFlowNodeInlineConfigurationProperty (
        module Exports, PromptFlowNodeInlineConfigurationProperty(..),
        mkPromptFlowNodeInlineConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptInferenceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptTemplateConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptFlowNodeInlineConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownodeinlineconfiguration.html>
    PromptFlowNodeInlineConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownodeinlineconfiguration.html#cfn-bedrock-flowversion-promptflownodeinlineconfiguration-inferenceconfiguration>
                                               inferenceConfiguration :: (Prelude.Maybe PromptInferenceConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownodeinlineconfiguration.html#cfn-bedrock-flowversion-promptflownodeinlineconfiguration-modelid>
                                               modelId :: (Value Prelude.Text),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownodeinlineconfiguration.html#cfn-bedrock-flowversion-promptflownodeinlineconfiguration-templateconfiguration>
                                               templateConfiguration :: PromptTemplateConfigurationProperty,
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownodeinlineconfiguration.html#cfn-bedrock-flowversion-promptflownodeinlineconfiguration-templatetype>
                                               templateType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptFlowNodeInlineConfigurationProperty ::
  Value Prelude.Text
  -> PromptTemplateConfigurationProperty
     -> Value Prelude.Text -> PromptFlowNodeInlineConfigurationProperty
mkPromptFlowNodeInlineConfigurationProperty
  modelId
  templateConfiguration
  templateType
  = PromptFlowNodeInlineConfigurationProperty
      {modelId = modelId, templateConfiguration = templateConfiguration,
       templateType = templateType,
       inferenceConfiguration = Prelude.Nothing}
instance ToResourceProperties PromptFlowNodeInlineConfigurationProperty where
  toResourceProperties PromptFlowNodeInlineConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.PromptFlowNodeInlineConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelId" JSON..= modelId,
                            "TemplateConfiguration" JSON..= templateConfiguration,
                            "TemplateType" JSON..= templateType]
                           (Prelude.catMaybes
                              [(JSON..=) "InferenceConfiguration"
                                 Prelude.<$> inferenceConfiguration]))}
instance JSON.ToJSON PromptFlowNodeInlineConfigurationProperty where
  toJSON PromptFlowNodeInlineConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelId" JSON..= modelId,
               "TemplateConfiguration" JSON..= templateConfiguration,
               "TemplateType" JSON..= templateType]
              (Prelude.catMaybes
                 [(JSON..=) "InferenceConfiguration"
                    Prelude.<$> inferenceConfiguration])))
instance Property "InferenceConfiguration" PromptFlowNodeInlineConfigurationProperty where
  type PropertyType "InferenceConfiguration" PromptFlowNodeInlineConfigurationProperty = PromptInferenceConfigurationProperty
  set newValue PromptFlowNodeInlineConfigurationProperty {..}
    = PromptFlowNodeInlineConfigurationProperty
        {inferenceConfiguration = Prelude.pure newValue, ..}
instance Property "ModelId" PromptFlowNodeInlineConfigurationProperty where
  type PropertyType "ModelId" PromptFlowNodeInlineConfigurationProperty = Value Prelude.Text
  set newValue PromptFlowNodeInlineConfigurationProperty {..}
    = PromptFlowNodeInlineConfigurationProperty
        {modelId = newValue, ..}
instance Property "TemplateConfiguration" PromptFlowNodeInlineConfigurationProperty where
  type PropertyType "TemplateConfiguration" PromptFlowNodeInlineConfigurationProperty = PromptTemplateConfigurationProperty
  set newValue PromptFlowNodeInlineConfigurationProperty {..}
    = PromptFlowNodeInlineConfigurationProperty
        {templateConfiguration = newValue, ..}
instance Property "TemplateType" PromptFlowNodeInlineConfigurationProperty where
  type PropertyType "TemplateType" PromptFlowNodeInlineConfigurationProperty = Value Prelude.Text
  set newValue PromptFlowNodeInlineConfigurationProperty {..}
    = PromptFlowNodeInlineConfigurationProperty
        {templateType = newValue, ..}