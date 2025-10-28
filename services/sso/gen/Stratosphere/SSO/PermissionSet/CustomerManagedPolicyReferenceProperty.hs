module Stratosphere.SSO.PermissionSet.CustomerManagedPolicyReferenceProperty (
        CustomerManagedPolicyReferenceProperty(..),
        mkCustomerManagedPolicyReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerManagedPolicyReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-customermanagedpolicyreference.html>
    CustomerManagedPolicyReferenceProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-customermanagedpolicyreference.html#cfn-sso-permissionset-customermanagedpolicyreference-name>
                                            name :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sso-permissionset-customermanagedpolicyreference.html#cfn-sso-permissionset-customermanagedpolicyreference-path>
                                            path :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerManagedPolicyReferenceProperty ::
  Value Prelude.Text -> CustomerManagedPolicyReferenceProperty
mkCustomerManagedPolicyReferenceProperty name
  = CustomerManagedPolicyReferenceProperty
      {haddock_workaround_ = (), name = name, path = Prelude.Nothing}
instance ToResourceProperties CustomerManagedPolicyReferenceProperty where
  toResourceProperties CustomerManagedPolicyReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSO::PermissionSet.CustomerManagedPolicyReference",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path]))}
instance JSON.ToJSON CustomerManagedPolicyReferenceProperty where
  toJSON CustomerManagedPolicyReferenceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Path" Prelude.<$> path])))
instance Property "Name" CustomerManagedPolicyReferenceProperty where
  type PropertyType "Name" CustomerManagedPolicyReferenceProperty = Value Prelude.Text
  set newValue CustomerManagedPolicyReferenceProperty {..}
    = CustomerManagedPolicyReferenceProperty {name = newValue, ..}
instance Property "Path" CustomerManagedPolicyReferenceProperty where
  type PropertyType "Path" CustomerManagedPolicyReferenceProperty = Value Prelude.Text
  set newValue CustomerManagedPolicyReferenceProperty {..}
    = CustomerManagedPolicyReferenceProperty
        {path = Prelude.pure newValue, ..}