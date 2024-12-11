module Stratosphere.Wisdom.KnowledgeBase.HierarchicalChunkingConfigurationProperty (
        module Exports, HierarchicalChunkingConfigurationProperty(..),
        mkHierarchicalChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.KnowledgeBase.HierarchicalChunkingLevelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HierarchicalChunkingConfigurationProperty
  = HierarchicalChunkingConfigurationProperty {levelConfigurations :: [HierarchicalChunkingLevelConfigurationProperty],
                                               overlapTokens :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHierarchicalChunkingConfigurationProperty ::
  [HierarchicalChunkingLevelConfigurationProperty]
  -> Value Prelude.Double
     -> HierarchicalChunkingConfigurationProperty
mkHierarchicalChunkingConfigurationProperty
  levelConfigurations
  overlapTokens
  = HierarchicalChunkingConfigurationProperty
      {levelConfigurations = levelConfigurations,
       overlapTokens = overlapTokens}
instance ToResourceProperties HierarchicalChunkingConfigurationProperty where
  toResourceProperties HierarchicalChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.HierarchicalChunkingConfiguration",
         supportsTags = Prelude.False,
         properties = ["LevelConfigurations" JSON..= levelConfigurations,
                       "OverlapTokens" JSON..= overlapTokens]}
instance JSON.ToJSON HierarchicalChunkingConfigurationProperty where
  toJSON HierarchicalChunkingConfigurationProperty {..}
    = JSON.object
        ["LevelConfigurations" JSON..= levelConfigurations,
         "OverlapTokens" JSON..= overlapTokens]
instance Property "LevelConfigurations" HierarchicalChunkingConfigurationProperty where
  type PropertyType "LevelConfigurations" HierarchicalChunkingConfigurationProperty = [HierarchicalChunkingLevelConfigurationProperty]
  set newValue HierarchicalChunkingConfigurationProperty {..}
    = HierarchicalChunkingConfigurationProperty
        {levelConfigurations = newValue, ..}
instance Property "OverlapTokens" HierarchicalChunkingConfigurationProperty where
  type PropertyType "OverlapTokens" HierarchicalChunkingConfigurationProperty = Value Prelude.Double
  set newValue HierarchicalChunkingConfigurationProperty {..}
    = HierarchicalChunkingConfigurationProperty
        {overlapTokens = newValue, ..}