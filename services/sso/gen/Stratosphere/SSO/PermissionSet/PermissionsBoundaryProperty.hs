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
  = PermissionsBoundaryProperty {customerManagedPolicyReference :: (Prelude.Maybe CustomerManagedPolicyReferenceProperty),
                                 managedPolicyArn :: (Prelude.Maybe (Value Prelude.Text))}
mkPermissionsBoundaryProperty :: PermissionsBoundaryProperty
mkPermissionsBoundaryProperty
  = PermissionsBoundaryProperty
      {customerManagedPolicyReference = Prelude.Nothing,
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