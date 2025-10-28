module Stratosphere.Wisdom.KnowledgeBase.VectorIngestionConfigurationProperty (
        module Exports, VectorIngestionConfigurationProperty(..),
        mkVectorIngestionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.ChunkingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.ParsingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data VectorIngestionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-vectoringestionconfiguration.html>
    VectorIngestionConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-vectoringestionconfiguration.html#cfn-wisdom-knowledgebase-vectoringestionconfiguration-chunkingconfiguration>
                                          chunkingConfiguration :: (Prelude.Maybe ChunkingConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-vectoringestionconfiguration.html#cfn-wisdom-knowledgebase-vectoringestionconfiguration-parsingconfiguration>
                                          parsingConfiguration :: (Prelude.Maybe ParsingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorIngestionConfigurationProperty ::
  VectorIngestionConfigurationProperty
mkVectorIngestionConfigurationProperty
  = VectorIngestionConfigurationProperty
      {haddock_workaround_ = (), chunkingConfiguration = Prelude.Nothing,
       parsingConfiguration = Prelude.Nothing}
instance ToResourceProperties VectorIngestionConfigurationProperty where
  toResourceProperties VectorIngestionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.VectorIngestionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChunkingConfiguration"
                              Prelude.<$> chunkingConfiguration,
                            (JSON..=) "ParsingConfiguration"
                              Prelude.<$> parsingConfiguration])}
instance JSON.ToJSON VectorIngestionConfigurationProperty where
  toJSON VectorIngestionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChunkingConfiguration"
                 Prelude.<$> chunkingConfiguration,
               (JSON..=) "ParsingConfiguration"
                 Prelude.<$> parsingConfiguration]))
instance Property "ChunkingConfiguration" VectorIngestionConfigurationProperty where
  type PropertyType "ChunkingConfiguration" VectorIngestionConfigurationProperty = ChunkingConfigurationProperty
  set newValue VectorIngestionConfigurationProperty {..}
    = VectorIngestionConfigurationProperty
        {chunkingConfiguration = Prelude.pure newValue, ..}
instance Property "ParsingConfiguration" VectorIngestionConfigurationProperty where
  type PropertyType "ParsingConfiguration" VectorIngestionConfigurationProperty = ParsingConfigurationProperty
  set newValue VectorIngestionConfigurationProperty {..}
    = VectorIngestionConfigurationProperty
        {parsingConfiguration = Prelude.pure newValue, ..}