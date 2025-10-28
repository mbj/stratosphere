module Stratosphere.Bedrock.FlowVersion.PromptFlowNodeResourceConfigurationProperty (
        PromptFlowNodeResourceConfigurationProperty(..),
        mkPromptFlowNodeResourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptFlowNodeResourceConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownoderesourceconfiguration.html>
    PromptFlowNodeResourceConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptflownoderesourceconfiguration.html#cfn-bedrock-flowversion-promptflownoderesourceconfiguration-promptarn>
                                                 promptArn :: (Value Prelude.Text)}
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
        {awsType = "AWS::Bedrock::FlowVersion.PromptFlowNodeResourceConfiguration",
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