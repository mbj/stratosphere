module Stratosphere.DocDB.DBCluster (
        DBCluster(..), mkDBCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBCluster
  = DBCluster {availabilityZones :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               backupRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
               copyTagsToSnapshot :: (Prelude.Maybe (Value Prelude.Bool)),
               dBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               dBClusterParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
               enableCloudwatchLogsExports :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
               engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               masterUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
               masterUsername :: (Prelude.Maybe (Value Prelude.Text)),
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
               preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
               restoreToTime :: (Prelude.Maybe (Value Prelude.Text)),
               restoreType :: (Prelude.Maybe (Value Prelude.Text)),
               snapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               sourceDBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               storageEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
               tags :: (Prelude.Maybe [Tag]),
               useLatestRestorableTime :: (Prelude.Maybe (Value Prelude.Bool)),
               vpcSecurityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkDBCluster :: DBCluster
mkDBCluster
  = DBCluster
      {availabilityZones = Prelude.Nothing,
       backupRetentionPeriod = Prelude.Nothing,
       copyTagsToSnapshot = Prelude.Nothing,
       dBClusterIdentifier = Prelude.Nothing,
       dBClusterParameterGroupName = Prelude.Nothing,
       dBSubnetGroupName = Prelude.Nothing,
       deletionProtection = Prelude.Nothing,
       enableCloudwatchLogsExports = Prelude.Nothing,
       engineVersion = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing,
       masterUsername = Prelude.Nothing, port = Prelude.Nothing,
       preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       restoreToTime = Prelude.Nothing, restoreType = Prelude.Nothing,
       snapshotIdentifier = Prelude.Nothing,
       sourceDBClusterIdentifier = Prelude.Nothing,
       storageEncrypted = Prelude.Nothing, tags = Prelude.Nothing,
       useLatestRestorableTime = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties DBCluster where
  toResourceProperties DBCluster {..}
    = ResourceProperties
        {awsType = "AWS::DocDB::DBCluster",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                            (JSON..=) "BackupRetentionPeriod"
                              Prelude.<$> backupRetentionPeriod,
                            (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
                            (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
                            (JSON..=) "DBClusterParameterGroupName"
                              Prelude.<$> dBClusterParameterGroupName,
                            (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                            (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                            (JSON..=) "EnableCloudwatchLogsExports"
                              Prelude.<$> enableCloudwatchLogsExports,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
                            (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "PreferredBackupWindow"
                              Prelude.<$> preferredBackupWindow,
                            (JSON..=) "PreferredMaintenanceWindow"
                              Prelude.<$> preferredMaintenanceWindow,
                            (JSON..=) "RestoreToTime" Prelude.<$> restoreToTime,
                            (JSON..=) "RestoreType" Prelude.<$> restoreType,
                            (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
                            (JSON..=) "SourceDBClusterIdentifier"
                              Prelude.<$> sourceDBClusterIdentifier,
                            (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "UseLatestRestorableTime"
                              Prelude.<$> useLatestRestorableTime,
                            (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])}
instance JSON.ToJSON DBCluster where
  toJSON DBCluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
               (JSON..=) "BackupRetentionPeriod"
                 Prelude.<$> backupRetentionPeriod,
               (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
               (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
               (JSON..=) "DBClusterParameterGroupName"
                 Prelude.<$> dBClusterParameterGroupName,
               (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
               (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
               (JSON..=) "EnableCloudwatchLogsExports"
                 Prelude.<$> enableCloudwatchLogsExports,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
               (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "PreferredBackupWindow"
                 Prelude.<$> preferredBackupWindow,
               (JSON..=) "PreferredMaintenanceWindow"
                 Prelude.<$> preferredMaintenanceWindow,
               (JSON..=) "RestoreToTime" Prelude.<$> restoreToTime,
               (JSON..=) "RestoreType" Prelude.<$> restoreType,
               (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
               (JSON..=) "SourceDBClusterIdentifier"
                 Prelude.<$> sourceDBClusterIdentifier,
               (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UseLatestRestorableTime"
                 Prelude.<$> useLatestRestorableTime,
               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))
instance Property "AvailabilityZones" DBCluster where
  type PropertyType "AvailabilityZones" DBCluster = ValueList (Value Prelude.Text)
  set newValue DBCluster {..}
    = DBCluster {availabilityZones = Prelude.pure newValue, ..}
instance Property "BackupRetentionPeriod" DBCluster where
  type PropertyType "BackupRetentionPeriod" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {backupRetentionPeriod = Prelude.pure newValue, ..}
instance Property "CopyTagsToSnapshot" DBCluster where
  type PropertyType "CopyTagsToSnapshot" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {copyTagsToSnapshot = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBCluster where
  type PropertyType "DBClusterIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "DBClusterParameterGroupName" DBCluster where
  type PropertyType "DBClusterParameterGroupName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {dBClusterParameterGroupName = Prelude.pure newValue, ..}
instance Property "DBSubnetGroupName" DBCluster where
  type PropertyType "DBSubnetGroupName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBSubnetGroupName = Prelude.pure newValue, ..}
instance Property "DeletionProtection" DBCluster where
  type PropertyType "DeletionProtection" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {deletionProtection = Prelude.pure newValue, ..}
instance Property "EnableCloudwatchLogsExports" DBCluster where
  type PropertyType "EnableCloudwatchLogsExports" DBCluster = ValueList (Value Prelude.Text)
  set newValue DBCluster {..}
    = DBCluster
        {enableCloudwatchLogsExports = Prelude.pure newValue, ..}
instance Property "EngineVersion" DBCluster where
  type PropertyType "EngineVersion" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {engineVersion = Prelude.pure newValue, ..}
instance Property "KmsKeyId" DBCluster where
  type PropertyType "KmsKeyId" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MasterUserPassword" DBCluster where
  type PropertyType "MasterUserPassword" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {masterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUsername" DBCluster where
  type PropertyType "MasterUsername" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {masterUsername = Prelude.pure newValue, ..}
instance Property "Port" DBCluster where
  type PropertyType "Port" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {port = Prelude.pure newValue, ..}
instance Property "PreferredBackupWindow" DBCluster where
  type PropertyType "PreferredBackupWindow" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {preferredBackupWindow = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" DBCluster where
  type PropertyType "PreferredMaintenanceWindow" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "RestoreToTime" DBCluster where
  type PropertyType "RestoreToTime" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {restoreToTime = Prelude.pure newValue, ..}
instance Property "RestoreType" DBCluster where
  type PropertyType "RestoreType" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {restoreType = Prelude.pure newValue, ..}
instance Property "SnapshotIdentifier" DBCluster where
  type PropertyType "SnapshotIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {snapshotIdentifier = Prelude.pure newValue, ..}
instance Property "SourceDBClusterIdentifier" DBCluster where
  type PropertyType "SourceDBClusterIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {sourceDBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "StorageEncrypted" DBCluster where
  type PropertyType "StorageEncrypted" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {storageEncrypted = Prelude.pure newValue, ..}
instance Property "Tags" DBCluster where
  type PropertyType "Tags" DBCluster = [Tag]
  set newValue DBCluster {..}
    = DBCluster {tags = Prelude.pure newValue, ..}
instance Property "UseLatestRestorableTime" DBCluster where
  type PropertyType "UseLatestRestorableTime" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {useLatestRestorableTime = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" DBCluster where
  type PropertyType "VpcSecurityGroupIds" DBCluster = ValueList (Value Prelude.Text)
  set newValue DBCluster {..}
    = DBCluster {vpcSecurityGroupIds = Prelude.pure newValue, ..}