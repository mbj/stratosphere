module Stratosphere.AppFlow.ConnectorProfile.BasicAuthCredentialsProperty (
        BasicAuthCredentialsProperty(..), mkBasicAuthCredentialsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthCredentialsProperty
  = BasicAuthCredentialsProperty {password :: (Value Prelude.Text),
                                  username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthCredentialsProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BasicAuthCredentialsProperty
mkBasicAuthCredentialsProperty password username
  = BasicAuthCredentialsProperty
      {password = password, username = username}
instance ToResourceProperties BasicAuthCredentialsProperty where
  toResourceProperties BasicAuthCredentialsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::ConnectorProfile.BasicAuthCredentials",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON BasicAuthCredentialsProperty where
  toJSON BasicAuthCredentialsProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" BasicAuthCredentialsProperty where
  type PropertyType "Password" BasicAuthCredentialsProperty = Value Prelude.Text
  set newValue BasicAuthCredentialsProperty {..}
    = BasicAuthCredentialsProperty {password = newValue, ..}
instance Property "Username" BasicAuthCredentialsProperty where
  type PropertyType "Username" BasicAuthCredentialsProperty = Value Prelude.Text
  set newValue BasicAuthCredentialsProperty {..}
    = BasicAuthCredentialsProperty {username = newValue, ..}