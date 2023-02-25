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
  = Role {assumeRolePolicyDocument :: JSON.Object,
          description :: (Prelude.Maybe (Value Prelude.Text)),
          managedPolicyArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
          maxSessionDuration :: (Prelude.Maybe (Value Prelude.Integer)),
          path :: (Prelude.Maybe (Value Prelude.Text)),
          permissionsBoundary :: (Prelude.Maybe (Value Prelude.Text)),
          policies :: (Prelude.Maybe [PolicyProperty]),
          roleName :: (Prelude.Maybe (Value Prelude.Text)),
          tags :: (Prelude.Maybe [Tag])}
mkRole :: JSON.Object -> Role
mkRole assumeRolePolicyDocument
  = Role
      {assumeRolePolicyDocument = assumeRolePolicyDocument,
       description = Prelude.Nothing, managedPolicyArns = Prelude.Nothing,
       maxSessionDuration = Prelude.Nothing, path = Prelude.Nothing,
       permissionsBoundary = Prelude.Nothing, policies = Prelude.Nothing,
       roleName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Role where
  toResourceProperties Role {..}
    = ResourceProperties
        {awsType = "AWS::IAM::Role",
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
  type PropertyType "ManagedPolicyArns" Role = ValueList (Value Prelude.Text)
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