module Stratosphere.SSO.PermissionSet.PermissionsBoundaryProperty (
        module Exports, PermissionsBoundaryProperty(..),
        mkPermissionsBoundaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSO.PermissionSet.CustomerManagedPolicyReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PermissionsBoundaryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-permissionsboundary.html>
    PermissionsBoundaryProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-permissionsboundary.html#cfn-sso-permissionset-permissionsboundary-customermanagedpolicyreference>
                                 customerManagedPolicyReference :: (Prelude.Maybe CustomerManagedPolicyReferenceProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-permissionsboundary.html#cfn-sso-permissionset-permissionsboundary-managedpolicyarn>
                                 managedPolicyArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPermissionsBoundaryProperty :: PermissionsBoundaryProperty
mkPermissionsBoundaryProperty
  = PermissionsBoundaryProperty
      {haddock_workaround_ = (),
       customerManagedPolicyReference = Prelude.Nothing,
       managedPolicyArn = Prelude.Nothing}
instance ToResourceProperties PermissionsBoundaryProperty where
  toResourceProperties PermissionsBoundaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::PermissionSet.PermissionsBoundary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CustomerManagedPolicyReference"
                              Prelude.<$> customerManagedPolicyReference,
                            (JSON..=) "ManagedPolicyArn" Prelude.<$> managedPolicyArn])}
instance JSON.ToJSON PermissionsBoundaryProperty where
  toJSON PermissionsBoundaryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CustomerManagedPolicyReference"
                 Prelude.<$> customerManagedPolicyReference,
               (JSON..=) "ManagedPolicyArn" Prelude.<$> managedPolicyArn]))
instance Property "CustomerManagedPolicyReference" PermissionsBoundaryProperty where
  type PropertyType "CustomerManagedPolicyReference" PermissionsBoundaryProperty = CustomerManagedPolicyReferenceProperty
  set newValue PermissionsBoundaryProperty {..}
    = PermissionsBoundaryProperty
        {customerManagedPolicyReference = Prelude.pure newValue, ..}
instance Property "ManagedPolicyArn" PermissionsBoundaryProperty where
  type PropertyType "ManagedPolicyArn" PermissionsBoundaryProperty = Value Prelude.Text
  set newValue PermissionsBoundaryProperty {..}
    = PermissionsBoundaryProperty
        {managedPolicyArn = Prelude.pure newValue, ..}