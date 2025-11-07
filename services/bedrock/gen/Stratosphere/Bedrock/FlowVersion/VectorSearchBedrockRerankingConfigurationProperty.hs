module Stratosphere.Bedrock.FlowVersion.VectorSearchBedrockRerankingConfigurationProperty (
        module Exports,
        VectorSearchBedrockRerankingConfigurationProperty(..),
        mkVectorSearchBedrockRerankingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.MetadataConfigurationForRerankingProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.VectorSearchBedrockRerankingModelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VectorSearchBedrockRerankingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration.html>
    VectorSearchBedrockRerankingConfigurationProperty {haddock_workaround_ :: (),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration-metadataconfiguration>
                                                       metadataConfiguration :: (Prelude.Maybe MetadataConfigurationForRerankingProperty),
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration-modelconfiguration>
                                                       modelConfiguration :: VectorSearchBedrockRerankingModelConfigurationProperty,
                                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration.html#cfn-bedrock-flowversion-vectorsearchbedrockrerankingconfiguration-numberofrerankedresults>
                                                       numberOfRerankedResults :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorSearchBedrockRerankingConfigurationProperty ::
  VectorSearchBedrockRerankingModelConfigurationProperty
  -> VectorSearchBedrockRerankingConfigurationProperty
mkVectorSearchBedrockRerankingConfigurationProperty
  modelConfiguration
  = VectorSearchBedrockRerankingConfigurationProperty
      {haddock_workaround_ = (), modelConfiguration = modelConfiguration,
       metadataConfiguration = Prelude.Nothing,
       numberOfRerankedResults = Prelude.Nothing}
instance ToResourceProperties VectorSearchBedrockRerankingConfigurationProperty where
  toResourceProperties
    VectorSearchBedrockRerankingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.VectorSearchBedrockRerankingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ModelConfiguration" JSON..= modelConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "MetadataConfiguration"
                                 Prelude.<$> metadataConfiguration,
                               (JSON..=) "NumberOfRerankedResults"
                                 Prelude.<$> numberOfRerankedResults]))}
instance JSON.ToJSON VectorSearchBedrockRerankingConfigurationProperty where
  toJSON VectorSearchBedrockRerankingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ModelConfiguration" JSON..= modelConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "MetadataConfiguration"
                    Prelude.<$> metadataConfiguration,
                  (JSON..=) "NumberOfRerankedResults"
                    Prelude.<$> numberOfRerankedResults])))
instance Property "MetadataConfiguration" VectorSearchBedrockRerankingConfigurationProperty where
  type PropertyType "MetadataConfiguration" VectorSearchBedrockRerankingConfigurationProperty = MetadataConfigurationForRerankingProperty
  set newValue VectorSearchBedrockRerankingConfigurationProperty {..}
    = VectorSearchBedrockRerankingConfigurationProperty
        {metadataConfiguration = Prelude.pure newValue, ..}
instance Property "ModelConfiguration" VectorSearchBedrockRerankingConfigurationProperty where
  type PropertyType "ModelConfiguration" VectorSearchBedrockRerankingConfigurationProperty = VectorSearchBedrockRerankingModelConfigurationProperty
  set newValue VectorSearchBedrockRerankingConfigurationProperty {..}
    = VectorSearchBedrockRerankingConfigurationProperty
        {modelConfiguration = newValue, ..}
instance Property "NumberOfRerankedResults" VectorSearchBedrockRerankingConfigurationProperty where
  type PropertyType "NumberOfRerankedResults" VectorSearchBedrockRerankingConfigurationProperty = Value Prelude.Double
  set newValue VectorSearchBedrockRerankingConfigurationProperty {..}
    = VectorSearchBedrockRerankingConfigurationProperty
        {numberOfRerankedResults = Prelude.pure newValue, ..}