module Stratosphere.Bedrock.DataSource.HierarchicalChunkingLevelConfigurationProperty (
        HierarchicalChunkingLevelConfigurationProperty(..),
        mkHierarchicalChunkingLevelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HierarchicalChunkingLevelConfigurationProperty
  = HierarchicalChunkingLevelConfigurationProperty {maxTokens :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHierarchicalChunkingLevelConfigurationProperty ::
  Value Prelude.Integer
  -> HierarchicalChunkingLevelConfigurationProperty
mkHierarchicalChunkingLevelConfigurationProperty maxTokens
  = HierarchicalChunkingLevelConfigurationProperty
      {maxTokens = maxTokens}
instance ToResourceProperties HierarchicalChunkingLevelConfigurationProperty where
  toResourceProperties
    HierarchicalChunkingLevelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.HierarchicalChunkingLevelConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTokens" JSON..= maxTokens]}
instance JSON.ToJSON HierarchicalChunkingLevelConfigurationProperty where
  toJSON HierarchicalChunkingLevelConfigurationProperty {..}
    = JSON.object ["MaxTokens" JSON..= maxTokens]
instance Property "MaxTokens" HierarchicalChunkingLevelConfigurationProperty where
  type PropertyType "MaxTokens" HierarchicalChunkingLevelConfigurationProperty = Value Prelude.Integer
  set newValue HierarchicalChunkingLevelConfigurationProperty {}
    = HierarchicalChunkingLevelConfigurationProperty
        {maxTokens = newValue, ..}