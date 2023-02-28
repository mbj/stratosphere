module Stratosphere.AppFlow.ConnectorProfile.OAuth2CredentialsProperty (
        module Exports, OAuth2CredentialsProperty(..),
        mkOAuth2CredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OAuth2CredentialsProperty
  = OAuth2CredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                               clientId :: (Prelude.Maybe (Value Prelude.Text)),
                               clientSecret :: (Prelude.Maybe (Value Prelude.Text)),
                               oAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                               refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
mkOAuth2CredentialsProperty :: OAuth2CredentialsProperty
mkOAuth2CredentialsProperty
  = OAuth2CredentialsProperty
      {accessToken = Prelude.Nothing, clientId = Prelude.Nothing,
       clientSecret = Prelude.Nothing, oAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties OAuth2CredentialsProperty where
  toResourceProperties OAuth2CredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.OAuth2Credentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "ClientId" Prelude.<$> clientId,
                            (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
                            (JSON..=) "OAuthRequest" Prelude.<$> oAuthRequest,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON OAuth2CredentialsProperty where
  toJSON OAuth2CredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "ClientId" Prelude.<$> clientId,
               (JSON..=) "ClientSecret" Prelude.<$> clientSecret,
               (JSON..=) "OAuthRequest" Prelude.<$> oAuthRequest,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" OAuth2CredentialsProperty where
  type PropertyType "AccessToken" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" OAuth2CredentialsProperty where
  type PropertyType "ClientId" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty {clientId = Prelude.pure newValue, ..}
instance Property "ClientSecret" OAuth2CredentialsProperty where
  type PropertyType "ClientSecret" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {clientSecret = Prelude.pure newValue, ..}
instance Property "OAuthRequest" OAuth2CredentialsProperty where
  type PropertyType "OAuthRequest" OAuth2CredentialsProperty = ConnectorOAuthRequestProperty
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {oAuthRequest = Prelude.pure newValue, ..}
instance Property "RefreshToken" OAuth2CredentialsProperty where
  type PropertyType "RefreshToken" OAuth2CredentialsProperty = Value Prelude.Text
  set newValue OAuth2CredentialsProperty {..}
    = OAuth2CredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}