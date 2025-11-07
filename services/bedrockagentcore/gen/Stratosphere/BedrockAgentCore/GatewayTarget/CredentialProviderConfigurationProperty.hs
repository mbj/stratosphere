module Stratosphere.BedrockAgentCore.GatewayTarget.CredentialProviderConfigurationProperty (
        module Exports, CredentialProviderConfigurationProperty(..),
        mkCredentialProviderConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.CredentialProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CredentialProviderConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialproviderconfiguration.html>
    CredentialProviderConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialproviderconfiguration.html#cfn-bedrockagentcore-gatewaytarget-credentialproviderconfiguration-credentialprovider>
                                             credentialProvider :: (Prelude.Maybe CredentialProviderProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialproviderconfiguration.html#cfn-bedrockagentcore-gatewaytarget-credentialproviderconfiguration-credentialprovidertype>
                                             credentialProviderType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCredentialProviderConfigurationProperty ::
  Value Prelude.Text -> CredentialProviderConfigurationProperty
mkCredentialProviderConfigurationProperty credentialProviderType
  = CredentialProviderConfigurationProperty
      {haddock_workaround_ = (),
       credentialProviderType = credentialProviderType,
       credentialProvider = Prelude.Nothing}
instance ToResourceProperties CredentialProviderConfigurationProperty where
  toResourceProperties CredentialProviderConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.CredentialProviderConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CredentialProviderType" JSON..= credentialProviderType]
                           (Prelude.catMaybes
                              [(JSON..=) "CredentialProvider" Prelude.<$> credentialProvider]))}
instance JSON.ToJSON CredentialProviderConfigurationProperty where
  toJSON CredentialProviderConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CredentialProviderType" JSON..= credentialProviderType]
              (Prelude.catMaybes
                 [(JSON..=) "CredentialProvider" Prelude.<$> credentialProvider])))
instance Property "CredentialProvider" CredentialProviderConfigurationProperty where
  type PropertyType "CredentialProvider" CredentialProviderConfigurationProperty = CredentialProviderProperty
  set newValue CredentialProviderConfigurationProperty {..}
    = CredentialProviderConfigurationProperty
        {credentialProvider = Prelude.pure newValue, ..}
instance Property "CredentialProviderType" CredentialProviderConfigurationProperty where
  type PropertyType "CredentialProviderType" CredentialProviderConfigurationProperty = Value Prelude.Text
  set newValue CredentialProviderConfigurationProperty {..}
    = CredentialProviderConfigurationProperty
        {credentialProviderType = newValue, ..}