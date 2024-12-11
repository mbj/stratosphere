module Stratosphere.Wisdom.KnowledgeBase.SemanticChunkingConfigurationProperty (
        SemanticChunkingConfigurationProperty(..),
        mkSemanticChunkingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticChunkingConfigurationProperty
  = SemanticChunkingConfigurationProperty {breakpointPercentileThreshold :: (Value Prelude.Double),
                                           bufferSize :: (Value Prelude.Double),
                                           maxTokens :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticChunkingConfigurationProperty ::
  Value Prelude.Double
  -> Value Prelude.Double
     -> Value Prelude.Double -> SemanticChunkingConfigurationProperty
mkSemanticChunkingConfigurationProperty
  breakpointPercentileThreshold
  bufferSize
  maxTokens
  = SemanticChunkingConfigurationProperty
      {breakpointPercentileThreshold = breakpointPercentileThreshold,
       bufferSize = bufferSize, maxTokens = maxTokens}
instance ToResourceProperties SemanticChunkingConfigurationProperty where
  toResourceProperties SemanticChunkingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::KnowledgeBase.SemanticChunkingConfiguration",
         supportsTags = Prelude.False,
         properties = ["BreakpointPercentileThreshold"
                         JSON..= breakpointPercentileThreshold,
                       "BufferSize" JSON..= bufferSize, "MaxTokens" JSON..= maxTokens]}
instance JSON.ToJSON SemanticChunkingConfigurationProperty where
  toJSON SemanticChunkingConfigurationProperty {..}
    = JSON.object
        ["BreakpointPercentileThreshold"
           JSON..= breakpointPercentileThreshold,
         "BufferSize" JSON..= bufferSize, "MaxTokens" JSON..= maxTokens]
instance Property "BreakpointPercentileThreshold" SemanticChunkingConfigurationProperty where
  type PropertyType "BreakpointPercentileThreshold" SemanticChunkingConfigurationProperty = Value Prelude.Double
  set newValue SemanticChunkingConfigurationProperty {..}
    = SemanticChunkingConfigurationProperty
        {breakpointPercentileThreshold = newValue, ..}
instance Property "BufferSize" SemanticChunkingConfigurationProperty where
  type PropertyType "BufferSize" SemanticChunkingConfigurationProperty = Value Prelude.Double
  set newValue SemanticChunkingConfigurationProperty {..}
    = SemanticChunkingConfigurationProperty {bufferSize = newValue, ..}
instance Property "MaxTokens" SemanticChunkingConfigurationProperty where
  type PropertyType "MaxTokens" SemanticChunkingConfigurationProperty = Value Prelude.Double
  set newValue SemanticChunkingConfigurationProperty {..}
    = SemanticChunkingConfigurationProperty {maxTokens = newValue, ..}