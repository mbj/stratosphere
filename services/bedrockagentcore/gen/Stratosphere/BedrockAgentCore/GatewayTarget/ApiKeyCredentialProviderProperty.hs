module Stratosphere.BedrockAgentCore.GatewayTarget.ApiKeyCredentialProviderProperty (
        ApiKeyCredentialProviderProperty(..),
        mkApiKeyCredentialProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiKeyCredentialProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apikeycredentialprovider.html>
    ApiKeyCredentialProviderProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apikeycredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-apikeycredentialprovider-credentiallocation>
                                      credentialLocation :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apikeycredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-apikeycredentialprovider-credentialparametername>
                                      credentialParameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apikeycredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-apikeycredentialprovider-credentialprefix>
                                      credentialPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-apikeycredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-apikeycredentialprovider-providerarn>
                                      providerArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiKeyCredentialProviderProperty ::
  Value Prelude.Text -> ApiKeyCredentialProviderProperty
mkApiKeyCredentialProviderProperty providerArn
  = ApiKeyCredentialProviderProperty
      {haddock_workaround_ = (), providerArn = providerArn,
       credentialLocation = Prelude.Nothing,
       credentialParameterName = Prelude.Nothing,
       credentialPrefix = Prelude.Nothing}
instance ToResourceProperties ApiKeyCredentialProviderProperty where
  toResourceProperties ApiKeyCredentialProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.ApiKeyCredentialProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderArn" JSON..= providerArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CredentialLocation" Prelude.<$> credentialLocation,
                               (JSON..=) "CredentialParameterName"
                                 Prelude.<$> credentialParameterName,
                               (JSON..=) "CredentialPrefix" Prelude.<$> credentialPrefix]))}
instance JSON.ToJSON ApiKeyCredentialProviderProperty where
  toJSON ApiKeyCredentialProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderArn" JSON..= providerArn]
              (Prelude.catMaybes
                 [(JSON..=) "CredentialLocation" Prelude.<$> credentialLocation,
                  (JSON..=) "CredentialParameterName"
                    Prelude.<$> credentialParameterName,
                  (JSON..=) "CredentialPrefix" Prelude.<$> credentialPrefix])))
instance Property "CredentialLocation" ApiKeyCredentialProviderProperty where
  type PropertyType "CredentialLocation" ApiKeyCredentialProviderProperty = Value Prelude.Text
  set newValue ApiKeyCredentialProviderProperty {..}
    = ApiKeyCredentialProviderProperty
        {credentialLocation = Prelude.pure newValue, ..}
instance Property "CredentialParameterName" ApiKeyCredentialProviderProperty where
  type PropertyType "CredentialParameterName" ApiKeyCredentialProviderProperty = Value Prelude.Text
  set newValue ApiKeyCredentialProviderProperty {..}
    = ApiKeyCredentialProviderProperty
        {credentialParameterName = Prelude.pure newValue, ..}
instance Property "CredentialPrefix" ApiKeyCredentialProviderProperty where
  type PropertyType "CredentialPrefix" ApiKeyCredentialProviderProperty = Value Prelude.Text
  set newValue ApiKeyCredentialProviderProperty {..}
    = ApiKeyCredentialProviderProperty
        {credentialPrefix = Prelude.pure newValue, ..}
instance Property "ProviderArn" ApiKeyCredentialProviderProperty where
  type PropertyType "ProviderArn" ApiKeyCredentialProviderProperty = Value Prelude.Text
  set newValue ApiKeyCredentialProviderProperty {..}
    = ApiKeyCredentialProviderProperty {providerArn = newValue, ..}