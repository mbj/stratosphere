module Stratosphere.Bedrock.FlowVersion.KnowledgeBaseOrchestrationConfigurationProperty (
        module Exports,
        KnowledgeBaseOrchestrationConfigurationProperty(..),
        mkKnowledgeBaseOrchestrationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.KnowledgeBasePromptTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PerformanceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptInferenceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data KnowledgeBaseOrchestrationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html>
    KnowledgeBaseOrchestrationConfigurationProperty {haddock_workaround_ :: (),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-additionalmodelrequestfields>
                                                     additionalModelRequestFields :: (Prelude.Maybe JSON.Object),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-inferenceconfig>
                                                     inferenceConfig :: (Prelude.Maybe PromptInferenceConfigurationProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-performanceconfig>
                                                     performanceConfig :: (Prelude.Maybe PerformanceConfigurationProperty),
                                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseorchestrationconfiguration.html#cfn-bedrock-flowversion-knowledgebaseorchestrationconfiguration-prompttemplate>
                                                     promptTemplate :: (Prelude.Maybe KnowledgeBasePromptTemplateProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseOrchestrationConfigurationProperty ::
  KnowledgeBaseOrchestrationConfigurationProperty
mkKnowledgeBaseOrchestrationConfigurationProperty
  = KnowledgeBaseOrchestrationConfigurationProperty
      {haddock_workaround_ = (),
       additionalModelRequestFields = Prelude.Nothing,
       inferenceConfig = Prelude.Nothing,
       performanceConfig = Prelude.Nothing,
       promptTemplate = Prelude.Nothing}
instance ToResourceProperties KnowledgeBaseOrchestrationConfigurationProperty where
  toResourceProperties
    KnowledgeBaseOrchestrationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.KnowledgeBaseOrchestrationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalModelRequestFields"
                              Prelude.<$> additionalModelRequestFields,
                            (JSON..=) "InferenceConfig" Prelude.<$> inferenceConfig,
                            (JSON..=) "PerformanceConfig" Prelude.<$> performanceConfig,
                            (JSON..=) "PromptTemplate" Prelude.<$> promptTemplate])}
instance JSON.ToJSON KnowledgeBaseOrchestrationConfigurationProperty where
  toJSON KnowledgeBaseOrchestrationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalModelRequestFields"
                 Prelude.<$> additionalModelRequestFields,
               (JSON..=) "InferenceConfig" Prelude.<$> inferenceConfig,
               (JSON..=) "PerformanceConfig" Prelude.<$> performanceConfig,
               (JSON..=) "PromptTemplate" Prelude.<$> promptTemplate]))
instance Property "AdditionalModelRequestFields" KnowledgeBaseOrchestrationConfigurationProperty where
  type PropertyType "AdditionalModelRequestFields" KnowledgeBaseOrchestrationConfigurationProperty = JSON.Object
  set newValue KnowledgeBaseOrchestrationConfigurationProperty {..}
    = KnowledgeBaseOrchestrationConfigurationProperty
        {additionalModelRequestFields = Prelude.pure newValue, ..}
instance Property "InferenceConfig" KnowledgeBaseOrchestrationConfigurationProperty where
  type PropertyType "InferenceConfig" KnowledgeBaseOrchestrationConfigurationProperty = PromptInferenceConfigurationProperty
  set newValue KnowledgeBaseOrchestrationConfigurationProperty {..}
    = KnowledgeBaseOrchestrationConfigurationProperty
        {inferenceConfig = Prelude.pure newValue, ..}
instance Property "PerformanceConfig" KnowledgeBaseOrchestrationConfigurationProperty where
  type PropertyType "PerformanceConfig" KnowledgeBaseOrchestrationConfigurationProperty = PerformanceConfigurationProperty
  set newValue KnowledgeBaseOrchestrationConfigurationProperty {..}
    = KnowledgeBaseOrchestrationConfigurationProperty
        {performanceConfig = Prelude.pure newValue, ..}
instance Property "PromptTemplate" KnowledgeBaseOrchestrationConfigurationProperty where
  type PropertyType "PromptTemplate" KnowledgeBaseOrchestrationConfigurationProperty = KnowledgeBasePromptTemplateProperty
  set newValue KnowledgeBaseOrchestrationConfigurationProperty {..}
    = KnowledgeBaseOrchestrationConfigurationProperty
        {promptTemplate = Prelude.pure newValue, ..}