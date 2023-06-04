module Stratosphere.Glue.Database.DatabaseInputProperty (
        module Exports, DatabaseInputProperty(..), mkDatabaseInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Database.DatabaseIdentifierProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Database.FederatedDatabaseProperty as Exports
import {-# SOURCE #-} Stratosphere.Glue.Database.PrincipalPrivilegesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DatabaseInputProperty
  = DatabaseInputProperty {createTableDefaultPermissions :: (Prelude.Maybe [PrincipalPrivilegesProperty]),
                           description :: (Prelude.Maybe (Value Prelude.Text)),
                           federatedDatabase :: (Prelude.Maybe FederatedDatabaseProperty),
                           locationUri :: (Prelude.Maybe (Value Prelude.Text)),
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           parameters :: (Prelude.Maybe JSON.Object),
                           targetDatabase :: (Prelude.Maybe DatabaseIdentifierProperty)}
mkDatabaseInputProperty :: DatabaseInputProperty
mkDatabaseInputProperty
  = DatabaseInputProperty
      {createTableDefaultPermissions = Prelude.Nothing,
       description = Prelude.Nothing, federatedDatabase = Prelude.Nothing,
       locationUri = Prelude.Nothing, name = Prelude.Nothing,
       parameters = Prelude.Nothing, targetDatabase = Prelude.Nothing}
instance ToResourceProperties DatabaseInputProperty where
  toResourceProperties DatabaseInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Database.DatabaseInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CreateTableDefaultPermissions"
                              Prelude.<$> createTableDefaultPermissions,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "FederatedDatabase" Prelude.<$> federatedDatabase,
                            (JSON..=) "LocationUri" Prelude.<$> locationUri,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "TargetDatabase" Prelude.<$> targetDatabase])}
instance JSON.ToJSON DatabaseInputProperty where
  toJSON DatabaseInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CreateTableDefaultPermissions"
                 Prelude.<$> createTableDefaultPermissions,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "FederatedDatabase" Prelude.<$> federatedDatabase,
               (JSON..=) "LocationUri" Prelude.<$> locationUri,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "TargetDatabase" Prelude.<$> targetDatabase]))
instance Property "CreateTableDefaultPermissions" DatabaseInputProperty where
  type PropertyType "CreateTableDefaultPermissions" DatabaseInputProperty = [PrincipalPrivilegesProperty]
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty
        {createTableDefaultPermissions = Prelude.pure newValue, ..}
instance Property "Description" DatabaseInputProperty where
  type PropertyType "Description" DatabaseInputProperty = Value Prelude.Text
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty {description = Prelude.pure newValue, ..}
instance Property "FederatedDatabase" DatabaseInputProperty where
  type PropertyType "FederatedDatabase" DatabaseInputProperty = FederatedDatabaseProperty
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty
        {federatedDatabase = Prelude.pure newValue, ..}
instance Property "LocationUri" DatabaseInputProperty where
  type PropertyType "LocationUri" DatabaseInputProperty = Value Prelude.Text
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty {locationUri = Prelude.pure newValue, ..}
instance Property "Name" DatabaseInputProperty where
  type PropertyType "Name" DatabaseInputProperty = Value Prelude.Text
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty {name = Prelude.pure newValue, ..}
instance Property "Parameters" DatabaseInputProperty where
  type PropertyType "Parameters" DatabaseInputProperty = JSON.Object
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty {parameters = Prelude.pure newValue, ..}
instance Property "TargetDatabase" DatabaseInputProperty where
  type PropertyType "TargetDatabase" DatabaseInputProperty = DatabaseIdentifierProperty
  set newValue DatabaseInputProperty {..}
    = DatabaseInputProperty
        {targetDatabase = Prelude.pure newValue, ..}