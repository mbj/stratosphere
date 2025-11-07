module Stratosphere.BedrockAgentCore.Memory.SemanticOverrideExtractionConfigurationInputProperty (
        SemanticOverrideExtractionConfigurationInputProperty(..),
        mkSemanticOverrideExtractionConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticOverrideExtractionConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideextractionconfigurationinput.html>
    SemanticOverrideExtractionConfigurationInputProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideextractionconfigurationinput.html#cfn-bedrockagentcore-memory-semanticoverrideextractionconfigurationinput-appendtoprompt>
                                                          appendToPrompt :: (Value Prelude.Text),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideextractionconfigurationinput.html#cfn-bedrockagentcore-memory-semanticoverrideextractionconfigurationinput-modelid>
                                                          modelId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticOverrideExtractionConfigurationInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SemanticOverrideExtractionConfigurationInputProperty
mkSemanticOverrideExtractionConfigurationInputProperty
  appendToPrompt
  modelId
  = SemanticOverrideExtractionConfigurationInputProperty
      {haddock_workaround_ = (), appendToPrompt = appendToPrompt,
       modelId = modelId}
instance ToResourceProperties SemanticOverrideExtractionConfigurationInputProperty where
  toResourceProperties
    SemanticOverrideExtractionConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SemanticOverrideExtractionConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["AppendToPrompt" JSON..= appendToPrompt,
                       "ModelId" JSON..= modelId]}
instance JSON.ToJSON SemanticOverrideExtractionConfigurationInputProperty where
  toJSON SemanticOverrideExtractionConfigurationInputProperty {..}
    = JSON.object
        ["AppendToPrompt" JSON..= appendToPrompt,
         "ModelId" JSON..= modelId]
instance Property "AppendToPrompt" SemanticOverrideExtractionConfigurationInputProperty where
  type PropertyType "AppendToPrompt" SemanticOverrideExtractionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SemanticOverrideExtractionConfigurationInputProperty {..}
    = SemanticOverrideExtractionConfigurationInputProperty
        {appendToPrompt = newValue, ..}
instance Property "ModelId" SemanticOverrideExtractionConfigurationInputProperty where
  type PropertyType "ModelId" SemanticOverrideExtractionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SemanticOverrideExtractionConfigurationInputProperty {..}
    = SemanticOverrideExtractionConfigurationInputProperty
        {modelId = newValue, ..}