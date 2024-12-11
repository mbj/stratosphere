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
  = VectorIngestionConfigurationProperty {chunkingConfiguration :: (Prelude.Maybe ChunkingConfigurationProperty),
                                          parsingConfiguration :: (Prelude.Maybe ParsingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVectorIngestionConfigurationProperty ::
  VectorIngestionConfigurationProperty
mkVectorIngestionConfigurationProperty
  = VectorIngestionConfigurationProperty
      {chunkingConfiguration = Prelude.Nothing,
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