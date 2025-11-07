module Stratosphere.BedrockAgentCore.GatewayTarget.McpLambdaTargetConfigurationProperty (
        module Exports, McpLambdaTargetConfigurationProperty(..),
        mkMcpLambdaTargetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.ToolSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data McpLambdaTargetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html>
    McpLambdaTargetConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration-lambdaarn>
                                          lambdaArn :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcplambdatargetconfiguration-toolschema>
                                          toolSchema :: ToolSchemaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMcpLambdaTargetConfigurationProperty ::
  Value Prelude.Text
  -> ToolSchemaProperty -> McpLambdaTargetConfigurationProperty
mkMcpLambdaTargetConfigurationProperty lambdaArn toolSchema
  = McpLambdaTargetConfigurationProperty
      {haddock_workaround_ = (), lambdaArn = lambdaArn,
       toolSchema = toolSchema}
instance ToResourceProperties McpLambdaTargetConfigurationProperty where
  toResourceProperties McpLambdaTargetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.McpLambdaTargetConfiguration",
         supportsTags = Prelude.False,
         properties = ["LambdaArn" JSON..= lambdaArn,
                       "ToolSchema" JSON..= toolSchema]}
instance JSON.ToJSON McpLambdaTargetConfigurationProperty where
  toJSON McpLambdaTargetConfigurationProperty {..}
    = JSON.object
        ["LambdaArn" JSON..= lambdaArn, "ToolSchema" JSON..= toolSchema]
instance Property "LambdaArn" McpLambdaTargetConfigurationProperty where
  type PropertyType "LambdaArn" McpLambdaTargetConfigurationProperty = Value Prelude.Text
  set newValue McpLambdaTargetConfigurationProperty {..}
    = McpLambdaTargetConfigurationProperty {lambdaArn = newValue, ..}
instance Property "ToolSchema" McpLambdaTargetConfigurationProperty where
  type PropertyType "ToolSchema" McpLambdaTargetConfigurationProperty = ToolSchemaProperty
  set newValue McpLambdaTargetConfigurationProperty {..}
    = McpLambdaTargetConfigurationProperty {toolSchema = newValue, ..}