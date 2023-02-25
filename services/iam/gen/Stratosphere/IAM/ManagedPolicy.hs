module Stratosphere.IAM.ManagedPolicy (
        ManagedPolicy(..), mkManagedPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedPolicy
  = ManagedPolicy {description :: (Prelude.Maybe (Value Prelude.Text)),
                   groups :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                   managedPolicyName :: (Prelude.Maybe (Value Prelude.Text)),
                   path :: (Prelude.Maybe (Value Prelude.Text)),
                   policyDocument :: JSON.Object,
                   roles :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                   users :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkManagedPolicy :: JSON.Object -> ManagedPolicy
mkManagedPolicy policyDocument
  = ManagedPolicy
      {policyDocument = policyDocument, description = Prelude.Nothing,
       groups = Prelude.Nothing, managedPolicyName = Prelude.Nothing,
       path = Prelude.Nothing, roles = Prelude.Nothing,
       users = Prelude.Nothing}
instance ToResourceProperties ManagedPolicy where
  toResourceProperties ManagedPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::ManagedPolicy",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyDocument" JSON..= policyDocument]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Groups" Prelude.<$> groups,
                               (JSON..=) "ManagedPolicyName" Prelude.<$> managedPolicyName,
                               (JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "Roles" Prelude.<$> roles,
                               (JSON..=) "Users" Prelude.<$> users]))}
instance JSON.ToJSON ManagedPolicy where
  toJSON ManagedPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyDocument" JSON..= policyDocument]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Groups" Prelude.<$> groups,
                  (JSON..=) "ManagedPolicyName" Prelude.<$> managedPolicyName,
                  (JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "Roles" Prelude.<$> roles,
                  (JSON..=) "Users" Prelude.<$> users])))
instance Property "Description" ManagedPolicy where
  type PropertyType "Description" ManagedPolicy = Value Prelude.Text
  set newValue ManagedPolicy {..}
    = ManagedPolicy {description = Prelude.pure newValue, ..}
instance Property "Groups" ManagedPolicy where
  type PropertyType "Groups" ManagedPolicy = ValueList (Value Prelude.Text)
  set newValue ManagedPolicy {..}
    = ManagedPolicy {groups = Prelude.pure newValue, ..}
instance Property "ManagedPolicyName" ManagedPolicy where
  type PropertyType "ManagedPolicyName" ManagedPolicy = Value Prelude.Text
  set newValue ManagedPolicy {..}
    = ManagedPolicy {managedPolicyName = Prelude.pure newValue, ..}
instance Property "Path" ManagedPolicy where
  type PropertyType "Path" ManagedPolicy = Value Prelude.Text
  set newValue ManagedPolicy {..}
    = ManagedPolicy {path = Prelude.pure newValue, ..}
instance Property "PolicyDocument" ManagedPolicy where
  type PropertyType "PolicyDocument" ManagedPolicy = JSON.Object
  set newValue ManagedPolicy {..}
    = ManagedPolicy {policyDocument = newValue, ..}
instance Property "Roles" ManagedPolicy where
  type PropertyType "Roles" ManagedPolicy = ValueList (Value Prelude.Text)
  set newValue ManagedPolicy {..}
    = ManagedPolicy {roles = Prelude.pure newValue, ..}
instance Property "Users" ManagedPolicy where
  type PropertyType "Users" ManagedPolicy = ValueList (Value Prelude.Text)
  set newValue ManagedPolicy {..}
    = ManagedPolicy {users = Prelude.pure newValue, ..}