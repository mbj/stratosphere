module Stratosphere.AppFlow.ConnectorProfile.PardotConnectorProfileCredentialsProperty (
        module Exports, PardotConnectorProfileCredentialsProperty(..),
        mkPardotConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PardotConnectorProfileCredentialsProperty
  = PardotConnectorProfileCredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                               clientCredentialsArn :: (Prelude.Maybe (Value Prelude.Text)),
                                               connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                                               refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
mkPardotConnectorProfileCredentialsProperty ::
  PardotConnectorProfileCredentialsProperty
mkPardotConnectorProfileCredentialsProperty
  = PardotConnectorProfileCredentialsProperty
      {accessToken = Prelude.Nothing,
       clientCredentialsArn = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties PardotConnectorProfileCredentialsProperty where
  toResourceProperties PardotConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.PardotConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "ClientCredentialsArn" Prelude.<$> clientCredentialsArn,
                            (JSON..=) "ConnectorOAuthRequest"
                              Prelude.<$> connectorOAuthRequest,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON PardotConnectorProfileCredentialsProperty where
  toJSON PardotConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "ClientCredentialsArn" Prelude.<$> clientCredentialsArn,
               (JSON..=) "ConnectorOAuthRequest"
                 Prelude.<$> connectorOAuthRequest,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" PardotConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" PardotConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue PardotConnectorProfileCredentialsProperty {..}
    = PardotConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientCredentialsArn" PardotConnectorProfileCredentialsProperty where
  type PropertyType "ClientCredentialsArn" PardotConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue PardotConnectorProfileCredentialsProperty {..}
    = PardotConnectorProfileCredentialsProperty
        {clientCredentialsArn = Prelude.pure newValue, ..}
instance Property "ConnectorOAuthRequest" PardotConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" PardotConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue PardotConnectorProfileCredentialsProperty {..}
    = PardotConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}
instance Property "RefreshToken" PardotConnectorProfileCredentialsProperty where
  type PropertyType "RefreshToken" PardotConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue PardotConnectorProfileCredentialsProperty {..}
    = PardotConnectorProfileCredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}