module Stratosphere.Bedrock.FlowVersion.FlowDataConnectionConfigurationProperty (
        FlowDataConnectionConfigurationProperty(..),
        mkFlowDataConnectionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowDataConnectionConfigurationProperty
  = FlowDataConnectionConfigurationProperty {sourceOutput :: (Value Prelude.Text),
                                             targetInput :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowDataConnectionConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FlowDataConnectionConfigurationProperty
mkFlowDataConnectionConfigurationProperty sourceOutput targetInput
  = FlowDataConnectionConfigurationProperty
      {sourceOutput = sourceOutput, targetInput = targetInput}
instance ToResourceProperties FlowDataConnectionConfigurationProperty where
  toResourceProperties FlowDataConnectionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.FlowDataConnectionConfiguration",
         supportsTags = Prelude.False,
         properties = ["SourceOutput" JSON..= sourceOutput,
                       "TargetInput" JSON..= targetInput]}
instance JSON.ToJSON FlowDataConnectionConfigurationProperty where
  toJSON FlowDataConnectionConfigurationProperty {..}
    = JSON.object
        ["SourceOutput" JSON..= sourceOutput,
         "TargetInput" JSON..= targetInput]
instance Property "SourceOutput" FlowDataConnectionConfigurationProperty where
  type PropertyType "SourceOutput" FlowDataConnectionConfigurationProperty = Value Prelude.Text
  set newValue FlowDataConnectionConfigurationProperty {..}
    = FlowDataConnectionConfigurationProperty
        {sourceOutput = newValue, ..}
instance Property "TargetInput" FlowDataConnectionConfigurationProperty where
  type PropertyType "TargetInput" FlowDataConnectionConfigurationProperty = Value Prelude.Text
  set newValue FlowDataConnectionConfigurationProperty {..}
    = FlowDataConnectionConfigurationProperty
        {targetInput = newValue, ..}