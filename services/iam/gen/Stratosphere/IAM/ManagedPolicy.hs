module Stratosphere.IAM.ManagedPolicy (
        ManagedPolicy(..), mkManagedPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html>
    ManagedPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-groups>
                   groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-managedpolicyname>
                   managedPolicyName :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-path>
                   path :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-policydocument>
                   policyDocument :: JSON.Object,
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-roles>
                   roles :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-users>
                   users :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedPolicy :: JSON.Object -> ManagedPolicy
mkManagedPolicy policyDocument
  = ManagedPolicy
      {haddock_workaround_ = (), policyDocument = policyDocument,
       description = Prelude.Nothing, groups = Prelude.Nothing,
       managedPolicyName = Prelude.Nothing, path = Prelude.Nothing,
       roles = Prelude.Nothing, users = Prelude.Nothing}
instance ToResourceProperties ManagedPolicy where
  toResourceProperties ManagedPolicy {..}
    = ResourceProperties
        {awsType = "AWS::IAM::ManagedPolicy", supportsTags = Prelude.False,
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
  type PropertyType "Groups" ManagedPolicy = ValueList Prelude.Text
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
  type PropertyType "Roles" ManagedPolicy = ValueList Prelude.Text
  set newValue ManagedPolicy {..}
    = ManagedPolicy {roles = Prelude.pure newValue, ..}
instance Property "Users" ManagedPolicy where
  type PropertyType "Users" ManagedPolicy = ValueList Prelude.Text
  set newValue ManagedPolicy {..}
    = ManagedPolicy {users = Prelude.pure newValue, ..}