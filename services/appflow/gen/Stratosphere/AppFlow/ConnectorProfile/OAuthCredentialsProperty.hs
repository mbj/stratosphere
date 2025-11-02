module Stratosphere.AppFlow.ConnectorProfile.OAuthCredentialsProperty (
        module Exports, OAuthCredentialsProperty(..),
        mkOAuthCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuthCredentialsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html>
    OAuthCredentialsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html#cfn-appflow-connectorprofile-oauthcredentials-accesstoken>
                              accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html#cfn-appflow-connectorprofile-oauthcredentials-clientid>
                              clientId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html#cfn-appflow-connectorprofile-oauthcredentials-clientsecret>
                              clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html#cfn-appflow-connectorprofile-oauthcredentials-connectoroauthrequest>
                              connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-connectorprofile-oauthcredentials.html#cfn-appflow-connectorprofile-oauthcredentials-refreshtoken>
                              refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOAuthCredentialsProperty :: OAuthCredentialsProperty
mkOAuthCredentialsProperty
  = OAuthCredentialsProperty
      {haddock_workaround_ = (), accessToken = Prelude.Nothing,
       clientId = Prelude.Nothing, clientSecret = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties OAuthCredentialsProperty where
  toResourceProperties OAuthCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.OAuthCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                            (JSON..=) "ConnectorOAuthRequest"
                              Prelude.<$> connectorOAuthRequest,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON OAuthCredentialsProperty where
  toJSON OAuthCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
               (JSON..=) "ConnectorOAuthRequest"
                 Prelude.<$> connectorOAuthRequest,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" OAuthCredentialsProperty where
  type PropertyType "AccessToken" OAuthCredentialsProperty = Value Prelude.Text
  set newValue OAuthCredentialsProperty {..}
    = OAuthCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" OAuthCredentialsProperty where
  type PropertyType "ClientId" OAuthCredentialsProperty = Value Prelude.Text
  set newValue OAuthCredentialsProperty {..}
    = OAuthCredentialsProperty {clientId = Prelude.pure newValue, ..}
instance Property "ClientSecret" OAuthCredentialsProperty where
  type PropertyType "ClientSecret" OAuthCredentialsProperty = Value Prelude.Text
  set newValue OAuthCredentialsProperty {..}
    = OAuthCredentialsProperty
        {clientSecret = Prelude.pure newValue, ..}
instance Property "ConnectorOAuthRequest" OAuthCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" OAuthCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue OAuthCredentialsProperty {..}
    = OAuthCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}
instance Property "RefreshToken" OAuthCredentialsProperty where
  type PropertyType "RefreshToken" OAuthCredentialsProperty = Value Prelude.Text
  set newValue OAuthCredentialsProperty {..}
    = OAuthCredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}