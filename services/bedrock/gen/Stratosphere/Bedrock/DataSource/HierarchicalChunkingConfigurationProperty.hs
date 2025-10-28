module Stratosphere.Bedrock.DataSource.HierarchicalChunkingConfigurationProperty (
        module Exports, HierarchicalChunkingConfigurationProperty(..),
        mkHierarchicalChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.DataSource.HierarchicalChunkingLevelConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HierarchicalChunkingConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-hierarchicalchunkingconfiguration.html>
    HierarchicalChunkingConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-hierarchicalchunkingconfiguration.html#cfn-bedrock-datasource-hierarchicalchunkingconfiguration-levelconfigurations>
                                               levelConfigurations :: [HierarchicalChunkingLevelConfigurationProperty],
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-datasource-hierarchicalchunkingconfiguration.html#cfn-bedrock-datasource-hierarchicalchunkingconfiguration-overlaptokens>
                                               overlapTokens :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHierarchicalChunkingConfigurationProperty ::
  [HierarchicalChunkingLevelConfigurationProperty]
  -> Value Prelude.Integer
     -> HierarchicalChunkingConfigurationProperty
mkHierarchicalChunkingConfigurationProperty
  levelConfigurations
  overlapTokens
  = HierarchicalChunkingConfigurationProperty
      {haddock_workaround_ = (),
       levelConfigurations = levelConfigurations,
       overlapTokens = overlapTokens}
instance ToResourceProperties HierarchicalChunkingConfigurationProperty where
  toResourceProperties HierarchicalChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.HierarchicalChunkingConfiguration",
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
  type PropertyType "OverlapTokens" HierarchicalChunkingConfigurationProperty = Value Prelude.Integer
  set newValue HierarchicalChunkingConfigurationProperty {..}
    = HierarchicalChunkingConfigurationProperty
        {overlapTokens = newValue, ..}