module Stratosphere.LakeFormation.DataLakeSettings (
        module Exports, DataLakeSettings(..), mkDataLakeSettings
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.AdminsProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.CreateDatabaseDefaultPermissionsProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.CreateTableDefaultPermissionsProperty as Exports
import {-# SOURCE #-} Stratosphere.LakeFormation.DataLakeSettings.ExternalDataFilteringAllowListProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataLakeSettings
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html>
    DataLakeSettings {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-admins>
                      admins :: (Prelude.Maybe AdminsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-allowexternaldatafiltering>
                      allowExternalDataFiltering :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-allowfulltableexternaldataaccess>
                      allowFullTableExternalDataAccess :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-authorizedsessiontagvaluelist>
                      authorizedSessionTagValueList :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-createdatabasedefaultpermissions>
                      createDatabaseDefaultPermissions :: (Prelude.Maybe CreateDatabaseDefaultPermissionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-createtabledefaultpermissions>
                      createTableDefaultPermissions :: (Prelude.Maybe CreateTableDefaultPermissionsProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-externaldatafilteringallowlist>
                      externalDataFilteringAllowList :: (Prelude.Maybe ExternalDataFilteringAllowListProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-mutationtype>
                      mutationType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-parameters>
                      parameters :: (Prelude.Maybe JSON.Object),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lakeformation-datalakesettings.html#cfn-lakeformation-datalakesettings-trustedresourceowners>
                      trustedResourceOwners :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLakeSettings :: DataLakeSettings
mkDataLakeSettings
  = DataLakeSettings
      {haddock_workaround_ = (), admins = Prelude.Nothing,
       allowExternalDataFiltering = Prelude.Nothing,
       allowFullTableExternalDataAccess = Prelude.Nothing,
       authorizedSessionTagValueList = Prelude.Nothing,
       createDatabaseDefaultPermissions = Prelude.Nothing,
       createTableDefaultPermissions = Prelude.Nothing,
       externalDataFilteringAllowList = Prelude.Nothing,
       mutationType = Prelude.Nothing, parameters = Prelude.Nothing,
       trustedResourceOwners = Prelude.Nothing}
instance ToResourceProperties DataLakeSettings where
  toResourceProperties DataLakeSettings {..}
    = ResourceProperties
        {awsType = "AWS::LakeFormation::DataLakeSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Admins" Prelude.<$> admins,
                            (JSON..=) "AllowExternalDataFiltering"
                              Prelude.<$> allowExternalDataFiltering,
                            (JSON..=) "AllowFullTableExternalDataAccess"
                              Prelude.<$> allowFullTableExternalDataAccess,
                            (JSON..=) "AuthorizedSessionTagValueList"
                              Prelude.<$> authorizedSessionTagValueList,
                            (JSON..=) "CreateDatabaseDefaultPermissions"
                              Prelude.<$> createDatabaseDefaultPermissions,
                            (JSON..=) "CreateTableDefaultPermissions"
                              Prelude.<$> createTableDefaultPermissions,
                            (JSON..=) "ExternalDataFilteringAllowList"
                              Prelude.<$> externalDataFilteringAllowList,
                            (JSON..=) "MutationType" Prelude.<$> mutationType,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "TrustedResourceOwners"
                              Prelude.<$> trustedResourceOwners])}
instance JSON.ToJSON DataLakeSettings where
  toJSON DataLakeSettings {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Admins" Prelude.<$> admins,
               (JSON..=) "AllowExternalDataFiltering"
                 Prelude.<$> allowExternalDataFiltering,
               (JSON..=) "AllowFullTableExternalDataAccess"
                 Prelude.<$> allowFullTableExternalDataAccess,
               (JSON..=) "AuthorizedSessionTagValueList"
                 Prelude.<$> authorizedSessionTagValueList,
               (JSON..=) "CreateDatabaseDefaultPermissions"
                 Prelude.<$> createDatabaseDefaultPermissions,
               (JSON..=) "CreateTableDefaultPermissions"
                 Prelude.<$> createTableDefaultPermissions,
               (JSON..=) "ExternalDataFilteringAllowList"
                 Prelude.<$> externalDataFilteringAllowList,
               (JSON..=) "MutationType" Prelude.<$> mutationType,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "TrustedResourceOwners"
                 Prelude.<$> trustedResourceOwners]))
instance Property "Admins" DataLakeSettings where
  type PropertyType "Admins" DataLakeSettings = AdminsProperty
  set newValue DataLakeSettings {..}
    = DataLakeSettings {admins = Prelude.pure newValue, ..}
instance Property "AllowExternalDataFiltering" DataLakeSettings where
  type PropertyType "AllowExternalDataFiltering" DataLakeSettings = Value Prelude.Bool
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {allowExternalDataFiltering = Prelude.pure newValue, ..}
instance Property "AllowFullTableExternalDataAccess" DataLakeSettings where
  type PropertyType "AllowFullTableExternalDataAccess" DataLakeSettings = Value Prelude.Bool
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {allowFullTableExternalDataAccess = Prelude.pure newValue, ..}
instance Property "AuthorizedSessionTagValueList" DataLakeSettings where
  type PropertyType "AuthorizedSessionTagValueList" DataLakeSettings = ValueList Prelude.Text
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {authorizedSessionTagValueList = Prelude.pure newValue, ..}
instance Property "CreateDatabaseDefaultPermissions" DataLakeSettings where
  type PropertyType "CreateDatabaseDefaultPermissions" DataLakeSettings = CreateDatabaseDefaultPermissionsProperty
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {createDatabaseDefaultPermissions = Prelude.pure newValue, ..}
instance Property "CreateTableDefaultPermissions" DataLakeSettings where
  type PropertyType "CreateTableDefaultPermissions" DataLakeSettings = CreateTableDefaultPermissionsProperty
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {createTableDefaultPermissions = Prelude.pure newValue, ..}
instance Property "ExternalDataFilteringAllowList" DataLakeSettings where
  type PropertyType "ExternalDataFilteringAllowList" DataLakeSettings = ExternalDataFilteringAllowListProperty
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {externalDataFilteringAllowList = Prelude.pure newValue, ..}
instance Property "MutationType" DataLakeSettings where
  type PropertyType "MutationType" DataLakeSettings = Value Prelude.Text
  set newValue DataLakeSettings {..}
    = DataLakeSettings {mutationType = Prelude.pure newValue, ..}
instance Property "Parameters" DataLakeSettings where
  type PropertyType "Parameters" DataLakeSettings = JSON.Object
  set newValue DataLakeSettings {..}
    = DataLakeSettings {parameters = Prelude.pure newValue, ..}
instance Property "TrustedResourceOwners" DataLakeSettings where
  type PropertyType "TrustedResourceOwners" DataLakeSettings = ValueList Prelude.Text
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {trustedResourceOwners = Prelude.pure newValue, ..}