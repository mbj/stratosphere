module Stratosphere.BedrockAgentCore.Gateway.MCPGatewayConfigurationProperty (
        MCPGatewayConfigurationProperty(..),
        mkMCPGatewayConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MCPGatewayConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-mcpgatewayconfiguration.html>
    MCPGatewayConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-mcpgatewayconfiguration.html#cfn-bedrockagentcore-gateway-mcpgatewayconfiguration-instructions>
                                     instructions :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-mcpgatewayconfiguration.html#cfn-bedrockagentcore-gateway-mcpgatewayconfiguration-searchtype>
                                     searchType :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gateway-mcpgatewayconfiguration.html#cfn-bedrockagentcore-gateway-mcpgatewayconfiguration-supportedversions>
                                     supportedVersions :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMCPGatewayConfigurationProperty ::
  MCPGatewayConfigurationProperty
mkMCPGatewayConfigurationProperty
  = MCPGatewayConfigurationProperty
      {haddock_workaround_ = (), instructions = Prelude.Nothing,
       searchType = Prelude.Nothing, supportedVersions = Prelude.Nothing}
instance ToResourceProperties MCPGatewayConfigurationProperty where
  toResourceProperties MCPGatewayConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::Gateway.MCPGatewayConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Instructions" Prelude.<$> instructions,
                            (JSON..=) "SearchType" Prelude.<$> searchType,
                            (JSON..=) "SupportedVersions" Prelude.<$> supportedVersions])}
instance JSON.ToJSON MCPGatewayConfigurationProperty where
  toJSON MCPGatewayConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Instructions" Prelude.<$> instructions,
               (JSON..=) "SearchType" Prelude.<$> searchType,
               (JSON..=) "SupportedVersions" Prelude.<$> supportedVersions]))
instance Property "Instructions" MCPGatewayConfigurationProperty where
  type PropertyType "Instructions" MCPGatewayConfigurationProperty = Value Prelude.Text
  set newValue MCPGatewayConfigurationProperty {..}
    = MCPGatewayConfigurationProperty
        {instructions = Prelude.pure newValue, ..}
instance Property "SearchType" MCPGatewayConfigurationProperty where
  type PropertyType "SearchType" MCPGatewayConfigurationProperty = Value Prelude.Text
  set newValue MCPGatewayConfigurationProperty {..}
    = MCPGatewayConfigurationProperty
        {searchType = Prelude.pure newValue, ..}
instance Property "SupportedVersions" MCPGatewayConfigurationProperty where
  type PropertyType "SupportedVersions" MCPGatewayConfigurationProperty = ValueList Prelude.Text
  set newValue MCPGatewayConfigurationProperty {..}
    = MCPGatewayConfigurationProperty
        {supportedVersions = Prelude.pure newValue, ..}