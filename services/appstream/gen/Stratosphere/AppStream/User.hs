module Stratosphere.AppStream.User (
        User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data User
  = User {authenticationType :: (Value Prelude.Text),
          firstName :: (Prelude.Maybe (Value Prelude.Text)),
          lastName :: (Prelude.Maybe (Value Prelude.Text)),
          messageAction :: (Prelude.Maybe (Value Prelude.Text)),
          userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser :: Value Prelude.Text -> Value Prelude.Text -> User
mkUser authenticationType userName
  = User
      {authenticationType = authenticationType, userName = userName,
       firstName = Prelude.Nothing, lastName = Prelude.Nothing,
       messageAction = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::AppStream::User", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AuthenticationType" JSON..= authenticationType,
                            "UserName" JSON..= userName]
                           (Prelude.catMaybes
                              [(JSON..=) "FirstName" Prelude.<$> firstName,
                               (JSON..=) "LastName" Prelude.<$> lastName,
                               (JSON..=) "MessageAction" Prelude.<$> messageAction]))}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AuthenticationType" JSON..= authenticationType,
               "UserName" JSON..= userName]
              (Prelude.catMaybes
                 [(JSON..=) "FirstName" Prelude.<$> firstName,
                  (JSON..=) "LastName" Prelude.<$> lastName,
                  (JSON..=) "MessageAction" Prelude.<$> messageAction])))
instance Property "AuthenticationType" User where
  type PropertyType "AuthenticationType" User = Value Prelude.Text
  set newValue User {..} = User {authenticationType = newValue, ..}
instance Property "FirstName" User where
  type PropertyType "FirstName" User = Value Prelude.Text
  set newValue User {..}
    = User {firstName = Prelude.pure newValue, ..}
instance Property "LastName" User where
  type PropertyType "LastName" User = Value Prelude.Text
  set newValue User {..}
    = User {lastName = Prelude.pure newValue, ..}
instance Property "MessageAction" User where
  type PropertyType "MessageAction" User = Value Prelude.Text
  set newValue User {..}
    = User {messageAction = Prelude.pure newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..} = User {userName = newValue, ..}