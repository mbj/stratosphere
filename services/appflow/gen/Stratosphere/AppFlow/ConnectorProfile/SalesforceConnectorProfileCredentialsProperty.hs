module Stratosphere.AppFlow.ConnectorProfile.SalesforceConnectorProfileCredentialsProperty (
        module Exports, SalesforceConnectorProfileCredentialsProperty(..),
        mkSalesforceConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.ConnectorOAuthRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SalesforceConnectorProfileCredentialsProperty
  = SalesforceConnectorProfileCredentialsProperty {accessToken :: (Prelude.Maybe (Value Prelude.Text)),
                                                   clientCredentialsArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                   connectorOAuthRequest :: (Prelude.Maybe ConnectorOAuthRequestProperty),
                                                   refreshToken :: (Prelude.Maybe (Value Prelude.Text))}
mkSalesforceConnectorProfileCredentialsProperty ::
  SalesforceConnectorProfileCredentialsProperty
mkSalesforceConnectorProfileCredentialsProperty
  = SalesforceConnectorProfileCredentialsProperty
      {accessToken = Prelude.Nothing,
       clientCredentialsArn = Prelude.Nothing,
       connectorOAuthRequest = Prelude.Nothing,
       refreshToken = Prelude.Nothing}
instance ToResourceProperties SalesforceConnectorProfileCredentialsProperty where
  toResourceProperties
    SalesforceConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SalesforceConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessToken" Prelude.<$> accessToken,
                            (JSON..=) "ClientCredentialsArn" Prelude.<$> clientCredentialsArn,
                            (JSON..=) "ConnectorOAuthRequest"
                              Prelude.<$> connectorOAuthRequest,
                            (JSON..=) "RefreshToken" Prelude.<$> refreshToken])}
instance JSON.ToJSON SalesforceConnectorProfileCredentialsProperty where
  toJSON SalesforceConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessToken" Prelude.<$> accessToken,
               (JSON..=) "ClientCredentialsArn" Prelude.<$> clientCredentialsArn,
               (JSON..=) "ConnectorOAuthRequest"
                 Prelude.<$> connectorOAuthRequest,
               (JSON..=) "RefreshToken" Prelude.<$> refreshToken]))
instance Property "AccessToken" SalesforceConnectorProfileCredentialsProperty where
  type PropertyType "AccessToken" SalesforceConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SalesforceConnectorProfileCredentialsProperty {..}
    = SalesforceConnectorProfileCredentialsProperty
        {accessToken = Prelude.pure newValue, ..}
instance Property "ClientCredentialsArn" SalesforceConnectorProfileCredentialsProperty where
  type PropertyType "ClientCredentialsArn" SalesforceConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SalesforceConnectorProfileCredentialsProperty {..}
    = SalesforceConnectorProfileCredentialsProperty
        {clientCredentialsArn = Prelude.pure newValue, ..}
instance Property "ConnectorOAuthRequest" SalesforceConnectorProfileCredentialsProperty where
  type PropertyType "ConnectorOAuthRequest" SalesforceConnectorProfileCredentialsProperty = ConnectorOAuthRequestProperty
  set newValue SalesforceConnectorProfileCredentialsProperty {..}
    = SalesforceConnectorProfileCredentialsProperty
        {connectorOAuthRequest = Prelude.pure newValue, ..}
instance Property "RefreshToken" SalesforceConnectorProfileCredentialsProperty where
  type PropertyType "RefreshToken" SalesforceConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SalesforceConnectorProfileCredentialsProperty {..}
    = SalesforceConnectorProfileCredentialsProperty
        {refreshToken = Prelude.pure newValue, ..}