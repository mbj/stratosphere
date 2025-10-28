module Stratosphere.IAM.Role (
        module Exports, Role(..), mkRole
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IAM.Role.PolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Role
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html>
    Role {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-assumerolepolicydocument>
          assumeRolePolicyDocument :: JSON.Object,
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-description>
          description :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-managedpolicyarns>
          managedPolicyArns :: (Prelude.Maybe (ValueList Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-maxsessionduration>
          maxSessionDuration :: (Prelude.Maybe (Value Prelude.Integer)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-path>
          path :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-permissionsboundary>
          permissionsBoundary :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-policies>
          policies :: (Prelude.Maybe [PolicyProperty]),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-rolename>
          roleName :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRole :: JSON.Object -> Role
mkRole assumeRolePolicyDocument
  = Role
      {haddock_workaround_ = (),
       assumeRolePolicyDocument = assumeRolePolicyDocument,
       description = Prelude.Nothing, managedPolicyArns = Prelude.Nothing,
       maxSessionDuration = Prelude.Nothing, path = Prelude.Nothing,
       permissionsBoundary = Prelude.Nothing, policies = Prelude.Nothing,
       roleName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Role where
  toResourceProperties Role {..}
    = ResourceProperties
        {awsType = "AWS::IAM::Role", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AssumeRolePolicyDocument" JSON..= assumeRolePolicyDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                               (JSON..=) "MaxSessionDuration" Prelude.<$> maxSessionDuration,
                               (JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
                               (JSON..=) "Policies" Prelude.<$> policies,
                               (JSON..=) "RoleName" Prelude.<$> roleName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Role where
  toJSON Role {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AssumeRolePolicyDocument" JSON..= assumeRolePolicyDocument]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ManagedPolicyArns" Prelude.<$> managedPolicyArns,
                  (JSON..=) "MaxSessionDuration" Prelude.<$> maxSessionDuration,
                  (JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
                  (JSON..=) "Policies" Prelude.<$> policies,
                  (JSON..=) "RoleName" Prelude.<$> roleName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssumeRolePolicyDocument" Role where
  type PropertyType "AssumeRolePolicyDocument" Role = JSON.Object
  set newValue Role {..}
    = Role {assumeRolePolicyDocument = newValue, ..}
instance Property "Description" Role where
  type PropertyType "Description" Role = Value Prelude.Text
  set newValue Role {..}
    = Role {description = Prelude.pure newValue, ..}
instance Property "ManagedPolicyArns" Role where
  type PropertyType "ManagedPolicyArns" Role = ValueList Prelude.Text
  set newValue Role {..}
    = Role {managedPolicyArns = Prelude.pure newValue, ..}
instance Property "MaxSessionDuration" Role where
  type PropertyType "MaxSessionDuration" Role = Value Prelude.Integer
  set newValue Role {..}
    = Role {maxSessionDuration = Prelude.pure newValue, ..}
instance Property "Path" Role where
  type PropertyType "Path" Role = Value Prelude.Text
  set newValue Role {..} = Role {path = Prelude.pure newValue, ..}
instance Property "PermissionsBoundary" Role where
  type PropertyType "PermissionsBoundary" Role = Value Prelude.Text
  set newValue Role {..}
    = Role {permissionsBoundary = Prelude.pure newValue, ..}
instance Property "Policies" Role where
  type PropertyType "Policies" Role = [PolicyProperty]
  set newValue Role {..}
    = Role {policies = Prelude.pure newValue, ..}
instance Property "RoleName" Role where
  type PropertyType "RoleName" Role = Value Prelude.Text
  set newValue Role {..}
    = Role {roleName = Prelude.pure newValue, ..}
instance Property "Tags" Role where
  type PropertyType "Tags" Role = [Tag]
  set newValue Role {..} = Role {tags = Prelude.pure newValue, ..}