module Stratosphere.AppFlow.ConnectorProfile.ServiceNowConnectorProfileCredentialsProperty (
        ServiceNowConnectorProfileCredentialsProperty(..),
        mkServiceNowConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceNowConnectorProfileCredentialsProperty
  = ServiceNowConnectorProfileCredentialsProperty {password :: (Value Prelude.Text),
                                                   username :: (Value Prelude.Text)}
mkServiceNowConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ServiceNowConnectorProfileCredentialsProperty
mkServiceNowConnectorProfileCredentialsProperty password username
  = ServiceNowConnectorProfileCredentialsProperty
      {password = password, username = username}
instance ToResourceProperties ServiceNowConnectorProfileCredentialsProperty where
  toResourceProperties
    ServiceNowConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.ServiceNowConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON ServiceNowConnectorProfileCredentialsProperty where
  toJSON ServiceNowConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" ServiceNowConnectorProfileCredentialsProperty where
  type PropertyType "Password" ServiceNowConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ServiceNowConnectorProfileCredentialsProperty {..}
    = ServiceNowConnectorProfileCredentialsProperty
        {password = newValue, ..}
instance Property "Username" ServiceNowConnectorProfileCredentialsProperty where
  type PropertyType "Username" ServiceNowConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue ServiceNowConnectorProfileCredentialsProperty {..}
    = ServiceNowConnectorProfileCredentialsProperty
        {username = newValue, ..}