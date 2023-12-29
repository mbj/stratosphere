module Stratosphere.IAM.UserToGroupAddition (
        UserToGroupAddition(..), mkUserToGroupAddition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserToGroupAddition
  = UserToGroupAddition {groupName :: (Value Prelude.Text),
                         users :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserToGroupAddition ::
  Value Prelude.Text -> ValueList Prelude.Text -> UserToGroupAddition
mkUserToGroupAddition groupName users
  = UserToGroupAddition {groupName = groupName, users = users}
instance ToResourceProperties UserToGroupAddition where
  toResourceProperties UserToGroupAddition {..}
    = ResourceProperties
        {awsType = "AWS::IAM::UserToGroupAddition",
         supportsTags = Prelude.False,
         properties = ["GroupName" JSON..= groupName,
                       "Users" JSON..= users]}
instance JSON.ToJSON UserToGroupAddition where
  toJSON UserToGroupAddition {..}
    = JSON.object
        ["GroupName" JSON..= groupName, "Users" JSON..= users]
instance Property "GroupName" UserToGroupAddition where
  type PropertyType "GroupName" UserToGroupAddition = Value Prelude.Text
  set newValue UserToGroupAddition {..}
    = UserToGroupAddition {groupName = newValue, ..}
instance Property "Users" UserToGroupAddition where
  type PropertyType "Users" UserToGroupAddition = ValueList Prelude.Text
  set newValue UserToGroupAddition {..}
    = UserToGroupAddition {users = newValue, ..}