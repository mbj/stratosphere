module Stratosphere.DataZone.Connection.UsernamePasswordProperty (
        UsernamePasswordProperty(..), mkUsernamePasswordProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UsernamePasswordProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-usernamepassword.html>
    UsernamePasswordProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-usernamepassword.html#cfn-datazone-connection-usernamepassword-password>
                              password :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-usernamepassword.html#cfn-datazone-connection-usernamepassword-username>
                              username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUsernamePasswordProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> UsernamePasswordProperty
mkUsernamePasswordProperty password username
  = UsernamePasswordProperty
      {haddock_workaround_ = (), password = password,
       username = username}
instance ToResourceProperties UsernamePasswordProperty where
  toResourceProperties UsernamePasswordProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.UsernamePassword",
         supportsTags = Prelude.False,
         properties = ["Password" JSON..= password,
                       "Username" JSON..= username]}
instance JSON.ToJSON UsernamePasswordProperty where
  toJSON UsernamePasswordProperty {..}
    = JSON.object
        ["Password" JSON..= password, "Username" JSON..= username]
instance Property "Password" UsernamePasswordProperty where
  type PropertyType "Password" UsernamePasswordProperty = Value Prelude.Text
  set newValue UsernamePasswordProperty {..}
    = UsernamePasswordProperty {password = newValue, ..}
instance Property "Username" UsernamePasswordProperty where
  type PropertyType "Username" UsernamePasswordProperty = Value Prelude.Text
  set newValue UsernamePasswordProperty {..}
    = UsernamePasswordProperty {username = newValue, ..}