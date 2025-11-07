module Stratosphere.Bedrock.Flow.VectorSearchRerankingConfigurationProperty (
        module Exports, VectorSearchRerankingConfigurationProperty(..),
        mkVectorSearchRerankingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.VectorSearchBedrockRerankingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VectorSearchRerankingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchrerankingconfiguration.html>
    VectorSearchRerankingConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchrerankingconfiguration.html#cfn-bedrock-flow-vectorsearchrerankingconfiguration-bedrockrerankingconfiguration>
                                                bedrockRerankingConfiguration :: (Prelude.Maybe VectorSearchBedrockRerankingConfigurationProperty),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-vectorsearchrerankingconfiguration.html#cfn-bedrock-flow-vectorsearchrerankingconfiguration-type>
                                                type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorSearchRerankingConfigurationProperty ::
  Value Prelude.Text -> VectorSearchRerankingConfigurationProperty
mkVectorSearchRerankingConfigurationProperty type'
  = VectorSearchRerankingConfigurationProperty
      {haddock_workaround_ = (), type' = type',
       bedrockRerankingConfiguration = Prelude.Nothing}
instance ToResourceProperties VectorSearchRerankingConfigurationProperty where
  toResourceProperties
    VectorSearchRerankingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.VectorSearchRerankingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "BedrockRerankingConfiguration"
                                 Prelude.<$> bedrockRerankingConfiguration]))}
instance JSON.ToJSON VectorSearchRerankingConfigurationProperty where
  toJSON VectorSearchRerankingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "BedrockRerankingConfiguration"
                    Prelude.<$> bedrockRerankingConfiguration])))
instance Property "BedrockRerankingConfiguration" VectorSearchRerankingConfigurationProperty where
  type PropertyType "BedrockRerankingConfiguration" VectorSearchRerankingConfigurationProperty = VectorSearchBedrockRerankingConfigurationProperty
  set newValue VectorSearchRerankingConfigurationProperty {..}
    = VectorSearchRerankingConfigurationProperty
        {bedrockRerankingConfiguration = Prelude.pure newValue, ..}
instance Property "Type" VectorSearchRerankingConfigurationProperty where
  type PropertyType "Type" VectorSearchRerankingConfigurationProperty = Value Prelude.Text
  set newValue VectorSearchRerankingConfigurationProperty {..}
    = VectorSearchRerankingConfigurationProperty {type' = newValue, ..}