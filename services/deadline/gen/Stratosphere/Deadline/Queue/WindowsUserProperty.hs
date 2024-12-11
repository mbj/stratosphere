module Stratosphere.Deadline.Queue.WindowsUserProperty (
        WindowsUserProperty(..), mkWindowsUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowsUserProperty
  = WindowsUserProperty {passwordArn :: (Value Prelude.Text),
                         user :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWindowsUserProperty ::
  Value Prelude.Text -> Value Prelude.Text -> WindowsUserProperty
mkWindowsUserProperty passwordArn user
  = WindowsUserProperty {passwordArn = passwordArn, user = user}
instance ToResourceProperties WindowsUserProperty where
  toResourceProperties WindowsUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Queue.WindowsUser",
         supportsTags = Prelude.False,
         properties = ["PasswordArn" JSON..= passwordArn,
                       "User" JSON..= user]}
instance JSON.ToJSON WindowsUserProperty where
  toJSON WindowsUserProperty {..}
    = JSON.object
        ["PasswordArn" JSON..= passwordArn, "User" JSON..= user]
instance Property "PasswordArn" WindowsUserProperty where
  type PropertyType "PasswordArn" WindowsUserProperty = Value Prelude.Text
  set newValue WindowsUserProperty {..}
    = WindowsUserProperty {passwordArn = newValue, ..}
instance Property "User" WindowsUserProperty where
  type PropertyType "User" WindowsUserProperty = Value Prelude.Text
  set newValue WindowsUserProperty {..}
    = WindowsUserProperty {user = newValue, ..}