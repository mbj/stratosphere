module Stratosphere.Lightsail.Database (
        module Exports, Database(..), mkDatabase
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Database.RelationalDatabaseParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Database
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html>
    Database {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-availabilityzone>
              availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-backupretention>
              backupRetention :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-cacertificateidentifier>
              caCertificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-masterdatabasename>
              masterDatabaseName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-masteruserpassword>
              masterUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-masterusername>
              masterUsername :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-preferredbackupwindow>
              preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-preferredmaintenancewindow>
              preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-publiclyaccessible>
              publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-relationaldatabaseblueprintid>
              relationalDatabaseBlueprintId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-relationaldatabasebundleid>
              relationalDatabaseBundleId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-relationaldatabasename>
              relationalDatabaseName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-relationaldatabaseparameters>
              relationalDatabaseParameters :: (Prelude.Maybe [RelationalDatabaseParameterProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-rotatemasteruserpassword>
              rotateMasterUserPassword :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-database.html#cfn-lightsail-database-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabase ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Database
mkDatabase
  masterDatabaseName
  masterUsername
  relationalDatabaseBlueprintId
  relationalDatabaseBundleId
  relationalDatabaseName
  = Database
      {haddock_workaround_ = (), masterDatabaseName = masterDatabaseName,
       masterUsername = masterUsername,
       relationalDatabaseBlueprintId = relationalDatabaseBlueprintId,
       relationalDatabaseBundleId = relationalDatabaseBundleId,
       relationalDatabaseName = relationalDatabaseName,
       availabilityZone = Prelude.Nothing,
       backupRetention = Prelude.Nothing,
       caCertificateIdentifier = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing,
       preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       relationalDatabaseParameters = Prelude.Nothing,
       rotateMasterUserPassword = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Database where
  toResourceProperties Database {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Database", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MasterDatabaseName" JSON..= masterDatabaseName,
                            "MasterUsername" JSON..= masterUsername,
                            "RelationalDatabaseBlueprintId"
                              JSON..= relationalDatabaseBlueprintId,
                            "RelationalDatabaseBundleId" JSON..= relationalDatabaseBundleId,
                            "RelationalDatabaseName" JSON..= relationalDatabaseName]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "BackupRetention" Prelude.<$> backupRetention,
                               (JSON..=) "CaCertificateIdentifier"
                                 Prelude.<$> caCertificateIdentifier,
                               (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
                               (JSON..=) "PreferredBackupWindow"
                                 Prelude.<$> preferredBackupWindow,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "RelationalDatabaseParameters"
                                 Prelude.<$> relationalDatabaseParameters,
                               (JSON..=) "RotateMasterUserPassword"
                                 Prelude.<$> rotateMasterUserPassword,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Database where
  toJSON Database {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MasterDatabaseName" JSON..= masterDatabaseName,
               "MasterUsername" JSON..= masterUsername,
               "RelationalDatabaseBlueprintId"
                 JSON..= relationalDatabaseBlueprintId,
               "RelationalDatabaseBundleId" JSON..= relationalDatabaseBundleId,
               "RelationalDatabaseName" JSON..= relationalDatabaseName]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "BackupRetention" Prelude.<$> backupRetention,
                  (JSON..=) "CaCertificateIdentifier"
                    Prelude.<$> caCertificateIdentifier,
                  (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
                  (JSON..=) "PreferredBackupWindow"
                    Prelude.<$> preferredBackupWindow,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "RelationalDatabaseParameters"
                    Prelude.<$> relationalDatabaseParameters,
                  (JSON..=) "RotateMasterUserPassword"
                    Prelude.<$> rotateMasterUserPassword,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AvailabilityZone" Database where
  type PropertyType "AvailabilityZone" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {availabilityZone = Prelude.pure newValue, ..}
instance Property "BackupRetention" Database where
  type PropertyType "BackupRetention" Database = Value Prelude.Bool
  set newValue Database {..}
    = Database {backupRetention = Prelude.pure newValue, ..}
instance Property "CaCertificateIdentifier" Database where
  type PropertyType "CaCertificateIdentifier" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {caCertificateIdentifier = Prelude.pure newValue, ..}
instance Property "MasterDatabaseName" Database where
  type PropertyType "MasterDatabaseName" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {masterDatabaseName = newValue, ..}
instance Property "MasterUserPassword" Database where
  type PropertyType "MasterUserPassword" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {masterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUsername" Database where
  type PropertyType "MasterUsername" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {masterUsername = newValue, ..}
instance Property "PreferredBackupWindow" Database where
  type PropertyType "PreferredBackupWindow" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {preferredBackupWindow = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" Database where
  type PropertyType "PreferredMaintenanceWindow" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Database where
  type PropertyType "PubliclyAccessible" Database = Value Prelude.Bool
  set newValue Database {..}
    = Database {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "RelationalDatabaseBlueprintId" Database where
  type PropertyType "RelationalDatabaseBlueprintId" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {relationalDatabaseBlueprintId = newValue, ..}
instance Property "RelationalDatabaseBundleId" Database where
  type PropertyType "RelationalDatabaseBundleId" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {relationalDatabaseBundleId = newValue, ..}
instance Property "RelationalDatabaseName" Database where
  type PropertyType "RelationalDatabaseName" Database = Value Prelude.Text
  set newValue Database {..}
    = Database {relationalDatabaseName = newValue, ..}
instance Property "RelationalDatabaseParameters" Database where
  type PropertyType "RelationalDatabaseParameters" Database = [RelationalDatabaseParameterProperty]
  set newValue Database {..}
    = Database
        {relationalDatabaseParameters = Prelude.pure newValue, ..}
instance Property "RotateMasterUserPassword" Database where
  type PropertyType "RotateMasterUserPassword" Database = Value Prelude.Bool
  set newValue Database {..}
    = Database {rotateMasterUserPassword = Prelude.pure newValue, ..}
instance Property "Tags" Database where
  type PropertyType "Tags" Database = [Tag]
  set newValue Database {..}
    = Database {tags = Prelude.pure newValue, ..}