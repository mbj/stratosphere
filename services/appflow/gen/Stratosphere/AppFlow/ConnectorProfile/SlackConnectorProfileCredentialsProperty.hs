module Stratosphere.AppFlow.ConnectorProfile.SlackConnectorProfileCredentialsProperty (
        module Exports, SlackConnectorProfileCredentialsProperty(..),
        mkSlackConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SlackConnectorProfileCredentialsProperty
  = SlackConnectorProfileCredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                              clientId :: (Value Prelude.Text),
                                              clientSecret :: (Value Prelude.Text),
                                              connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty)}
mkSlackConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SlackConnectorProfileCredentialsProperty
mkSlackConnectorProfileCredentialsProperty clientId clientSecret
  = SlackConnectorProfileCredentialsProperty
      {clientId = clientId, clientSecret = clientSecret,
       accessToken = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing}
instance ToResourceProperties SlackConnectorProfileCredentialsProperty where
  toResourceProperties SlackConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SlackConnectorProfileCredentials",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "ConnectorOAuthRequest"
                                 Prelude.<$> connectorOAuthRequest]))}
instance JSON.ToJSON SlackConnectorProfileCredentialsProperty where
  toJSON SlackConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "ConnectorOAuthRequest"
                    Prelude.<$> connectorOAuthRequest])))
instance Property "AccessToken" SlackConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ClientId" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {clientId = newValue, ..}
instance Property "ClientSecret" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ClientSecret" SlackConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {clientSecret = newValue, ..}
instance Property "ConnectorOAuthRequest" SlackConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" SlackConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue SlackConnectorProfileCredentialsProperty {..}
    = SlackConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}