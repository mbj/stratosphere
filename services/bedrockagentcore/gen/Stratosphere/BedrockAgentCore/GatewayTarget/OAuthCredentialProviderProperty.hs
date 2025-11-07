module Stratosphere.BedrockAgentCore.GatewayTarget.OAuthCredentialProviderProperty (
        OAuthCredentialProviderProperty(..),
        mkOAuthCredentialProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuthCredentialProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-oauthcredentialprovider.html>
    OAuthCredentialProviderProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-oauthcredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-oauthcredentialprovider-customparameters>
                                     customParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-oauthcredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-oauthcredentialprovider-providerarn>
                                     providerArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-oauthcredentialprovider.html#cfn-bedrockagentcore-gatewaytarget-oauthcredentialprovider-scopes>
                                     scopes :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthCredentialProviderProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> OAuthCredentialProviderProperty
mkOAuthCredentialProviderProperty providerArn scopes
  = OAuthCredentialProviderProperty
      {haddock_workaround_ = (), providerArn = providerArn,
       scopes = scopes, customParameters = Prelude.Nothing}
instance ToResourceProperties OAuthCredentialProviderProperty where
  toResourceProperties OAuthCredentialProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.OAuthCredentialProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProviderArn" JSON..= providerArn, "Scopes" JSON..= scopes]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomParameters" Prelude.<$> customParameters]))}
instance JSON.ToJSON OAuthCredentialProviderProperty where
  toJSON OAuthCredentialProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProviderArn" JSON..= providerArn, "Scopes" JSON..= scopes]
              (Prelude.catMaybes
                 [(JSON..=) "CustomParameters" Prelude.<$> customParameters])))
instance Property "CustomParameters" OAuthCredentialProviderProperty where
  type PropertyType "CustomParameters" OAuthCredentialProviderProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue OAuthCredentialProviderProperty {..}
    = OAuthCredentialProviderProperty
        {customParameters = Prelude.pure newValue, ..}
instance Property "ProviderArn" OAuthCredentialProviderProperty where
  type PropertyType "ProviderArn" OAuthCredentialProviderProperty = Value Prelude.Text
  set newValue OAuthCredentialProviderProperty {..}
    = OAuthCredentialProviderProperty {providerArn = newValue, ..}
instance Property "Scopes" OAuthCredentialProviderProperty where
  type PropertyType "Scopes" OAuthCredentialProviderProperty = ValueList Prelude.Text
  set newValue OAuthCredentialProviderProperty {..}
    = OAuthCredentialProviderProperty {scopes = newValue, ..}