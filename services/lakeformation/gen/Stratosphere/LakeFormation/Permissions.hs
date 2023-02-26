module Stratosphere.LakeFormation.Permissions (
        module Exports, Permissions(..), mkPermissions
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.DataLakePrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.Permissions.ResourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Permissions
  = Permissions {dataLakePrincipal :: DataLakePrincipalProperty,
                 permissions :: (Prelude.Maybe (ValueList Prelude.Text)),
                 permissionsWithGrantOption :: (Prelude.Maybe (ValueList Prelude.Text)),
                 resource :: ResourceProperty}
mkPermissions ::
  DataLakePrincipalProperty -> ResourceProperty -> Permissions
mkPermissions dataLakePrincipal resource
  = Permissions
      {dataLakePrincipal = dataLakePrincipal, resource = resource,
       permissions = Prelude.Nothing,
       permissionsWithGrantOption = Prelude.Nothing}
instance ToResourceProperties Permissions where
  toResourceProperties Permissions {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::Permissions",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataLakePrincipal" JSON..= dataLakePrincipal,
                            "Resource" JSON..= resource]
                           (Prelude.catMaybes
                              [(JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "PermissionsWithGrantOption"
                                 Prelude.<$> permissionsWithGrantOption]))}
instance JSON.ToJSON Permissions where
  toJSON Permissions {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataLakePrincipal" JSON..= dataLakePrincipal,
               "Resource" JSON..= resource]
              (Prelude.catMaybes
                 [(JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "PermissionsWithGrantOption"
                    Prelude.<$> permissionsWithGrantOption])))
instance Property "DataLakePrincipal" Permissions where
  type PropertyType "DataLakePrincipal" Permissions = DataLakePrincipalProperty
  set newValue Permissions {..}
    = Permissions {dataLakePrincipal = newValue, ..}
instance Property "Permissions" Permissions where
  type PropertyType "Permissions" Permissions = ValueList Prelude.Text
  set newValue Permissions {..}
    = Permissions {permissions = Prelude.pure newValue, ..}
instance Property "PermissionsWithGrantOption" Permissions where
  type PropertyType "PermissionsWithGrantOption" Permissions = ValueList Prelude.Text
  set newValue Permissions {..}
    = Permissions
        {permissionsWithGrantOption = Prelude.pure newValue, ..}
instance Property "Resource" Permissions where
  type PropertyType "Resource" Permissions = ResourceProperty
  set newValue Permissions {..}
    = Permissions {resource = newValue, ..}