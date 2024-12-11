module Stratosphere.Bedrock.Flow.PromptFlowNodeResourceConfigurationProperty (
        PromptFlowNodeResourceConfigurationProperty(..),
        mkPromptFlowNodeResourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptFlowNodeResourceConfigurationProperty
  = PromptFlowNodeResourceConfigurationProperty {promptArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptFlowNodeResourceConfigurationProperty ::
  Value Prelude.Text -> PromptFlowNodeResourceConfigurationProperty
mkPromptFlowNodeResourceConfigurationProperty promptArn
  = PromptFlowNodeResourceConfigurationProperty
      {promptArn = promptArn}
instance ToResourceProperties PromptFlowNodeResourceConfigurationProperty where
  toResourceProperties
    PromptFlowNodeResourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.PromptFlowNodeResourceConfiguration",
         supportsTags = Prelude.False,
         properties = ["PromptArn" JSON..= promptArn]}
instance JSON.ToJSON PromptFlowNodeResourceConfigurationProperty where
  toJSON PromptFlowNodeResourceConfigurationProperty {..}
    = JSON.object ["PromptArn" JSON..= promptArn]
instance Property "PromptArn" PromptFlowNodeResourceConfigurationProperty where
  type PropertyType "PromptArn" PromptFlowNodeResourceConfigurationProperty = Value Prelude.Text
  set newValue PromptFlowNodeResourceConfigurationProperty {}
    = PromptFlowNodeResourceConfigurationProperty
        {promptArn = newValue, ..}