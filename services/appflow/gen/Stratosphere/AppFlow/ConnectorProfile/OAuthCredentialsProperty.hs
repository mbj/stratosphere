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
  = OAuthCredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                              clientId :: (Prelude.Maybe (Value Prelude.Text)),
                              clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                              connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                              refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
mkOAuthCredentialsProperty :: OAuthCredentialsProperty
mkOAuthCredentialsProperty
  = OAuthCredentialsProperty
      {accessToken = Prelude.Nothing, clientId = Prelude.Nothing,
       clientSecret = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties OAuthCredentialsProperty where
  toResourceProperties OAuthCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.OAuthCredentials",
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