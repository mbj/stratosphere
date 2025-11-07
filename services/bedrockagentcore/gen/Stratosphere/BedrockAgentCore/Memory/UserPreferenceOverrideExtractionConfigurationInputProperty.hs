module Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideExtractionConfigurationInputProperty (
        UserPreferenceOverrideExtractionConfigurationInputProperty(..),
        mkUserPreferenceOverrideExtractionConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPreferenceOverrideExtractionConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideextractionconfigurationinput.html>
    UserPreferenceOverrideExtractionConfigurationInputProperty {haddock_workaround_ :: (),
                                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideextractionconfigurationinput.html#cfn-bedrockagentcore-memory-userpreferenceoverrideextractionconfigurationinput-appendtoprompt>
                                                                appendToPrompt :: (Value Prelude.Text),
                                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideextractionconfigurationinput.html#cfn-bedrockagentcore-memory-userpreferenceoverrideextractionconfigurationinput-modelid>
                                                                modelId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPreferenceOverrideExtractionConfigurationInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> UserPreferenceOverrideExtractionConfigurationInputProperty
mkUserPreferenceOverrideExtractionConfigurationInputProperty
  appendToPrompt
  modelId
  = UserPreferenceOverrideExtractionConfigurationInputProperty
      {haddock_workaround_ = (), appendToPrompt = appendToPrompt,
       modelId = modelId}
instance ToResourceProperties UserPreferenceOverrideExtractionConfigurationInputProperty where
  toResourceProperties
    UserPreferenceOverrideExtractionConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.UserPreferenceOverrideExtractionConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["AppendToPrompt" JSON..= appendToPrompt,
                       "ModelId" JSON..= modelId]}
instance JSON.ToJSON UserPreferenceOverrideExtractionConfigurationInputProperty where
  toJSON
    UserPreferenceOverrideExtractionConfigurationInputProperty {..}
    = JSON.object
        ["AppendToPrompt" JSON..= appendToPrompt,
         "ModelId" JSON..= modelId]
instance Property "AppendToPrompt" UserPreferenceOverrideExtractionConfigurationInputProperty where
  type PropertyType "AppendToPrompt" UserPreferenceOverrideExtractionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    UserPreferenceOverrideExtractionConfigurationInputProperty {..}
    = UserPreferenceOverrideExtractionConfigurationInputProperty
        {appendToPrompt = newValue, ..}
instance Property "ModelId" UserPreferenceOverrideExtractionConfigurationInputProperty where
  type PropertyType "ModelId" UserPreferenceOverrideExtractionConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    UserPreferenceOverrideExtractionConfigurationInputProperty {..}
    = UserPreferenceOverrideExtractionConfigurationInputProperty
        {modelId = newValue, ..}