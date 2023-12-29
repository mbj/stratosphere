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
  = DataLakeSettings {admins :: (Prelude.Maybe AdminsProperty),
                      allowExternalDataFiltering :: (Prelude.Maybe (Value Prelude.Bool)),
                      authorizedSessionTagValueList :: (Prelude.Maybe (ValueList Prelude.Text)),
                      createDatabaseDefaultPermissions :: (Prelude.Maybe CreateDatabaseDefaultPermissionsProperty),
                      createTableDefaultPermissions :: (Prelude.Maybe CreateTableDefaultPermissionsProperty),
                      externalDataFilteringAllowList :: (Prelude.Maybe ExternalDataFilteringAllowListProperty),
                      parameters :: (Prelude.Maybe JSON.Object),
                      trustedResourceOwners :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataLakeSettings :: DataLakeSettings
mkDataLakeSettings
  = DataLakeSettings
      {admins = Prelude.Nothing,
       allowExternalDataFiltering = Prelude.Nothing,
       authorizedSessionTagValueList = Prelude.Nothing,
       createDatabaseDefaultPermissions = Prelude.Nothing,
       createTableDefaultPermissions = Prelude.Nothing,
       externalDataFilteringAllowList = Prelude.Nothing,
       parameters = Prelude.Nothing,
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
                            (JSON..=) "AuthorizedSessionTagValueList"
                              Prelude.<$> authorizedSessionTagValueList,
                            (JSON..=) "CreateDatabaseDefaultPermissions"
                              Prelude.<$> createDatabaseDefaultPermissions,
                            (JSON..=) "CreateTableDefaultPermissions"
                              Prelude.<$> createTableDefaultPermissions,
                            (JSON..=) "ExternalDataFilteringAllowList"
                              Prelude.<$> externalDataFilteringAllowList,
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
               (JSON..=) "AuthorizedSessionTagValueList"
                 Prelude.<$> authorizedSessionTagValueList,
               (JSON..=) "CreateDatabaseDefaultPermissions"
                 Prelude.<$> createDatabaseDefaultPermissions,
               (JSON..=) "CreateTableDefaultPermissions"
                 Prelude.<$> createTableDefaultPermissions,
               (JSON..=) "ExternalDataFilteringAllowList"
                 Prelude.<$> externalDataFilteringAllowList,
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
instance Property "Parameters" DataLakeSettings where
  type PropertyType "Parameters" DataLakeSettings = JSON.Object
  set newValue DataLakeSettings {..}
    = DataLakeSettings {parameters = Prelude.pure newValue, ..}
instance Property "TrustedResourceOwners" DataLakeSettings where
  type PropertyType "TrustedResourceOwners" DataLakeSettings = ValueList Prelude.Text
  set newValue DataLakeSettings {..}
    = DataLakeSettings
        {trustedResourceOwners = Prelude.pure newValue, ..}