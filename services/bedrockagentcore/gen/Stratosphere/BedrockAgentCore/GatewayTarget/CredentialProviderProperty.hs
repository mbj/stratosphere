module Stratosphere.BedrockAgentCore.GatewayTarget.CredentialProviderProperty (
        module Exports, CredentialProviderProperty(..),
        mkCredentialProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.ApiKeyCredentialProviderProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.OAuthCredentialProviderProperty as Exports
import Stratosphere.ResourceProperties
data CredentialProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html>
    CredentialProviderProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html#cfn-bedrockagentcore-gatewaytarget-credentialprovider-apikeycredentialprovider>
                                apiKeyCredentialProvider :: (Prelude.Maybe ApiKeyCredentialProviderProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-credentialprovider.html#cfn-bedrockagentcore-gatewaytarget-credentialprovider-oauthcredentialprovider>
                                oauthCredentialProvider :: (Prelude.Maybe OAuthCredentialProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCredentialProviderProperty :: CredentialProviderProperty
mkCredentialProviderProperty
  = CredentialProviderProperty
      {haddock_workaround_ = (),
       apiKeyCredentialProvider = Prelude.Nothing,
       oauthCredentialProvider = Prelude.Nothing}
instance ToResourceProperties CredentialProviderProperty where
  toResourceProperties CredentialProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.CredentialProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ApiKeyCredentialProvider"
                              Prelude.<$> apiKeyCredentialProvider,
                            (JSON..=) "OauthCredentialProvider"
                              Prelude.<$> oauthCredentialProvider])}
instance JSON.ToJSON CredentialProviderProperty where
  toJSON CredentialProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ApiKeyCredentialProvider"
                 Prelude.<$> apiKeyCredentialProvider,
               (JSON..=) "OauthCredentialProvider"
                 Prelude.<$> oauthCredentialProvider]))
instance Property "ApiKeyCredentialProvider" CredentialProviderProperty where
  type PropertyType "ApiKeyCredentialProvider" CredentialProviderProperty = ApiKeyCredentialProviderProperty
  set newValue CredentialProviderProperty {..}
    = CredentialProviderProperty
        {apiKeyCredentialProvider = Prelude.pure newValue, ..}
instance Property "OauthCredentialProvider" CredentialProviderProperty where
  type PropertyType "OauthCredentialProvider" CredentialProviderProperty = OAuthCredentialProviderProperty
  set newValue CredentialProviderProperty {..}
    = CredentialProviderProperty
        {oauthCredentialProvider = Prelude.pure newValue, ..}