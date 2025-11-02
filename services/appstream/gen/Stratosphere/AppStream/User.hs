module Stratosphere.AppStream.User (
        User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data User
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html>
    User {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-authenticationtype>
          authenticationType :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-firstname>
          firstName :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-lastname>
          lastName :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-messageaction>
          messageAction :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-appstream-user.html#cfn-appstream-user-username>
          userName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser :: Value Prelude.Text -> Value Prelude.Text -> User
mkUser authenticationType userName
  = User
      {haddock_workaround_ = (), authenticationType = authenticationType,
       userName = userName, firstName = Prelude.Nothing,
       lastName = Prelude.Nothing, messageAction = Prelude.Nothing}
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