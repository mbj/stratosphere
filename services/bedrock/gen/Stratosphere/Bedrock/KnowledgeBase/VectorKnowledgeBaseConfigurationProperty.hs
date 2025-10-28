module Stratosphere.Bedrock.KnowledgeBase.VectorKnowledgeBaseConfigurationProperty (
        module Exports, VectorKnowledgeBaseConfigurationProperty(..),
        mkVectorKnowledgeBaseConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.EmbeddingModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VectorKnowledgeBaseConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-vectorknowledgebaseconfiguration.html>
    VectorKnowledgeBaseConfigurationProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-vectorknowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-vectorknowledgebaseconfiguration-embeddingmodelarn>
                                              embeddingModelArn :: (Value Prelude.Text),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-vectorknowledgebaseconfiguration.html#cfn-bedrock-knowledgebase-vectorknowledgebaseconfiguration-embeddingmodelconfiguration>
                                              embeddingModelConfiguration :: (Prelude.Maybe EmbeddingModelConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorKnowledgeBaseConfigurationProperty ::
  Value Prelude.Text -> VectorKnowledgeBaseConfigurationProperty
mkVectorKnowledgeBaseConfigurationProperty embeddingModelArn
  = VectorKnowledgeBaseConfigurationProperty
      {haddock_workaround_ = (), embeddingModelArn = embeddingModelArn,
       embeddingModelConfiguration = Prelude.Nothing}
instance ToResourceProperties VectorKnowledgeBaseConfigurationProperty where
  toResourceProperties VectorKnowledgeBaseConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.VectorKnowledgeBaseConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EmbeddingModelArn" JSON..= embeddingModelArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EmbeddingModelConfiguration"
                                 Prelude.<$> embeddingModelConfiguration]))}
instance JSON.ToJSON VectorKnowledgeBaseConfigurationProperty where
  toJSON VectorKnowledgeBaseConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EmbeddingModelArn" JSON..= embeddingModelArn]
              (Prelude.catMaybes
                 [(JSON..=) "EmbeddingModelConfiguration"
                    Prelude.<$> embeddingModelConfiguration])))
instance Property "EmbeddingModelArn" VectorKnowledgeBaseConfigurationProperty where
  type PropertyType "EmbeddingModelArn" VectorKnowledgeBaseConfigurationProperty = Value Prelude.Text
  set newValue VectorKnowledgeBaseConfigurationProperty {..}
    = VectorKnowledgeBaseConfigurationProperty
        {embeddingModelArn = newValue, ..}
instance Property "EmbeddingModelConfiguration" VectorKnowledgeBaseConfigurationProperty where
  type PropertyType "EmbeddingModelConfiguration" VectorKnowledgeBaseConfigurationProperty = EmbeddingModelConfigurationProperty
  set newValue VectorKnowledgeBaseConfigurationProperty {..}
    = VectorKnowledgeBaseConfigurationProperty
        {embeddingModelConfiguration = Prelude.pure newValue, ..}