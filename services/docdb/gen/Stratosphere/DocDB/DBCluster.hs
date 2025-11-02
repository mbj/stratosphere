module Stratosphere.DocDB.DBCluster (
        module Exports, DBCluster(..), mkDBCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DocDB.DBCluster.ServerlessV2ScalingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html>
    DBCluster {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-availabilityzones>
               availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-backupretentionperiod>
               backupRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-copytagstosnapshot>
               copyTagsToSnapshot :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusteridentifier>
               dBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusterparametergroupname>
               dBClusterParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbsubnetgroupname>
               dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-deletionprotection>
               deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-enablecloudwatchlogsexports>
               enableCloudwatchLogsExports :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-engineversion>
               engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-kmskeyid>
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masteruserpassword>
               masterUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masterusername>
               masterUsername :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-port>
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredbackupwindow>
               preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredmaintenancewindow>
               preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-restoretotime>
               restoreToTime :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-restoretype>
               restoreType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-serverlessv2scalingconfiguration>
               serverlessV2ScalingConfiguration :: (Prelude.Maybe ServerlessV2ScalingConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-snapshotidentifier>
               snapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-sourcedbclusteridentifier>
               sourceDBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-storageencrypted>
               storageEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-storagetype>
               storageType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-uselatestrestorabletime>
               useLatestRestorableTime :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-vpcsecuritygroupids>
               vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBCluster :: DBCluster
mkDBCluster
  = DBCluster
      {haddock_workaround_ = (), availabilityZones = Prelude.Nothing,
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
       serverlessV2ScalingConfiguration = Prelude.Nothing,
       snapshotIdentifier = Prelude.Nothing,
       sourceDBClusterIdentifier = Prelude.Nothing,
       storageEncrypted = Prelude.Nothing, storageType = Prelude.Nothing,
       tags = Prelude.Nothing, useLatestRestorableTime = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties DBCluster where
  toResourceProperties DBCluster {..}
    = ResourceProperties
        {awsType = "AWS::DocDB::DBCluster", supportsTags = Prelude.True,
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
                            (JSON..=) "ServerlessV2ScalingConfiguration"
                              Prelude.<$> serverlessV2ScalingConfiguration,
                            (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
                            (JSON..=) "SourceDBClusterIdentifier"
                              Prelude.<$> sourceDBClusterIdentifier,
                            (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
                            (JSON..=) "StorageType" Prelude.<$> storageType,
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
               (JSON..=) "ServerlessV2ScalingConfiguration"
                 Prelude.<$> serverlessV2ScalingConfiguration,
               (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
               (JSON..=) "SourceDBClusterIdentifier"
                 Prelude.<$> sourceDBClusterIdentifier,
               (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
               (JSON..=) "StorageType" Prelude.<$> storageType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UseLatestRestorableTime"
                 Prelude.<$> useLatestRestorableTime,
               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))
instance Property "AvailabilityZones" DBCluster where
  type PropertyType "AvailabilityZones" DBCluster = ValueList Prelude.Text
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
  type PropertyType "EnableCloudwatchLogsExports" DBCluster = ValueList Prelude.Text
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
instance Property "ServerlessV2ScalingConfiguration" DBCluster where
  type PropertyType "ServerlessV2ScalingConfiguration" DBCluster = ServerlessV2ScalingConfigurationProperty
  set newValue DBCluster {..}
    = DBCluster
        {serverlessV2ScalingConfiguration = Prelude.pure newValue, ..}
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
instance Property "StorageType" DBCluster where
  type PropertyType "StorageType" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {storageType = Prelude.pure newValue, ..}
instance Property "Tags" DBCluster where
  type PropertyType "Tags" DBCluster = [Tag]
  set newValue DBCluster {..}
    = DBCluster {tags = Prelude.pure newValue, ..}
instance Property "UseLatestRestorableTime" DBCluster where
  type PropertyType "UseLatestRestorableTime" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {useLatestRestorableTime = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" DBCluster where
  type PropertyType "VpcSecurityGroupIds" DBCluster = ValueList Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {vpcSecurityGroupIds = Prelude.pure newValue, ..}