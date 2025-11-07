module Stratosphere.Bedrock.Flow.VectorSearchBedrockRerankingModelConfigurationProperty (
        VectorSearchBedrockRerankingModelConfigurationProperty(..),
        mkVectorSearchBedrockRerankingModelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VectorSearchBedrockRerankingModelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingmodelconfiguration.html>
    VectorSearchBedrockRerankingModelConfigurationProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingmodelconfiguration.html#cfn-bedrock-flow-vectorsearchbedrockrerankingmodelconfiguration-additionalmodelrequestfields>
                                                            additionalModelRequestFields :: (Prelude.Maybe JSON.Object),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchbedrockrerankingmodelconfiguration.html#cfn-bedrock-flow-vectorsearchbedrockrerankingmodelconfiguration-modelarn>
                                                            modelArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorSearchBedrockRerankingModelConfigurationProperty ::
  Value Prelude.Text
  -> VectorSearchBedrockRerankingModelConfigurationProperty
mkVectorSearchBedrockRerankingModelConfigurationProperty modelArn
  = VectorSearchBedrockRerankingModelConfigurationProperty
      {haddock_workaround_ = (), modelArn = modelArn,
       additionalModelRequestFields = Prelude.Nothing}
instance ToResourceProperties VectorSearchBedrockRerankingModelConfigurationProperty where
  toResourceProperties
    VectorSearchBedrockRerankingModelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.VectorSearchBedrockRerankingModelConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelArn" JSON..= modelArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AdditionalModelRequestFields"
                                 Prelude.<$> additionalModelRequestFields]))}
instance JSON.ToJSON VectorSearchBedrockRerankingModelConfigurationProperty where
  toJSON VectorSearchBedrockRerankingModelConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelArn" JSON..= modelArn]
              (Prelude.catMaybes
                 [(JSON..=) "AdditionalModelRequestFields"
                    Prelude.<$> additionalModelRequestFields])))
instance Property "AdditionalModelRequestFields" VectorSearchBedrockRerankingModelConfigurationProperty where
  type PropertyType "AdditionalModelRequestFields" VectorSearchBedrockRerankingModelConfigurationProperty = JSON.Object
  set
    newValue
    VectorSearchBedrockRerankingModelConfigurationProperty {..}
    = VectorSearchBedrockRerankingModelConfigurationProperty
        {additionalModelRequestFields = Prelude.pure newValue, ..}
instance Property "ModelArn" VectorSearchBedrockRerankingModelConfigurationProperty where
  type PropertyType "ModelArn" VectorSearchBedrockRerankingModelConfigurationProperty = Value Prelude.Text
  set
    newValue
    VectorSearchBedrockRerankingModelConfigurationProperty {..}
    = VectorSearchBedrockRerankingModelConfigurationProperty
        {modelArn = newValue, ..}