module Stratosphere.Deadline.Queue.PosixUserProperty (
        PosixUserProperty(..), mkPosixUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PosixUserProperty
  = PosixUserProperty {group :: (Value Prelude.Text),
                       user :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPosixUserProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PosixUserProperty
mkPosixUserProperty group user
  = PosixUserProperty {group = group, user = user}
instance ToResourceProperties PosixUserProperty where
  toResourceProperties PosixUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Queue.PosixUser",
         supportsTags = Prelude.False,
         properties = ["Group" JSON..= group, "User" JSON..= user]}
instance JSON.ToJSON PosixUserProperty where
  toJSON PosixUserProperty {..}
    = JSON.object ["Group" JSON..= group, "User" JSON..= user]
instance Property "Group" PosixUserProperty where
  type PropertyType "Group" PosixUserProperty = Value Prelude.Text
  set newValue PosixUserProperty {..}
    = PosixUserProperty {group = newValue, ..}
instance Property "User" PosixUserProperty where
  type PropertyType "User" PosixUserProperty = Value Prelude.Text
  set newValue PosixUserProperty {..}
    = PosixUserProperty {user = newValue, ..}