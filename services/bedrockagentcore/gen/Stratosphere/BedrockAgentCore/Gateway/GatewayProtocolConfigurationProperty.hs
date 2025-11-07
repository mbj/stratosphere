module Stratosphere.BedrockAgentCore.Gateway.GatewayProtocolConfigurationProperty (
        module Exports, GatewayProtocolConfigurationProperty(..),
        mkGatewayProtocolConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.Gateway.MCPGatewayConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data GatewayProtocolConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayprotocolconfiguration.html>
    GatewayProtocolConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-gatewayprotocolconfiguration.html#cfn-bedrockagentcore-gateway-gatewayprotocolconfiguration-mcp>
                                          mcp :: MCPGatewayConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayProtocolConfigurationProperty ::
  MCPGatewayConfigurationProperty
  -> GatewayProtocolConfigurationProperty
mkGatewayProtocolConfigurationProperty mcp
  = GatewayProtocolConfigurationProperty
      {haddock_workaround_ = (), mcp = mcp}
instance ToResourceProperties GatewayProtocolConfigurationProperty where
  toResourceProperties GatewayProtocolConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Gateway.GatewayProtocolConfiguration",
         supportsTags = Prelude.False, properties = ["Mcp" JSON..= mcp]}
instance JSON.ToJSON GatewayProtocolConfigurationProperty where
  toJSON GatewayProtocolConfigurationProperty {..}
    = JSON.object ["Mcp" JSON..= mcp]
instance Property "Mcp" GatewayProtocolConfigurationProperty where
  type PropertyType "Mcp" GatewayProtocolConfigurationProperty = MCPGatewayConfigurationProperty
  set newValue GatewayProtocolConfigurationProperty {..}
    = GatewayProtocolConfigurationProperty {mcp = newValue, ..}