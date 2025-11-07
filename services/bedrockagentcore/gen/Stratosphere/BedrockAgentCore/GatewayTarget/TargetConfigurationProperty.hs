module Stratosphere.BedrockAgentCore.GatewayTarget.TargetConfigurationProperty (
        module Exports, TargetConfigurationProperty(..),
        mkTargetConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.McpTargetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data TargetConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-targetconfiguration.html>
    TargetConfigurationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-targetconfiguration.html#cfn-bedrockagentcore-gatewaytarget-targetconfiguration-mcp>
                                 mcp :: McpTargetConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetConfigurationProperty ::
  McpTargetConfigurationProperty -> TargetConfigurationProperty
mkTargetConfigurationProperty mcp
  = TargetConfigurationProperty {haddock_workaround_ = (), mcp = mcp}
instance ToResourceProperties TargetConfigurationProperty where
  toResourceProperties TargetConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.TargetConfiguration",
         supportsTags = Prelude.False, properties = ["Mcp" JSON..= mcp]}
instance JSON.ToJSON TargetConfigurationProperty where
  toJSON TargetConfigurationProperty {..}
    = JSON.object ["Mcp" JSON..= mcp]
instance Property "Mcp" TargetConfigurationProperty where
  type PropertyType "Mcp" TargetConfigurationProperty = McpTargetConfigurationProperty
  set newValue TargetConfigurationProperty {..}
    = TargetConfigurationProperty {mcp = newValue, ..}