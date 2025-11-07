module Stratosphere.BedrockAgentCore.Memory.SummaryOverrideConsolidationConfigurationInputProperty (
        SummaryOverrideConsolidationConfigurationInputProperty(..),
        mkSummaryOverrideConsolidationConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SummaryOverrideConsolidationConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverrideconsolidationconfigurationinput.html>
    SummaryOverrideConsolidationConfigurationInputProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-summaryoverrideconsolidationconfigurationinput-appendtoprompt>
                                                            appendToPrompt :: (Value Prelude.Text),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-memory-summaryoverrideconsolidationconfigurationinput.html#cfn-bedrockagentcore-memory-summaryoverrideconsolidationconfigurationinput-modelid>
                                                            modelId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSummaryOverrideConsolidationConfigurationInputProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SummaryOverrideConsolidationConfigurationInputProperty
mkSummaryOverrideConsolidationConfigurationInputProperty
  appendToPrompt
  modelId
  = SummaryOverrideConsolidationConfigurationInputProperty
      {haddock_workaround_ = (), appendToPrompt = appendToPrompt,
       modelId = modelId}
instance ToResourceProperties SummaryOverrideConsolidationConfigurationInputProperty where
  toResourceProperties
    SummaryOverrideConsolidationConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Memory.SummaryOverrideConsolidationConfigurationInput",
         supportsTags = Prelude.False,
         properties = ["AppendToPrompt" JSON..= appendToPrompt,
                       "ModelId" JSON..= modelId]}
instance JSON.ToJSON SummaryOverrideConsolidationConfigurationInputProperty where
  toJSON SummaryOverrideConsolidationConfigurationInputProperty {..}
    = JSON.object
        ["AppendToPrompt" JSON..= appendToPrompt,
         "ModelId" JSON..= modelId]
instance Property "AppendToPrompt" SummaryOverrideConsolidationConfigurationInputProperty where
  type PropertyType "AppendToPrompt" SummaryOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SummaryOverrideConsolidationConfigurationInputProperty {..}
    = SummaryOverrideConsolidationConfigurationInputProperty
        {appendToPrompt = newValue, ..}
instance Property "ModelId" SummaryOverrideConsolidationConfigurationInputProperty where
  type PropertyType "ModelId" SummaryOverrideConsolidationConfigurationInputProperty = Value Prelude.Text
  set
    newValue
    SummaryOverrideConsolidationConfigurationInputProperty {..}
    = SummaryOverrideConsolidationConfigurationInputProperty
        {modelId = newValue, ..}