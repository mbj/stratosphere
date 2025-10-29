module Stratosphere.Bedrock.Flow.LambdaFunctionFlowNodeConfigurationProperty (
        LambdaFunctionFlowNodeConfigurationProperty(..),
        mkLambdaFunctionFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LambdaFunctionFlowNodeConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-lambdafunctionflownodeconfiguration.html>
    LambdaFunctionFlowNodeConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-lambdafunctionflownodeconfiguration.html#cfn-bedrock-flow-lambdafunctionflownodeconfiguration-lambdaarn>
                                                 lambdaArn :: (Value Prelude.Text)}
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
        {awsType = "AWS::Bedrock::Flow.LambdaFunctionFlowNodeConfiguration",
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