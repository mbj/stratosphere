module Stratosphere.AppFlow.ConnectorProfile.MarketoConnectorProfileCredentialsProperty (
        module Exports, MarketoConnectorProfileCredentialsProperty(..),
        mkMarketoConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MarketoConnectorProfileCredentialsProperty
  = MarketoConnectorProfileCredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                                clientId :: (Value Prelude.Text),
                                                clientSecret :: (Value Prelude.Text),
                                                connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMarketoConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MarketoConnectorProfileCredentialsProperty
mkMarketoConnectorProfileCredentialsProperty clientId clientSecret
  = MarketoConnectorProfileCredentialsProperty
      {clientId = clientId, clientSecret = clientSecret,
       accessToken = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing}
instance ToResourceProperties MarketoConnectorProfileCredentialsProperty where
  toResourceProperties
    MarketoConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.MarketoConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                               (JSON..=) "ConnectorOAuthRequest"
                                 Prelude.<$> connectorOAuthRequest]))}
instance JSON.ToJSON MarketoConnectorProfileCredentialsProperty where
  toJSON MarketoConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientId" JSON..= clientId, "ClientSecret" JSON..= clientSecret]
              (Prelude.catMaybes
                 [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                  (JSON..=) "ConnectorOAuthRequest"
                    Prelude.<$> connectorOAuthRequest])))
instance Property "AccessToken" MarketoConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" MarketoConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue MarketoConnectorProfileCredentialsProperty {..}
    = MarketoConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientId" MarketoConnectorProfileCredentialsProperty where
  type PropertyType "ClientId" MarketoConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue MarketoConnectorProfileCredentialsProperty {..}
    = MarketoConnectorProfileCredentialsProperty
        {clientId = newValue, ..}
instance Property "ClientSecret" MarketoConnectorProfileCredentialsProperty where
  type PropertyType "ClientSecret" MarketoConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue MarketoConnectorProfileCredentialsProperty {..}
    = MarketoConnectorProfileCredentialsProperty
        {clientSecret = newValue, ..}
instance Property "ConnectorOAuthRequest" MarketoConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" MarketoConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue MarketoConnectorProfileCredentialsProperty {..}
    = MarketoConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}