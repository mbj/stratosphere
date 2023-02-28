module Stratosphere.LakeFormation.PrincipalPermissions (
        module Exports, PrincipalPermissions(..), mkPrincipalPermissions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.DataLakePrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.PrincipalPermissions.ResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrincipalPermissions
  = PrincipalPermissions {catalog :: (Prelude.Maybe (Value Prelude.Text)),
                          permissions :: (ValueList Prelude.Text),
                          permissionsWithGrantOption :: (ValueList Prelude.Text),
                          principal :: DataLakePrincipalProperty,
                          resource :: ResourceProperty}
mkPrincipalPermissions ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text
     -> DataLakePrincipalProperty
        -> ResourceProperty -> PrincipalPermissions
mkPrincipalPermissions
  permissions
  permissionsWithGrantOption
  principal
  resource
  = PrincipalPermissions
      {permissions = permissions,
       permissionsWithGrantOption = permissionsWithGrantOption,
       principal = principal, resource = resource,
       catalog = Prelude.Nothing}
instance ToResourceProperties PrincipalPermissions where
  toResourceProperties PrincipalPermissions {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::PrincipalPermissions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Permissions" JSON..= permissions,
                            "PermissionsWithGrantOption" JSON..= permissionsWithGrantOption,
                            "Principal" JSON..= principal, "Resource" JSON..= resource]
                           (Prelude.catMaybes [(JSON..=) "Catalog" Prelude.<$> catalog]))}
instance JSON.ToJSON PrincipalPermissions where
  toJSON PrincipalPermissions {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Permissions" JSON..= permissions,
               "PermissionsWithGrantOption" JSON..= permissionsWithGrantOption,
               "Principal" JSON..= principal, "Resource" JSON..= resource]
              (Prelude.catMaybes [(JSON..=) "Catalog" Prelude.<$> catalog])))
instance Property "Catalog" PrincipalPermissions where
  type PropertyType "Catalog" PrincipalPermissions = Value Prelude.Text
  set newValue PrincipalPermissions {..}
    = PrincipalPermissions {catalog = Prelude.pure newValue, ..}
instance Property "Permissions" PrincipalPermissions where
  type PropertyType "Permissions" PrincipalPermissions = ValueList Prelude.Text
  set newValue PrincipalPermissions {..}
    = PrincipalPermissions {permissions = newValue, ..}
instance Property "PermissionsWithGrantOption" PrincipalPermissions where
  type PropertyType "PermissionsWithGrantOption" PrincipalPermissions = ValueList Prelude.Text
  set newValue PrincipalPermissions {..}
    = PrincipalPermissions {permissionsWithGrantOption = newValue, ..}
instance Property "Principal" PrincipalPermissions where
  type PropertyType "Principal" PrincipalPermissions = DataLakePrincipalProperty
  set newValue PrincipalPermissions {..}
    = PrincipalPermissions {principal = newValue, ..}
instance Property "Resource" PrincipalPermissions where
  type PropertyType "Resource" PrincipalPermissions = ResourceProperty
  set newValue PrincipalPermissions {..}
    = PrincipalPermissions {resource = newValue, ..}