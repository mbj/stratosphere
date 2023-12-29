module Stratosphere.Events.Connection.BasicAuthParametersProperty (
        BasicAuthParametersProperty(..), mkBasicAuthParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BasicAuthParametersProperty
  = BasicAuthParametersProperty {password :: (Value Prelude.Text),
                                 username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBasicAuthParametersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> BasicAuthParametersProperty
mkBasicAuthParametersProperty password username
  = BasicAuthParametersProperty
      {password = password, username = username}
instance ToResourceProperties BasicAuthParametersProperty where
  toResourceProperties BasicAuthParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Connection.BasicAuthParameters",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON BasicAuthParametersProperty where
  toJSON BasicAuthParametersProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" BasicAuthParametersProperty where
  type PropertyType "Password" BasicAuthParametersProperty = Value Prelude.Text
  set newValue BasicAuthParametersProperty {..}
    = BasicAuthParametersProperty {password = newValue, ..}
instance Property "Username" BasicAuthParametersProperty where
  type PropertyType "Username" BasicAuthParametersProperty = Value Prelude.Text
  set newValue BasicAuthParametersProperty {..}
    = BasicAuthParametersProperty {username = newValue, ..}