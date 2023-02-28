module Stratosphere.Cognito.UserPoolGroup (
        UserPoolGroup(..), mkUserPoolGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPoolGroup
  = UserPoolGroup {description :: (Prelude.Maybe (Value Prelude.Text)),
                   groupName :: (Prelude.Maybe (Value Prelude.Text)),
                   precedence :: (Prelude.Maybe (Value Prelude.Double)),
                   roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                   userPoolId :: (Value Prelude.Text)}
mkUserPoolGroup :: Value Prelude.Text -> UserPoolGroup
mkUserPoolGroup userPoolId
  = UserPoolGroup
      {userPoolId = userPoolId, description = Prelude.Nothing,
       groupName = Prelude.Nothing, precedence = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties UserPoolGroup where
  toResourceProperties UserPoolGroup {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["UserPoolId" JSON..= userPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "Precedence" Prelude.<$> precedence,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn]))}
instance JSON.ToJSON UserPoolGroup where
  toJSON UserPoolGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["UserPoolId" JSON..= userPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "Precedence" Prelude.<$> precedence,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn])))
instance Property "Description" UserPoolGroup where
  type PropertyType "Description" UserPoolGroup = Value Prelude.Text
  set newValue UserPoolGroup {..}
    = UserPoolGroup {description = Prelude.pure newValue, ..}
instance Property "GroupName" UserPoolGroup where
  type PropertyType "GroupName" UserPoolGroup = Value Prelude.Text
  set newValue UserPoolGroup {..}
    = UserPoolGroup {groupName = Prelude.pure newValue, ..}
instance Property "Precedence" UserPoolGroup where
  type PropertyType "Precedence" UserPoolGroup = Value Prelude.Double
  set newValue UserPoolGroup {..}
    = UserPoolGroup {precedence = Prelude.pure newValue, ..}
instance Property "RoleArn" UserPoolGroup where
  type PropertyType "RoleArn" UserPoolGroup = Value Prelude.Text
  set newValue UserPoolGroup {..}
    = UserPoolGroup {roleArn = Prelude.pure newValue, ..}
instance Property "UserPoolId" UserPoolGroup where
  type PropertyType "UserPoolId" UserPoolGroup = Value Prelude.Text
  set newValue UserPoolGroup {..}
    = UserPoolGroup {userPoolId = newValue, ..}