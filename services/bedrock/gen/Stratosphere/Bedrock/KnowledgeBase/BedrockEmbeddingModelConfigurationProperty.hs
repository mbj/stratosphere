module Stratosphere.Bedrock.KnowledgeBase.BedrockEmbeddingModelConfigurationProperty (
        BedrockEmbeddingModelConfigurationProperty(..),
        mkBedrockEmbeddingModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BedrockEmbeddingModelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-bedrockembeddingmodelconfiguration.html>
    BedrockEmbeddingModelConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-bedrockembeddingmodelconfiguration.html#cfn-bedrock-knowledgebase-bedrockembeddingmodelconfiguration-dimensions>
                                                dimensions :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBedrockEmbeddingModelConfigurationProperty ::
  BedrockEmbeddingModelConfigurationProperty
mkBedrockEmbeddingModelConfigurationProperty
  = BedrockEmbeddingModelConfigurationProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing}
instance ToResourceProperties BedrockEmbeddingModelConfigurationProperty where
  toResourceProperties
    BedrockEmbeddingModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.BedrockEmbeddingModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions])}
instance JSON.ToJSON BedrockEmbeddingModelConfigurationProperty where
  toJSON BedrockEmbeddingModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions]))
instance Property "Dimensions" BedrockEmbeddingModelConfigurationProperty where
  type PropertyType "Dimensions" BedrockEmbeddingModelConfigurationProperty = Value Prelude.Integer
  set newValue BedrockEmbeddingModelConfigurationProperty {..}
    = BedrockEmbeddingModelConfigurationProperty
        {dimensions = Prelude.pure newValue, ..}