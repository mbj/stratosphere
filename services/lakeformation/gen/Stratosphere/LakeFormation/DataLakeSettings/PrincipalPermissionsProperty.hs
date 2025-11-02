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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html>
    PrincipalPermissionsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html#cfn-lakeformation-datalakesettings-principalpermissions-permissions>
                                  permissions :: (ValueList Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lakeformation-datalakesettings-principalpermissions.html#cfn-lakeformation-datalakesettings-principalpermissions-principal>
                                  principal :: DataLakePrincipalProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrincipalPermissionsProperty ::
  ValueList Prelude.Text
  -> DataLakePrincipalProperty -> PrincipalPermissionsProperty
mkPrincipalPermissionsProperty permissions principal
  = PrincipalPermissionsProperty
      {haddock_workaround_ = (), permissions = permissions,
       principal = principal}
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