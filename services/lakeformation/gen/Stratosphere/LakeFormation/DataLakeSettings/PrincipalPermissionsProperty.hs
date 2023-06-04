module Stratosphere.LakeFormation.DataLakeSettings.PrincipalPermissionsProperty (
        module Exports, PrincipalPermissionsProperty(..),
        mkPrincipalPermissionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.DataLakePrincipalProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.PermissionsProperty as Exports
import Stratosphere.ResourceProperties
data PrincipalPermissionsProperty
  = PrincipalPermissionsProperty {permissions :: (Prelude.Maybe PermissionsProperty),
                                  principal :: (Prelude.Maybe DataLakePrincipalProperty)}
mkPrincipalPermissionsProperty :: PrincipalPermissionsProperty
mkPrincipalPermissionsProperty
  = PrincipalPermissionsProperty
      {permissions = Prelude.Nothing, principal = Prelude.Nothing}
instance ToResourceProperties PrincipalPermissionsProperty where
  toResourceProperties PrincipalPermissionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataLakeSettings.PrincipalPermissions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Permissions" Prelude.<$> permissions,
                            (JSON..=) "Principal" Prelude.<$> principal])}
instance JSON.ToJSON PrincipalPermissionsProperty where
  toJSON PrincipalPermissionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Permissions" Prelude.<$> permissions,
               (JSON..=) "Principal" Prelude.<$> principal]))
instance Property "Permissions" PrincipalPermissionsProperty where
  type PropertyType "Permissions" PrincipalPermissionsProperty = PermissionsProperty
  set newValue PrincipalPermissionsProperty {..}
    = PrincipalPermissionsProperty
        {permissions = Prelude.pure newValue, ..}
instance Property "Principal" PrincipalPermissionsProperty where
  type PropertyType "Principal" PrincipalPermissionsProperty = DataLakePrincipalProperty
  set newValue PrincipalPermissionsProperty {..}
    = PrincipalPermissionsProperty
        {principal = Prelude.pure newValue, ..}