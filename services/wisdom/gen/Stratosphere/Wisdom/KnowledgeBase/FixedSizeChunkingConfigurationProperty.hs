module Stratosphere.Wisdom.KnowledgeBase.FixedSizeChunkingConfigurationProperty (
        FixedSizeChunkingConfigurationProperty(..),
        mkFixedSizeChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FixedSizeChunkingConfigurationProperty
  = FixedSizeChunkingConfigurationProperty {maxTokens :: (Value Prelude.Double),
                                            overlapPercentage :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFixedSizeChunkingConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> FixedSizeChunkingConfigurationProperty
mkFixedSizeChunkingConfigurationProperty
  maxTokens
  overlapPercentage
  = FixedSizeChunkingConfigurationProperty
      {maxTokens = maxTokens, overlapPercentage = overlapPercentage}
instance ToResourceProperties FixedSizeChunkingConfigurationProperty where
  toResourceProperties FixedSizeChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.FixedSizeChunkingConfiguration",
         supportsTags = Prelude.False,
         properties = ["MaxTokens" JSON..= maxTokens,
                       "OverlapPercentage" JSON..= overlapPercentage]}
instance JSON.ToJSON FixedSizeChunkingConfigurationProperty where
  toJSON FixedSizeChunkingConfigurationProperty {..}
    = JSON.object
        ["MaxTokens" JSON..= maxTokens,
         "OverlapPercentage" JSON..= overlapPercentage]
instance Property "MaxTokens" FixedSizeChunkingConfigurationProperty where
  type PropertyType "MaxTokens" FixedSizeChunkingConfigurationProperty = Value Prelude.Double
  set newValue FixedSizeChunkingConfigurationProperty {..}
    = FixedSizeChunkingConfigurationProperty {maxTokens = newValue, ..}
instance Property "OverlapPercentage" FixedSizeChunkingConfigurationProperty where
  type PropertyType "OverlapPercentage" FixedSizeChunkingConfigurationProperty = Value Prelude.Double
  set newValue FixedSizeChunkingConfigurationProperty {..}
    = FixedSizeChunkingConfigurationProperty
        {overlapPercentage = newValue, ..}