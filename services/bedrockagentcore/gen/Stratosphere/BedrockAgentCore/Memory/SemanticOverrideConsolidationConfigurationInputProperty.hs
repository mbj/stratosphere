module Stratosphere.BedrockAgentCore.Memory.SemanticOverrideConsolidationConfigurationInputProperty (
        SemanticOverrideConsolidationConfigurationInputProperty(..),
        mkSemanticOverrideConsolidationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SemanticOverrideConsolidationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideconsolidationconfigurationinput.html>
    SemanticOverrideConsolidationConfigurationInputProperty {haddock_workaround_ :: (),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-semanticoverrideconsolidationconfigurationinput-appendtoprompt>
                                                             appendToPrompt :: (Value Prelude.Text),
                                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-semanticoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-semanticoverrideconsolidationconfigurationinput-modelid>
                                                             modelId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSemanticOverrideConsolidationConfigurationInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SemanticOverrideConsolidationConfigurationInputProperty
mkSemanticOverrideConsolidationConfigurationInputProperty
  appendToPrompt
  modelId
  = SemanticOverrideConsolidationConfigurationInputProperty
      {haddock_workaround_ = (), appendToPrompt = appendToPrompt,
       modelId = modelId}
instance ToResourceProperties SemanticOverrideConsolidationConfigurationInputProperty where
  toResourceProperties
    SemanticOverrideConsolidationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SemanticOverrideConsolidationConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["AppendToPrompt" JSON..= appendToPrompt,
                       "ModelId" JSON..= modelId]}
instance JSON.ToJSON SemanticOverrideConsolidationConfigurationInputProperty where
  toJSON SemanticOverrideConsolidationConfigurationInputProperty {..}
    = JSON.object
        ["AppendToPrompt" JSON..= appendToPrompt,
         "ModelId" JSON..= modelId]
instance Property "AppendToPrompt" SemanticOverrideConsolidationConfigurationInputProperty where
  type PropertyType "AppendToPrompt" SemanticOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SemanticOverrideConsolidationConfigurationInputProperty {..}
    = SemanticOverrideConsolidationConfigurationInputProperty
        {appendToPrompt = newValue, ..}
instance Property "ModelId" SemanticOverrideConsolidationConfigurationInputProperty where
  type PropertyType "ModelId" SemanticOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SemanticOverrideConsolidationConfigurationInputProperty {..}
    = SemanticOverrideConsolidationConfigurationInputProperty
        {modelId = newValue, ..}