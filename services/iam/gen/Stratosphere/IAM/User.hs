module Stratosphere.IAM.User (
        module Exports, User(..), mkUser
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IAM.User.LoginProfileProperty as Exports
import {-# SOURCE #-} Stratosphere.IAM.User.PolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data User
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html>
    User {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-groups>
          groups :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-loginprofile>
          loginProfile :: (Prelude.Maybe LoginProfileProperty),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-managedpolicyarns>
          managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-path>
          path :: (Prelude.Maybe (Value Prelude.Text)),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-permissionsboundary>
          permissionsBoundary :: (Prelude.Maybe (Value Prelude.Text)),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-policies>
          policies :: (Prelude.Maybe [PolicyProperty]),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-tags>
          tags :: (Prelude.Maybe [Tag]),
          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-user.html#cfn-iam-user-username>
          userName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUser :: User
mkUser
  = User
      {groups = Prelude.Nothing, loginProfile = Prelude.Nothing,
       managedPolicyArns = Prelude.Nothing, path = Prelude.Nothing,
       permissionsBoundary = Prelude.Nothing, policies = Prelude.Nothing,
       tags = Prelude.Nothing, userName = Prelude.Nothing}
instance ToResourceProperties User where
  toResourceProperties User {..}
    = ResourceProperties
        {awsType = "AWS::IAM::User", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "LoginProfile" Prelude.<$> loginProfile,
                            (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                            (JSON..=) "Path" Prelude.<$> path,
                            (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
                            (JSON..=) "Policies" Prelude.<$> policies,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "UserName" Prelude.<$> userName])}
instance JSON.ToJSON User where
  toJSON User {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "LoginProfile" Prelude.<$> loginProfile,
               (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
               (JSON..=) "Path" Prelude.<$> path,
               (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
               (JSON..=) "Policies" Prelude.<$> policies,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UserName" Prelude.<$> userName]))
instance Property "Groups" User where
  type PropertyType "Groups" User = ValueList Prelude.Text
  set newValue User {..} = User {groups = Prelude.pure newValue, ..}
instance Property "LoginProfile" User where
  type PropertyType "LoginProfile" User = LoginProfileProperty
  set newValue User {..}
    = User {loginProfile = Prelude.pure newValue, ..}
instance Property "ManagedPolicyArns" User where
  type PropertyType "ManagedPolicyArns" User = ValueList Prelude.Text
  set newValue User {..}
    = User {managedPolicyArns = Prelude.pure newValue, ..}
instance Property "Path" User where
  type PropertyType "Path" User = Value Prelude.Text
  set newValue User {..} = User {path = Prelude.pure newValue, ..}
instance Property "PermissionsBoundary" User where
  type PropertyType "PermissionsBoundary" User = Value Prelude.Text
  set newValue User {..}
    = User {permissionsBoundary = Prelude.pure newValue, ..}
instance Property "Policies" User where
  type PropertyType "Policies" User = [PolicyProperty]
  set newValue User {..}
    = User {policies = Prelude.pure newValue, ..}
instance Property "Tags" User where
  type PropertyType "Tags" User = [Tag]
  set newValue User {..} = User {tags = Prelude.pure newValue, ..}
instance Property "UserName" User where
  type PropertyType "UserName" User = Value Prelude.Text
  set newValue User {..}
    = User {userName = Prelude.pure newValue, ..}