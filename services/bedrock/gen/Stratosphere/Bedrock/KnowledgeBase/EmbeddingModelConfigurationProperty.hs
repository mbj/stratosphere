module Stratosphere.Bedrock.KnowledgeBase.EmbeddingModelConfigurationProperty (
        module Exports, EmbeddingModelConfigurationProperty(..),
        mkEmbeddingModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.BedrockEmbeddingModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data EmbeddingModelConfigurationProperty
  = EmbeddingModelConfigurationProperty {bedrockEmbeddingModelConfiguration :: (Prelude.Maybe BedrockEmbeddingModelConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmbeddingModelConfigurationProperty ::
  EmbeddingModelConfigurationProperty
mkEmbeddingModelConfigurationProperty
  = EmbeddingModelConfigurationProperty
      {bedrockEmbeddingModelConfiguration = Prelude.Nothing}
instance ToResourceProperties EmbeddingModelConfigurationProperty where
  toResourceProperties EmbeddingModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.EmbeddingModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BedrockEmbeddingModelConfiguration"
                              Prelude.<$> bedrockEmbeddingModelConfiguration])}
instance JSON.ToJSON EmbeddingModelConfigurationProperty where
  toJSON EmbeddingModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BedrockEmbeddingModelConfiguration"
                 Prelude.<$> bedrockEmbeddingModelConfiguration]))
instance Property "BedrockEmbeddingModelConfiguration" EmbeddingModelConfigurationProperty where
  type PropertyType "BedrockEmbeddingModelConfiguration" EmbeddingModelConfigurationProperty = BedrockEmbeddingModelConfigurationProperty
  set newValue EmbeddingModelConfigurationProperty {}
    = EmbeddingModelConfigurationProperty
        {bedrockEmbeddingModelConfiguration = Prelude.pure newValue, ..}