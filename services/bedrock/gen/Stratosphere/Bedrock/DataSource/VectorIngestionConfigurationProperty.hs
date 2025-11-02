module Stratosphere.Bedrock.DataSource.VectorIngestionConfigurationProperty (
        module Exports, VectorIngestionConfigurationProperty(..),
        mkVectorIngestionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ChunkingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.CustomTransformationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.ParsingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data VectorIngestionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-vectoringestionconfiguration.html>
    VectorIngestionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-vectoringestionconfiguration.html#cfn-bedrock-datasource-vectoringestionconfiguration-chunkingconfiguration>
                                          chunkingConfiguration :: (Prelude.Maybe ChunkingConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-vectoringestionconfiguration.html#cfn-bedrock-datasource-vectoringestionconfiguration-customtransformationconfiguration>
                                          customTransformationConfiguration :: (Prelude.Maybe CustomTransformationConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-vectoringestionconfiguration.html#cfn-bedrock-datasource-vectoringestionconfiguration-parsingconfiguration>
                                          parsingConfiguration :: (Prelude.Maybe ParsingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorIngestionConfigurationProperty ::
  VectorIngestionConfigurationProperty
mkVectorIngestionConfigurationProperty
  = VectorIngestionConfigurationProperty
      {haddock_workaround_ = (), chunkingConfiguration = Prelude.Nothing,
       customTransformationConfiguration = Prelude.Nothing,
       parsingConfiguration = Prelude.Nothing}
instance ToResourceProperties VectorIngestionConfigurationProperty where
  toResourceProperties VectorIngestionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.VectorIngestionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChunkingConfiguration"
                              Prelude.<$> chunkingConfiguration,
                            (JSON..=) "CustomTransformationConfiguration"
                              Prelude.<$> customTransformationConfiguration,
                            (JSON..=) "ParsingConfiguration"
                              Prelude.<$> parsingConfiguration])}
instance JSON.ToJSON VectorIngestionConfigurationProperty where
  toJSON VectorIngestionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChunkingConfiguration"
                 Prelude.<$> chunkingConfiguration,
               (JSON..=) "CustomTransformationConfiguration"
                 Prelude.<$> customTransformationConfiguration,
               (JSON..=) "ParsingConfiguration"
                 Prelude.<$> parsingConfiguration]))
instance Property "ChunkingConfiguration" VectorIngestionConfigurationProperty where
  type PropertyType "ChunkingConfiguration" VectorIngestionConfigurationProperty = ChunkingConfigurationProperty
  set newValue VectorIngestionConfigurationProperty {..}
    = VectorIngestionConfigurationProperty
        {chunkingConfiguration = Prelude.pure newValue, ..}
instance Property "CustomTransformationConfiguration" VectorIngestionConfigurationProperty where
  type PropertyType "CustomTransformationConfiguration" VectorIngestionConfigurationProperty = CustomTransformationConfigurationProperty
  set newValue VectorIngestionConfigurationProperty {..}
    = VectorIngestionConfigurationProperty
        {customTransformationConfiguration = Prelude.pure newValue, ..}
instance Property "ParsingConfiguration" VectorIngestionConfigurationProperty where
  type PropertyType "ParsingConfiguration" VectorIngestionConfigurationProperty = ParsingConfigurationProperty
  set newValue VectorIngestionConfigurationProperty {..}
    = VectorIngestionConfigurationProperty
        {parsingConfiguration = Prelude.pure newValue, ..}