module Stratosphere.LakeFormation.DataLakeSettings.PrincipalPermissionsProperty (
        module Exports, PrincipalPermissionsProperty(..),
        mkPrincipalPermissionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.DataLakePrincipalProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PrincipalPermissionsProperty
  = PrincipalPermissionsProperty {permissions :: (ValueList Prelude.Text),
                                  principal :: DataLakePrincipalProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrincipalPermissionsProperty ::
  ValueList Prelude.Text
  -> DataLakePrincipalProperty -> PrincipalPermissionsProperty
mkPrincipalPermissionsProperty permissions principal
  = PrincipalPermissionsProperty
      {permissions = permissions, principal = principal}
instance ToResourceProperties PrincipalPermissionsProperty where
  toResourceProperties PrincipalPermissionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataLakeSettings.PrincipalPermissions",
         supportsTags = Prelude.False,
         properties = ["Permissions" JSON..= permissions,
                       "Principal" JSON..= principal]}
instance JSON.ToJSON PrincipalPermissionsProperty where
  toJSON PrincipalPermissionsProperty {..}
    = JSON.object
        ["Permissions" JSON..= permissions, "Principal" JSON..= principal]
instance Property "Permissions" PrincipalPermissionsProperty where
  type PropertyType "Permissions" PrincipalPermissionsProperty = ValueList Prelude.Text
  set newValue PrincipalPermissionsProperty {..}
    = PrincipalPermissionsProperty {permissions = newValue, ..}
instance Property "Principal" PrincipalPermissionsProperty where
  type PropertyType "Principal" PrincipalPermissionsProperty = DataLakePrincipalProperty
  set newValue PrincipalPermissionsProperty {..}
    = PrincipalPermissionsProperty {principal = newValue, ..}