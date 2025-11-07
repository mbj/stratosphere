module Stratosphere.BedrockAgentCore.Memory.UserPreferenceOverrideConsolidationConfigurationInputProperty (
        UserPreferenceOverrideConsolidationConfigurationInputProperty(..),
        mkUserPreferenceOverrideConsolidationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPreferenceOverrideConsolidationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideconsolidationconfigurationinput.html>
    UserPreferenceOverrideConsolidationConfigurationInputProperty {haddock_workaround_ :: (),
                                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-userpreferenceoverrideconsolidationconfigurationinput-appendtoprompt>
                                                                   appendToPrompt :: (Value Prelude.Text),
                                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-userpreferenceoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-userpreferenceoverrideconsolidationconfigurationinput-modelid>
                                                                   modelId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPreferenceOverrideConsolidationConfigurationInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> UserPreferenceOverrideConsolidationConfigurationInputProperty
mkUserPreferenceOverrideConsolidationConfigurationInputProperty
  appendToPrompt
  modelId
  = UserPreferenceOverrideConsolidationConfigurationInputProperty
      {haddock_workaround_ = (), appendToPrompt = appendToPrompt,
       modelId = modelId}
instance ToResourceProperties UserPreferenceOverrideConsolidationConfigurationInputProperty where
  toResourceProperties
    UserPreferenceOverrideConsolidationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.UserPreferenceOverrideConsolidationConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["AppendToPrompt" JSON..= appendToPrompt,
                       "ModelId" JSON..= modelId]}
instance JSON.ToJSON UserPreferenceOverrideConsolidationConfigurationInputProperty where
  toJSON
    UserPreferenceOverrideConsolidationConfigurationInputProperty {..}
    = JSON.object
        ["AppendToPrompt" JSON..= appendToPrompt,
         "ModelId" JSON..= modelId]
instance Property "AppendToPrompt" UserPreferenceOverrideConsolidationConfigurationInputProperty where
  type PropertyType "AppendToPrompt" UserPreferenceOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    UserPreferenceOverrideConsolidationConfigurationInputProperty {..}
    = UserPreferenceOverrideConsolidationConfigurationInputProperty
        {appendToPrompt = newValue, ..}
instance Property "ModelId" UserPreferenceOverrideConsolidationConfigurationInputProperty where
  type PropertyType "ModelId" UserPreferenceOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    UserPreferenceOverrideConsolidationConfigurationInputProperty {..}
    = UserPreferenceOverrideConsolidationConfigurationInputProperty
        {modelId = newValue, ..}