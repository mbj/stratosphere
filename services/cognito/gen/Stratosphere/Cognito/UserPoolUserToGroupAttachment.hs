module Stratosphere.Cognito.UserPoolUserToGroupAttachment (
        UserPoolUserToGroupAttachment(..), mkUserPoolUserToGroupAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolUserToGroupAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html>
    UserPoolUserToGroupAttachment {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-groupname>
                                   groupName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-userpoolid>
                                   userPoolId :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-username>
                                   username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPoolUserToGroupAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> UserPoolUserToGroupAttachment
mkUserPoolUserToGroupAttachment groupName userPoolId username
  = UserPoolUserToGroupAttachment
      {haddock_workaround_ = (), groupName = groupName,
       userPoolId = userPoolId, username = username}
instance ToResourceProperties UserPoolUserToGroupAttachment where
  toResourceProperties UserPoolUserToGroupAttachment {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolUserToGroupAttachment",
         supportsTags = Prelude.False,
         properties = ["GroupName" JSON..= groupName,
                       "UserPoolId" JSON..= userPoolId, "Username" JSON..= username]}
instance JSON.ToJSON UserPoolUserToGroupAttachment where
  toJSON UserPoolUserToGroupAttachment {..}
    = JSON.object
        ["GroupName" JSON..= groupName, "UserPoolId" JSON..= userPoolId,
         "Username" JSON..= username]
instance Property "GroupName" UserPoolUserToGroupAttachment where
  type PropertyType "GroupName" UserPoolUserToGroupAttachment = Value Prelude.Text
  set newValue UserPoolUserToGroupAttachment {..}
    = UserPoolUserToGroupAttachment {groupName = newValue, ..}
instance Property "UserPoolId" UserPoolUserToGroupAttachment where
  type PropertyType "UserPoolId" UserPoolUserToGroupAttachment = Value Prelude.Text
  set newValue UserPoolUserToGroupAttachment {..}
    = UserPoolUserToGroupAttachment {userPoolId = newValue, ..}
instance Property "Username" UserPoolUserToGroupAttachment where
  type PropertyType "Username" UserPoolUserToGroupAttachment = Value Prelude.Text
  set newValue UserPoolUserToGroupAttachment {..}
    = UserPoolUserToGroupAttachment {username = newValue, ..}