module Stratosphere.BedrockAgentCore.GatewayTarget (
        module Exports, GatewayTarget(..), mkGatewayTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.CredentialProviderConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.TargetConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayTarget
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html>
    GatewayTarget {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html#cfn-bedrockagentcore-gatewaytarget-credentialproviderconfigurations>
                   credentialProviderConfigurations :: [CredentialProviderConfigurationProperty],
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html#cfn-bedrockagentcore-gatewaytarget-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html#cfn-bedrockagentcore-gatewaytarget-gatewayidentifier>
                   gatewayIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html#cfn-bedrockagentcore-gatewaytarget-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-bedrockagentcore-gatewaytarget.html#cfn-bedrockagentcore-gatewaytarget-targetconfiguration>
                   targetConfiguration :: TargetConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayTarget ::
  [CredentialProviderConfigurationProperty]
  -> Value Prelude.Text
     -> TargetConfigurationProperty -> GatewayTarget
mkGatewayTarget
  credentialProviderConfigurations
  name
  targetConfiguration
  = GatewayTarget
      {haddock_workaround_ = (),
       credentialProviderConfigurations = credentialProviderConfigurations,
       name = name, targetConfiguration = targetConfiguration,
       description = Prelude.Nothing, gatewayIdentifier = Prelude.Nothing}
instance ToResourceProperties GatewayTarget where
  toResourceProperties GatewayTarget {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CredentialProviderConfigurations"
                              JSON..= credentialProviderConfigurations,
                            "Name" JSON..= name,
                            "TargetConfiguration" JSON..= targetConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GatewayIdentifier" Prelude.<$> gatewayIdentifier]))}
instance JSON.ToJSON GatewayTarget where
  toJSON GatewayTarget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CredentialProviderConfigurations"
                 JSON..= credentialProviderConfigurations,
               "Name" JSON..= name,
               "TargetConfiguration" JSON..= targetConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GatewayIdentifier" Prelude.<$> gatewayIdentifier])))
instance Property "CredentialProviderConfigurations" GatewayTarget where
  type PropertyType "CredentialProviderConfigurations" GatewayTarget = [CredentialProviderConfigurationProperty]
  set newValue GatewayTarget {..}
    = GatewayTarget {credentialProviderConfigurations = newValue, ..}
instance Property "Description" GatewayTarget where
  type PropertyType "Description" GatewayTarget = Value Prelude.Text
  set newValue GatewayTarget {..}
    = GatewayTarget {description = Prelude.pure newValue, ..}
instance Property "GatewayIdentifier" GatewayTarget where
  type PropertyType "GatewayIdentifier" GatewayTarget = Value Prelude.Text
  set newValue GatewayTarget {..}
    = GatewayTarget {gatewayIdentifier = Prelude.pure newValue, ..}
instance Property "Name" GatewayTarget where
  type PropertyType "Name" GatewayTarget = Value Prelude.Text
  set newValue GatewayTarget {..}
    = GatewayTarget {name = newValue, ..}
instance Property "TargetConfiguration" GatewayTarget where
  type PropertyType "TargetConfiguration" GatewayTarget = TargetConfigurationProperty
  set newValue GatewayTarget {..}
    = GatewayTarget {targetConfiguration = newValue, ..}