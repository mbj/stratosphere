module Stratosphere.Wisdom.KnowledgeBase.HierarchicalChunkingLevelConfigurationProperty (
        HierarchicalChunkingLevelConfigurationProperty(..),
        mkHierarchicalChunkingLevelConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HierarchicalChunkingLevelConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-hierarchicalchunkinglevelconfiguration.html>
    HierarchicalChunkingLevelConfigurationProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-knowledgebase-hierarchicalchunkinglevelconfiguration.html#cfn-wisdom-knowledgebase-hierarchicalchunkinglevelconfiguration-maxtokens>
                                                    maxTokens :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHierarchicalChunkingLevelConfigurationProperty ::
  Value Prelude.Double
  -> HierarchicalChunkingLevelConfigurationProperty
mkHierarchicalChunkingLevelConfigurationProperty maxTokens
  = HierarchicalChunkingLevelConfigurationProperty
      {haddock_workaround_ = (), maxTokens = maxTokens}
instance ToResourceProperties HierarchicalChunkingLevelConfigurationProperty where
  toResourceProperties
    HierarchicalChunkingLevelConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.HierarchicalChunkingLevelConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTokens" JSON..= maxTokens]}
instance JSON.ToJSON HierarchicalChunkingLevelConfigurationProperty where
  toJSON HierarchicalChunkingLevelConfigurationProperty {..}
    = JSON.object ["MaxTokens" JSON..= maxTokens]
instance Property "MaxTokens" HierarchicalChunkingLevelConfigurationProperty where
  type PropertyType "MaxTokens" HierarchicalChunkingLevelConfigurationProperty = Value Prelude.Double
  set newValue HierarchicalChunkingLevelConfigurationProperty {..}
    = HierarchicalChunkingLevelConfigurationProperty
        {maxTokens = newValue, ..}