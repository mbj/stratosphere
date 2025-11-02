module Stratosphere.Bedrock.FlowVersion.KnowledgeBaseFlowNodeConfigurationProperty (
        module Exports, KnowledgeBaseFlowNodeConfigurationProperty(..),
        mkKnowledgeBaseFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.GuardrailConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KnowledgeBaseFlowNodeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseflownodeconfiguration.html>
    KnowledgeBaseFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flowversion-knowledgebaseflownodeconfiguration-guardrailconfiguration>
                                                guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flowversion-knowledgebaseflownodeconfiguration-knowledgebaseid>
                                                knowledgeBaseId :: (Value Prelude.Text),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-knowledgebaseflownodeconfiguration.html#cfn-bedrock-flowversion-knowledgebaseflownodeconfiguration-modelid>
                                                modelId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKnowledgeBaseFlowNodeConfigurationProperty ::
  Value Prelude.Text -> KnowledgeBaseFlowNodeConfigurationProperty
mkKnowledgeBaseFlowNodeConfigurationProperty knowledgeBaseId
  = KnowledgeBaseFlowNodeConfigurationProperty
      {haddock_workaround_ = (), knowledgeBaseId = knowledgeBaseId,
       guardrailConfiguration = Prelude.Nothing,
       modelId = Prelude.Nothing}
instance ToResourceProperties KnowledgeBaseFlowNodeConfigurationProperty where
  toResourceProperties
    KnowledgeBaseFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.KnowledgeBaseFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KnowledgeBaseId" JSON..= knowledgeBaseId]
                           (Prelude.catMaybes
                              [(JSON..=) "GuardrailConfiguration"
                                 Prelude.<$> guardrailConfiguration,
                               (JSON..=) "ModelId" Prelude.<$> modelId]))}
instance JSON.ToJSON KnowledgeBaseFlowNodeConfigurationProperty where
  toJSON KnowledgeBaseFlowNodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KnowledgeBaseId" JSON..= knowledgeBaseId]
              (Prelude.catMaybes
                 [(JSON..=) "GuardrailConfiguration"
                    Prelude.<$> guardrailConfiguration,
                  (JSON..=) "ModelId" Prelude.<$> modelId])))
instance Property "GuardrailConfiguration" KnowledgeBaseFlowNodeConfigurationProperty where
  type PropertyType "GuardrailConfiguration" KnowledgeBaseFlowNodeConfigurationProperty = GuardrailConfigurationProperty
  set newValue KnowledgeBaseFlowNodeConfigurationProperty {..}
    = KnowledgeBaseFlowNodeConfigurationProperty
        {guardrailConfiguration = Prelude.pure newValue, ..}
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