module Stratosphere.AppFlow.ConnectorProfile.ServiceNowConnectorProfileCredentialsProperty (
        module Exports, ServiceNowConnectorProfileCredentialsProperty(..),
        mkServiceNowConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.ConnectorProfile.OAuth2CredentialsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowConnectorProfileCredentialsProperty
  = ServiceNowConnectorProfileCredentialsProperty {oAuth2Credentials :: (Prelude.Maybe OAuth2CredentialsProperty),
                                                   password :: (Prelude.Maybe (Value Prelude.Text)),
                                                   username :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNowConnectorProfileCredentialsProperty ::
  ServiceNowConnectorProfileCredentialsProperty
mkServiceNowConnectorProfileCredentialsProperty
  = ServiceNowConnectorProfileCredentialsProperty
      {oAuth2Credentials = Prelude.Nothing, password = Prelude.Nothing,
       username = Prelude.Nothing}
instance ToResourceProperties ServiceNowConnectorProfileCredentialsProperty where
  toResourceProperties
    ServiceNowConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ServiceNowConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OAuth2Credentials" Prelude.<$> oAuth2Credentials,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Username" Prelude.<$> username])}
instance JSON.ToJSON ServiceNowConnectorProfileCredentialsProperty where
  toJSON ServiceNowConnectorProfileCredentialsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OAuth2Credentials" Prelude.<$> oAuth2Credentials,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Username" Prelude.<$> username]))
instance Property "OAuth2Credentials" ServiceNowConnectorProfileCredentialsProperty where
  type PropertyType "OAuth2Credentials" ServiceNowConnectorProfileCredentialsProperty = OAuth2CredentialsProperty
  set newValue ServiceNowConnectorProfileCredentialsProperty {..}
    = ServiceNowConnectorProfileCredentialsProperty
        {oAuth2Credentials = Prelude.pure newValue, ..}
instance Property "Password" ServiceNowConnectorProfileCredentialsProperty where
  type PropertyType "Password" ServiceNowConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ServiceNowConnectorProfileCredentialsProperty {..}
    = ServiceNowConnectorProfileCredentialsProperty
        {password = Prelude.pure newValue, ..}
instance Property "Username" ServiceNowConnectorProfileCredentialsProperty where
  type PropertyType "Username" ServiceNowConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ServiceNowConnectorProfileCredentialsProperty {..}
    = ServiceNowConnectorProfileCredentialsProperty
        {username = Prelude.pure newValue, ..}