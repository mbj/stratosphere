module Stratosphere.Wisdom.KnowledgeBase.ChunkingConfigurationProperty (
        module Exports, ChunkingConfigurationProperty(..),
        mkChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.FixedSizeChunkingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.HierarchicalChunkingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.SemanticChunkingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChunkingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-chunkingconfiguration.html>
    ChunkingConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-chunkingconfiguration.html#cfn-wisdom-knowledgebase-chunkingconfiguration-chunkingstrategy>
                                   chunkingStrategy :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-chunkingconfiguration.html#cfn-wisdom-knowledgebase-chunkingconfiguration-fixedsizechunkingconfiguration>
                                   fixedSizeChunkingConfiguration :: (Prelude.Maybe FixedSizeChunkingConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-chunkingconfiguration.html#cfn-wisdom-knowledgebase-chunkingconfiguration-hierarchicalchunkingconfiguration>
                                   hierarchicalChunkingConfiguration :: (Prelude.Maybe HierarchicalChunkingConfigurationProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-chunkingconfiguration.html#cfn-wisdom-knowledgebase-chunkingconfiguration-semanticchunkingconfiguration>
                                   semanticChunkingConfiguration :: (Prelude.Maybe SemanticChunkingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChunkingConfigurationProperty ::
  Value Prelude.Text -> ChunkingConfigurationProperty
mkChunkingConfigurationProperty chunkingStrategy
  = ChunkingConfigurationProperty
      {haddock_workaround_ = (), chunkingStrategy = chunkingStrategy,
       fixedSizeChunkingConfiguration = Prelude.Nothing,
       hierarchicalChunkingConfiguration = Prelude.Nothing,
       semanticChunkingConfiguration = Prelude.Nothing}
instance ToResourceProperties ChunkingConfigurationProperty where
  toResourceProperties ChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.ChunkingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChunkingStrategy" JSON..= chunkingStrategy]
                           (Prelude.catMaybes
                              [(JSON..=) "FixedSizeChunkingConfiguration"
                                 Prelude.<$> fixedSizeChunkingConfiguration,
                               (JSON..=) "HierarchicalChunkingConfiguration"
                                 Prelude.<$> hierarchicalChunkingConfiguration,
                               (JSON..=) "SemanticChunkingConfiguration"
                                 Prelude.<$> semanticChunkingConfiguration]))}
instance JSON.ToJSON ChunkingConfigurationProperty where
  toJSON ChunkingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChunkingStrategy" JSON..= chunkingStrategy]
              (Prelude.catMaybes
                 [(JSON..=) "FixedSizeChunkingConfiguration"
                    Prelude.<$> fixedSizeChunkingConfiguration,
                  (JSON..=) "HierarchicalChunkingConfiguration"
                    Prelude.<$> hierarchicalChunkingConfiguration,
                  (JSON..=) "SemanticChunkingConfiguration"
                    Prelude.<$> semanticChunkingConfiguration])))
instance Property "ChunkingStrategy" ChunkingConfigurationProperty where
  type PropertyType "ChunkingStrategy" ChunkingConfigurationProperty = Value Prelude.Text
  set newValue ChunkingConfigurationProperty {..}
    = ChunkingConfigurationProperty {chunkingStrategy = newValue, ..}
instance Property "FixedSizeChunkingConfiguration" ChunkingConfigurationProperty where
  type PropertyType "FixedSizeChunkingConfiguration" ChunkingConfigurationProperty = FixedSizeChunkingConfigurationProperty
  set newValue ChunkingConfigurationProperty {..}
    = ChunkingConfigurationProperty
        {fixedSizeChunkingConfiguration = Prelude.pure newValue, ..}
instance Property "HierarchicalChunkingConfiguration" ChunkingConfigurationProperty where
  type PropertyType "HierarchicalChunkingConfiguration" ChunkingConfigurationProperty = HierarchicalChunkingConfigurationProperty
  set newValue ChunkingConfigurationProperty {..}
    = ChunkingConfigurationProperty
        {hierarchicalChunkingConfiguration = Prelude.pure newValue, ..}
instance Property "SemanticChunkingConfiguration" ChunkingConfigurationProperty where
  type PropertyType "SemanticChunkingConfiguration" ChunkingConfigurationProperty = SemanticChunkingConfigurationProperty
  set newValue ChunkingConfigurationProperty {..}
    = ChunkingConfigurationProperty
        {semanticChunkingConfiguration = Prelude.pure newValue, ..}