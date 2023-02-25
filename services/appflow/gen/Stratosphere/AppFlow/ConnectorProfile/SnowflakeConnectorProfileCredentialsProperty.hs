module Stratosphere.AppFlow.ConnectorProfile.SnowflakeConnectorProfileCredentialsProperty (
        SnowflakeConnectorProfileCredentialsProperty(..),
        mkSnowflakeConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeConnectorProfileCredentialsProperty
  = SnowflakeConnectorProfileCredentialsProperty {password :: (Value Prelude.Text),
                                                  username :: (Value Prelude.Text)}
mkSnowflakeConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> SnowflakeConnectorProfileCredentialsProperty
mkSnowflakeConnectorProfileCredentialsProperty password username
  = SnowflakeConnectorProfileCredentialsProperty
      {password = password, username = username}
instance ToResourceProperties SnowflakeConnectorProfileCredentialsProperty where
  toResourceProperties
    SnowflakeConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.SnowflakeConnectorProfileCredentials",
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON SnowflakeConnectorProfileCredentialsProperty where
  toJSON SnowflakeConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" SnowflakeConnectorProfileCredentialsProperty where
  type PropertyType "Password" SnowflakeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfileCredentialsProperty {..}
    = SnowflakeConnectorProfileCredentialsProperty
        {password = newValue, ..}
instance Property "Username" SnowflakeConnectorProfileCredentialsProperty where
  type PropertyType "Username" SnowflakeConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue SnowflakeConnectorProfileCredentialsProperty {..}
    = SnowflakeConnectorProfileCredentialsProperty
        {username = newValue, ..}