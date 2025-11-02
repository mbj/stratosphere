module Stratosphere.SSO.PermissionSet (
        module Exports, PermissionSet(..), mkPermissionSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.PermissionSet.CustomerManagedPolicyReferenceProperty as Exports
import {-# SOURCE #-} Stratosphere.SSO.PermissionSet.PermissionsBoundaryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PermissionSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html>
    PermissionSet {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-customermanagedpolicyreferences>
                   customerManagedPolicyReferences :: (Prelude.Maybe [CustomerManagedPolicyReferenceProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-description>
                   description :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-inlinepolicy>
                   inlinePolicy :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-instancearn>
                   instanceArn :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-managedpolicies>
                   managedPolicies :: (Prelude.Maybe (ValueList Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-permissionsboundary>
                   permissionsBoundary :: (Prelude.Maybe PermissionsBoundaryProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-relaystatetype>
                   relayStateType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-sessionduration>
                   sessionDuration :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-permissionset.html#cfn-sso-permissionset-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermissionSet ::
  Value Prelude.Text -> Value Prelude.Text -> PermissionSet
mkPermissionSet instanceArn name
  = PermissionSet
      {haddock_workaround_ = (), instanceArn = instanceArn, name = name,
       customerManagedPolicyReferences = Prelude.Nothing,
       description = Prelude.Nothing, inlinePolicy = Prelude.Nothing,
       managedPolicies = Prelude.Nothing,
       permissionsBoundary = Prelude.Nothing,
       relayStateType = Prelude.Nothing,
       sessionDuration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PermissionSet where
  toResourceProperties PermissionSet {..}
    = ResourceProperties
        {awsType = "AWS::SSO::PermissionSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomerManagedPolicyReferences"
                                 Prelude.<$> customerManagedPolicyReferences,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "InlinePolicy" Prelude.<$> inlinePolicy,
                               (JSON..=) "ManagedPolicies" Prelude.<$> managedPolicies,
                               (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
                               (JSON..=) "RelayStateType" Prelude.<$> relayStateType,
                               (JSON..=) "SessionDuration" Prelude.<$> sessionDuration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON PermissionSet where
  toJSON PermissionSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceArn" JSON..= instanceArn, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "CustomerManagedPolicyReferences"
                    Prelude.<$> customerManagedPolicyReferences,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "InlinePolicy" Prelude.<$> inlinePolicy,
                  (JSON..=) "ManagedPolicies" Prelude.<$> managedPolicies,
                  (JSON..=) "PermissionsBoundary" Prelude.<$> permissionsBoundary,
                  (JSON..=) "RelayStateType" Prelude.<$> relayStateType,
                  (JSON..=) "SessionDuration" Prelude.<$> sessionDuration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CustomerManagedPolicyReferences" PermissionSet where
  type PropertyType "CustomerManagedPolicyReferences" PermissionSet = [CustomerManagedPolicyReferenceProperty]
  set newValue PermissionSet {..}
    = PermissionSet
        {customerManagedPolicyReferences = Prelude.pure newValue, ..}
instance Property "Description" PermissionSet where
  type PropertyType "Description" PermissionSet = Value Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {description = Prelude.pure newValue, ..}
instance Property "InlinePolicy" PermissionSet where
  type PropertyType "InlinePolicy" PermissionSet = JSON.Object
  set newValue PermissionSet {..}
    = PermissionSet {inlinePolicy = Prelude.pure newValue, ..}
instance Property "InstanceArn" PermissionSet where
  type PropertyType "InstanceArn" PermissionSet = Value Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {instanceArn = newValue, ..}
instance Property "ManagedPolicies" PermissionSet where
  type PropertyType "ManagedPolicies" PermissionSet = ValueList Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {managedPolicies = Prelude.pure newValue, ..}
instance Property "Name" PermissionSet where
  type PropertyType "Name" PermissionSet = Value Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {name = newValue, ..}
instance Property "PermissionsBoundary" PermissionSet where
  type PropertyType "PermissionsBoundary" PermissionSet = PermissionsBoundaryProperty
  set newValue PermissionSet {..}
    = PermissionSet {permissionsBoundary = Prelude.pure newValue, ..}
instance Property "RelayStateType" PermissionSet where
  type PropertyType "RelayStateType" PermissionSet = Value Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {relayStateType = Prelude.pure newValue, ..}
instance Property "SessionDuration" PermissionSet where
  type PropertyType "SessionDuration" PermissionSet = Value Prelude.Text
  set newValue PermissionSet {..}
    = PermissionSet {sessionDuration = Prelude.pure newValue, ..}
instance Property "Tags" PermissionSet where
  type PropertyType "Tags" PermissionSet = [Tag]
  set newValue PermissionSet {..}
    = PermissionSet {tags = Prelude.pure newValue, ..}