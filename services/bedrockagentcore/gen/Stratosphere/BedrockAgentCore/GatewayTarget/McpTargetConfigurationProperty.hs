module Stratosphere.BedrockAgentCore.GatewayTarget.McpTargetConfigurationProperty (
        module Exports, McpTargetConfigurationProperty(..),
        mkMcpTargetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.ApiSchemaConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.McpLambdaTargetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data McpTargetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html>
    McpTargetConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-lambda>
                                    lambda :: (Prelude.Maybe McpLambdaTargetConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-openapischema>
                                    openApiSchema :: (Prelude.Maybe ApiSchemaConfigurationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-mcptargetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-mcptargetconfiguration-smithymodel>
                                    smithyModel :: (Prelude.Maybe ApiSchemaConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMcpTargetConfigurationProperty :: McpTargetConfigurationProperty
mkMcpTargetConfigurationProperty
  = McpTargetConfigurationProperty
      {haddock_workaround_ = (), lambda = Prelude.Nothing,
       openApiSchema = Prelude.Nothing, smithyModel = Prelude.Nothing}
instance ToResourceProperties McpTargetConfigurationProperty where
  toResourceProperties McpTargetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.McpTargetConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Lambda" Prelude.<$> lambda,
                            (JSON..=) "OpenApiSchema" Prelude.<$> openApiSchema,
                            (JSON..=) "SmithyModel" Prelude.<$> smithyModel])}
instance JSON.ToJSON McpTargetConfigurationProperty where
  toJSON McpTargetConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Lambda" Prelude.<$> lambda,
               (JSON..=) "OpenApiSchema" Prelude.<$> openApiSchema,
               (JSON..=) "SmithyModel" Prelude.<$> smithyModel]))
instance Property "Lambda" McpTargetConfigurationProperty where
  type PropertyType "Lambda" McpTargetConfigurationProperty = McpLambdaTargetConfigurationProperty
  set newValue McpTargetConfigurationProperty {..}
    = McpTargetConfigurationProperty
        {lambda = Prelude.pure newValue, ..}
instance Property "OpenApiSchema" McpTargetConfigurationProperty where
  type PropertyType "OpenApiSchema" McpTargetConfigurationProperty = ApiSchemaConfigurationProperty
  set newValue McpTargetConfigurationProperty {..}
    = McpTargetConfigurationProperty
        {openApiSchema = Prelude.pure newValue, ..}
instance Property "SmithyModel" McpTargetConfigurationProperty where
  type PropertyType "SmithyModel" McpTargetConfigurationProperty = ApiSchemaConfigurationProperty
  set newValue McpTargetConfigurationProperty {..}
    = McpTargetConfigurationProperty
        {smithyModel = Prelude.pure newValue, ..}