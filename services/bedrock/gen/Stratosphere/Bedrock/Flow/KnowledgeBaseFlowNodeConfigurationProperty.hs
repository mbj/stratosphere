module Stratosphere.Bedrock.Flow.KnowledgeBaseFlowNodeConfigurationProperty (
        module Exports, KnowledgeBaseFlowNodeConfigurationProperty(..),
        mkKnowledgeBaseFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.GuardrailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.KnowledgeBaseOrchestrationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.KnowledgeBasePromptTemplateProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptInferenceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.VectorSearchRerankingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBaseFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html>
    KnowledgeBaseFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-guardrailconfiguration>
                                                guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-inferenceconfiguration>
                                                inferenceConfiguration :: (Prelude.Maybe PromptInferenceConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-knowledgebaseid>
                                                knowledgeBaseId :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-modelid>
                                                modelId :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-numberofresults>
                                                numberOfResults :: (Prelude.Maybe (Value Prelude.Double)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-orchestrationconfiguration>
                                                orchestrationConfiguration :: (Prelude.Maybe KnowledgeBaseOrchestrationConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-prompttemplate>
                                                promptTemplate :: (Prelude.Maybe KnowledgeBasePromptTemplateProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flow-knowledgebaseflownodeconfiguration-rerankingconfiguration>
                                                rerankingConfiguration :: (Prelude.Maybe VectorSearchRerankingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseFlowNodeConfigurationProperty ::
  Value Prelude.Text -> KnowledgeBaseFlowNodeConfigurationProperty
mkKnowledgeBaseFlowNodeConfigurationProperty knowledgeBaseId
  = KnowledgeBaseFlowNodeConfigurationProperty
      {haddock_workaround_ = (), knowledgeBaseId = knowledgeBaseId,
       guardrailConfiguration = Prelude.Nothing,
       inferenceConfiguration = Prelude.Nothing,
       modelId = Prelude.Nothing, numberOfResults = Prelude.Nothing,
       orchestrationConfiguration = Prelude.Nothing,
       promptTemplate = Prelude.Nothing,
       rerankingConfiguration = Prelude.Nothing}
instance ToResourceProperties KnowledgeBaseFlowNodeConfigurationProperty where
  toResourceProperties
    KnowledgeBaseFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.KnowledgeBaseFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KnowledgeBaseId" JSON..= knowledgeBaseId]
                           (Prelude.catMaybes
                              [(JSON..=) "GuardrailConfiguration"
                                 Prelude.<$> guardrailConfiguration,
                               (JSON..=) "InferenceConfiguration"
                                 Prelude.<$> inferenceConfiguration,
                               (JSON..=) "ModelId" Prelude.<$> modelId,
                               (JSON..=) "NumberOfResults" Prelude.<$> numberOfResults,
                               (JSON..=) "OrchestrationConfiguration"
                                 Prelude.<$> orchestrationConfiguration,
                               (JSON..=) "PromptTemplate" Prelude.<$> promptTemplate,
                               (JSON..=) "RerankingConfiguration"
                                 Prelude.<$> rerankingConfiguration]))}
instance JSON.ToJSON KnowledgeBaseFlowNodeConfigurationProperty where
  toJSON KnowledgeBaseFlowNodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KnowledgeBaseId" JSON..= knowledgeBaseId]
              (Prelude.catMaybes
                 [(JSON..=) "GuardrailConfiguration"
                    Prelude.<$> guardrailConfiguration,
                  (JSON..=) "InferenceConfiguration"
                    Prelude.<$> inferenceConfiguration,
                  (JSON..=) "ModelId" Prelude.<$> modelId,
                  (JSON..=) "NumberOfResults" Prelude.<$> numberOfResults,
                  (JSON..=) "OrchestrationConfiguration"
                    Prelude.<$> orchestrationConfiguration,
                  (JSON..=) "PromptTemplate" Prelude.<$> promptTemplate,
                  (JSON..=) "RerankingConfiguration"
                    Prelude.<$> rerankingConfiguration])))
instance Property "GuardrailConfiguration" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "GuardrailConfiguration" KnowledgeBaseFlowNodeConfigurationProperty = GuardrailConfigurationProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {guardrailConfiguration = Prelude.pure newValue, ..}
instance Property "InferenceConfiguration" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "InferenceConfiguration" KnowledgeBaseFlowNodeConfigurationProperty = PromptInferenceConfigurationProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {inferenceConfiguration = Prelude.pure newValue, ..}
instance Property "KnowledgeBaseId" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "KnowledgeBaseId" KnowledgeBaseFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {knowledgeBaseId = newValue, ..}
instance Property "ModelId" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "ModelId" KnowledgeBaseFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {modelId = Prelude.pure newValue, ..}
instance Property "NumberOfResults" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "NumberOfResults" KnowledgeBaseFlowNodeConfigurationProperty = Value Prelude.Double
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {numberOfResults = Prelude.pure newValue, ..}
instance Property "OrchestrationConfiguration" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "OrchestrationConfiguration" KnowledgeBaseFlowNodeConfigurationProperty = KnowledgeBaseOrchestrationConfigurationProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {orchestrationConfiguration = Prelude.pure newValue, ..}
instance Property "PromptTemplate" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "PromptTemplate" KnowledgeBaseFlowNodeConfigurationProperty = KnowledgeBasePromptTemplateProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {promptTemplate = Prelude.pure newValue, ..}
instance Property "RerankingConfiguration" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "RerankingConfiguration" KnowledgeBaseFlowNodeConfigurationProperty = VectorSearchRerankingConfigurationProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {rerankingConfiguration = Prelude.pure newValue, ..}