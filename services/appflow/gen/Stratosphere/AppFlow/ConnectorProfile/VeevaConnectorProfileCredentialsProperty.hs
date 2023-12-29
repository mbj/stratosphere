module Stratosphere.AppFlow.ConnectorProfile.VeevaConnectorProfileCredentialsProperty (
        VeevaConnectorProfileCredentialsProperty(..),
        mkVeevaConnectorProfileCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VeevaConnectorProfileCredentialsProperty
  = VeevaConnectorProfileCredentialsProperty {password :: (Value Prelude.Text),
                                              username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVeevaConnectorProfileCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> VeevaConnectorProfileCredentialsProperty
mkVeevaConnectorProfileCredentialsProperty password username
  = VeevaConnectorProfileCredentialsProperty
      {password = password, username = username}
instance ToResourceProperties VeevaConnectorProfileCredentialsProperty where
  toResourceProperties VeevaConnectorProfileCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.VeevaConnectorProfileCredentials",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON VeevaConnectorProfileCredentialsProperty where
  toJSON VeevaConnectorProfileCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" VeevaConnectorProfileCredentialsProperty where
  type PropertyType "Password" VeevaConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue VeevaConnectorProfileCredentialsProperty {..}
    = VeevaConnectorProfileCredentialsProperty
        {password = newValue, ..}
instance Property "Username" VeevaConnectorProfileCredentialsProperty where
  type PropertyType "Username" VeevaConnectorProfileCredentialsProperty = Value Prelude.Text
  set newValue VeevaConnectorProfileCredentialsProperty {..}
    = VeevaConnectorProfileCredentialsProperty
        {username = newValue, ..}