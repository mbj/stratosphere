module Stratosphere.Bedrock.FlowVersion.LambdaFunctionFlowNodeConfigurationProperty (
        LambdaFunctionFlowNodeConfigurationProperty(..),
        mkLambdaFunctionFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaFunctionFlowNodeConfigurationProperty
  = LambdaFunctionFlowNodeConfigurationProperty {lambdaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLambdaFunctionFlowNodeConfigurationProperty ::
  Value Prelude.Text -> LambdaFunctionFlowNodeConfigurationProperty
mkLambdaFunctionFlowNodeConfigurationProperty lambdaArn
  = LambdaFunctionFlowNodeConfigurationProperty
      {lambdaArn = lambdaArn}
instance ToResourceProperties LambdaFunctionFlowNodeConfigurationProperty where
  toResourceProperties
    LambdaFunctionFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.LambdaFunctionFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = ["LambdaArn" JSON..= lambdaArn]}
instance JSON.ToJSON LambdaFunctionFlowNodeConfigurationProperty where
  toJSON LambdaFunctionFlowNodeConfigurationProperty {..}
    = JSON.object ["LambdaArn" JSON..= lambdaArn]
instance Property "LambdaArn" LambdaFunctionFlowNodeConfigurationProperty where
  type PropertyType "LambdaArn" LambdaFunctionFlowNodeConfigurationProperty = Value Prelude.Text
  set newValue LambdaFunctionFlowNodeConfigurationProperty {}
    = LambdaFunctionFlowNodeConfigurationProperty
        {lambdaArn = newValue, ..}