module Stratosphere.RDS.DBInstance (
        module Exports, DBInstance(..), mkDBInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBInstance.CertificateDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBInstance.DBInstanceRoleProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBInstance.EndpointProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBInstance.MasterUserSecretProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBInstance.ProcessorFeatureProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBInstance
  = DBInstance {allocatedStorage :: (Prelude.Maybe (Value Prelude.Text)),
                allowMajorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                associatedRoles :: (Prelude.Maybe [DBInstanceRoleProperty]),
                autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                backupRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                cACertificateIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                certificateDetails :: (Prelude.Maybe CertificateDetailsProperty),
                certificateRotationRestart :: (Prelude.Maybe (Value Prelude.Bool)),
                characterSetName :: (Prelude.Maybe (Value Prelude.Text)),
                copyTagsToSnapshot :: (Prelude.Maybe (Value Prelude.Bool)),
                customIAMInstanceProfile :: (Prelude.Maybe (Value Prelude.Text)),
                dBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBClusterSnapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBInstanceClass :: (Prelude.Maybe (Value Prelude.Text)),
                dBInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBName :: (Prelude.Maybe (Value Prelude.Text)),
                dBParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                dBSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                dBSnapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                deleteAutomatedBackups :: (Prelude.Maybe (Value Prelude.Bool)),
                deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
                domain :: (Prelude.Maybe (Value Prelude.Text)),
                domainIAMRoleName :: (Prelude.Maybe (Value Prelude.Text)),
                enableCloudwatchLogsExports :: (Prelude.Maybe (ValueList Prelude.Text)),
                enableIAMDatabaseAuthentication :: (Prelude.Maybe (Value Prelude.Bool)),
                enablePerformanceInsights :: (Prelude.Maybe (Value Prelude.Bool)),
                endpoint :: (Prelude.Maybe EndpointProperty),
                engine :: (Prelude.Maybe (Value Prelude.Text)),
                engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                iops :: (Prelude.Maybe (Value Prelude.Integer)),
                kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                licenseModel :: (Prelude.Maybe (Value Prelude.Text)),
                manageMasterUserPassword :: (Prelude.Maybe (Value Prelude.Bool)),
                masterUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
                masterUserSecret :: (Prelude.Maybe MasterUserSecretProperty),
                masterUsername :: (Prelude.Maybe (Value Prelude.Text)),
                maxAllocatedStorage :: (Prelude.Maybe (Value Prelude.Integer)),
                monitoringInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                monitoringRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                multiAZ :: (Prelude.Maybe (Value Prelude.Bool)),
                ncharCharacterSetName :: (Prelude.Maybe (Value Prelude.Text)),
                networkType :: (Prelude.Maybe (Value Prelude.Text)),
                optionGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                performanceInsightsKMSKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                performanceInsightsRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                port :: (Prelude.Maybe (Value Prelude.Text)),
                preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
                preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                processorFeatures :: (Prelude.Maybe [ProcessorFeatureProperty]),
                promotionTier :: (Prelude.Maybe (Value Prelude.Integer)),
                publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                replicaMode :: (Prelude.Maybe (Value Prelude.Text)),
                restoreTime :: (Prelude.Maybe (Value Prelude.Text)),
                sourceDBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                sourceDBInstanceAutomatedBackupsArn :: (Prelude.Maybe (Value Prelude.Text)),
                sourceDBInstanceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                sourceDbiResourceId :: (Prelude.Maybe (Value Prelude.Text)),
                sourceRegion :: (Prelude.Maybe (Value Prelude.Text)),
                storageEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                storageThroughput :: (Prelude.Maybe (Value Prelude.Integer)),
                storageType :: (Prelude.Maybe (Value Prelude.Text)),
                tags :: (Prelude.Maybe [Tag]),
                timezone :: (Prelude.Maybe (Value Prelude.Text)),
                useDefaultProcessorFeatures :: (Prelude.Maybe (Value Prelude.Bool)),
                useLatestRestorableTime :: (Prelude.Maybe (Value Prelude.Bool)),
                vPCSecurityGroups :: (Prelude.Maybe (ValueList Prelude.Text))}
mkDBInstance :: DBInstance
mkDBInstance
  = DBInstance
      {allocatedStorage = Prelude.Nothing,
       allowMajorVersionUpgrade = Prelude.Nothing,
       associatedRoles = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       backupRetentionPeriod = Prelude.Nothing,
       cACertificateIdentifier = Prelude.Nothing,
       certificateDetails = Prelude.Nothing,
       certificateRotationRestart = Prelude.Nothing,
       characterSetName = Prelude.Nothing,
       copyTagsToSnapshot = Prelude.Nothing,
       customIAMInstanceProfile = Prelude.Nothing,
       dBClusterIdentifier = Prelude.Nothing,
       dBClusterSnapshotIdentifier = Prelude.Nothing,
       dBInstanceClass = Prelude.Nothing,
       dBInstanceIdentifier = Prelude.Nothing, dBName = Prelude.Nothing,
       dBParameterGroupName = Prelude.Nothing,
       dBSecurityGroups = Prelude.Nothing,
       dBSnapshotIdentifier = Prelude.Nothing,
       dBSubnetGroupName = Prelude.Nothing,
       deleteAutomatedBackups = Prelude.Nothing,
       deletionProtection = Prelude.Nothing, domain = Prelude.Nothing,
       domainIAMRoleName = Prelude.Nothing,
       enableCloudwatchLogsExports = Prelude.Nothing,
       enableIAMDatabaseAuthentication = Prelude.Nothing,
       enablePerformanceInsights = Prelude.Nothing,
       endpoint = Prelude.Nothing, engine = Prelude.Nothing,
       engineVersion = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, licenseModel = Prelude.Nothing,
       manageMasterUserPassword = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing,
       masterUserSecret = Prelude.Nothing,
       masterUsername = Prelude.Nothing,
       maxAllocatedStorage = Prelude.Nothing,
       monitoringInterval = Prelude.Nothing,
       monitoringRoleArn = Prelude.Nothing, multiAZ = Prelude.Nothing,
       ncharCharacterSetName = Prelude.Nothing,
       networkType = Prelude.Nothing, optionGroupName = Prelude.Nothing,
       performanceInsightsKMSKeyId = Prelude.Nothing,
       performanceInsightsRetentionPeriod = Prelude.Nothing,
       port = Prelude.Nothing, preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       processorFeatures = Prelude.Nothing,
       promotionTier = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       replicaMode = Prelude.Nothing, restoreTime = Prelude.Nothing,
       sourceDBClusterIdentifier = Prelude.Nothing,
       sourceDBInstanceAutomatedBackupsArn = Prelude.Nothing,
       sourceDBInstanceIdentifier = Prelude.Nothing,
       sourceDbiResourceId = Prelude.Nothing,
       sourceRegion = Prelude.Nothing, storageEncrypted = Prelude.Nothing,
       storageThroughput = Prelude.Nothing, storageType = Prelude.Nothing,
       tags = Prelude.Nothing, timezone = Prelude.Nothing,
       useDefaultProcessorFeatures = Prelude.Nothing,
       useLatestRestorableTime = Prelude.Nothing,
       vPCSecurityGroups = Prelude.Nothing}
instance ToResourceProperties DBInstance where
  toResourceProperties DBInstance {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBInstance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
                            (JSON..=) "AllowMajorVersionUpgrade"
                              Prelude.<$> allowMajorVersionUpgrade,
                            (JSON..=) "AssociatedRoles" Prelude.<$> associatedRoles,
                            (JSON..=) "AutoMinorVersionUpgrade"
                              Prelude.<$> autoMinorVersionUpgrade,
                            (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "BackupRetentionPeriod"
                              Prelude.<$> backupRetentionPeriod,
                            (JSON..=) "CACertificateIdentifier"
                              Prelude.<$> cACertificateIdentifier,
                            (JSON..=) "CertificateDetails" Prelude.<$> certificateDetails,
                            (JSON..=) "CertificateRotationRestart"
                              Prelude.<$> certificateRotationRestart,
                            (JSON..=) "CharacterSetName" Prelude.<$> characterSetName,
                            (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
                            (JSON..=) "CustomIAMInstanceProfile"
                              Prelude.<$> customIAMInstanceProfile,
                            (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
                            (JSON..=) "DBClusterSnapshotIdentifier"
                              Prelude.<$> dBClusterSnapshotIdentifier,
                            (JSON..=) "DBInstanceClass" Prelude.<$> dBInstanceClass,
                            (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
                            (JSON..=) "DBName" Prelude.<$> dBName,
                            (JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
                            (JSON..=) "DBSecurityGroups" Prelude.<$> dBSecurityGroups,
                            (JSON..=) "DBSnapshotIdentifier" Prelude.<$> dBSnapshotIdentifier,
                            (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                            (JSON..=) "DeleteAutomatedBackups"
                              Prelude.<$> deleteAutomatedBackups,
                            (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "DomainIAMRoleName" Prelude.<$> domainIAMRoleName,
                            (JSON..=) "EnableCloudwatchLogsExports"
                              Prelude.<$> enableCloudwatchLogsExports,
                            (JSON..=) "EnableIAMDatabaseAuthentication"
                              Prelude.<$> enableIAMDatabaseAuthentication,
                            (JSON..=) "EnablePerformanceInsights"
                              Prelude.<$> enablePerformanceInsights,
                            (JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "Engine" Prelude.<$> engine,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
                            (JSON..=) "ManageMasterUserPassword"
                              Prelude.<$> manageMasterUserPassword,
                            (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
                            (JSON..=) "MasterUserSecret" Prelude.<$> masterUserSecret,
                            (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
                            (JSON..=) "MaxAllocatedStorage" Prelude.<$> maxAllocatedStorage,
                            (JSON..=) "MonitoringInterval" Prelude.<$> monitoringInterval,
                            (JSON..=) "MonitoringRoleArn" Prelude.<$> monitoringRoleArn,
                            (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
                            (JSON..=) "NcharCharacterSetName"
                              Prelude.<$> ncharCharacterSetName,
                            (JSON..=) "NetworkType" Prelude.<$> networkType,
                            (JSON..=) "OptionGroupName" Prelude.<$> optionGroupName,
                            (JSON..=) "PerformanceInsightsKMSKeyId"
                              Prelude.<$> performanceInsightsKMSKeyId,
                            (JSON..=) "PerformanceInsightsRetentionPeriod"
                              Prelude.<$> performanceInsightsRetentionPeriod,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "PreferredBackupWindow"
                              Prelude.<$> preferredBackupWindow,
                            (JSON..=) "PreferredMaintenanceWindow"
                              Prelude.<$> preferredMaintenanceWindow,
                            (JSON..=) "ProcessorFeatures" Prelude.<$> processorFeatures,
                            (JSON..=) "PromotionTier" Prelude.<$> promotionTier,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "ReplicaMode" Prelude.<$> replicaMode,
                            (JSON..=) "RestoreTime" Prelude.<$> restoreTime,
                            (JSON..=) "SourceDBClusterIdentifier"
                              Prelude.<$> sourceDBClusterIdentifier,
                            (JSON..=) "SourceDBInstanceAutomatedBackupsArn"
                              Prelude.<$> sourceDBInstanceAutomatedBackupsArn,
                            (JSON..=) "SourceDBInstanceIdentifier"
                              Prelude.<$> sourceDBInstanceIdentifier,
                            (JSON..=) "SourceDbiResourceId" Prelude.<$> sourceDbiResourceId,
                            (JSON..=) "SourceRegion" Prelude.<$> sourceRegion,
                            (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
                            (JSON..=) "StorageThroughput" Prelude.<$> storageThroughput,
                            (JSON..=) "StorageType" Prelude.<$> storageType,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Timezone" Prelude.<$> timezone,
                            (JSON..=) "UseDefaultProcessorFeatures"
                              Prelude.<$> useDefaultProcessorFeatures,
                            (JSON..=) "UseLatestRestorableTime"
                              Prelude.<$> useLatestRestorableTime,
                            (JSON..=) "VPCSecurityGroups" Prelude.<$> vPCSecurityGroups])}
instance JSON.ToJSON DBInstance where
  toJSON DBInstance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
               (JSON..=) "AllowMajorVersionUpgrade"
                 Prelude.<$> allowMajorVersionUpgrade,
               (JSON..=) "AssociatedRoles" Prelude.<$> associatedRoles,
               (JSON..=) "AutoMinorVersionUpgrade"
                 Prelude.<$> autoMinorVersionUpgrade,
               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "BackupRetentionPeriod"
                 Prelude.<$> backupRetentionPeriod,
               (JSON..=) "CACertificateIdentifier"
                 Prelude.<$> cACertificateIdentifier,
               (JSON..=) "CertificateDetails" Prelude.<$> certificateDetails,
               (JSON..=) "CertificateRotationRestart"
                 Prelude.<$> certificateRotationRestart,
               (JSON..=) "CharacterSetName" Prelude.<$> characterSetName,
               (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
               (JSON..=) "CustomIAMInstanceProfile"
                 Prelude.<$> customIAMInstanceProfile,
               (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
               (JSON..=) "DBClusterSnapshotIdentifier"
                 Prelude.<$> dBClusterSnapshotIdentifier,
               (JSON..=) "DBInstanceClass" Prelude.<$> dBInstanceClass,
               (JSON..=) "DBInstanceIdentifier" Prelude.<$> dBInstanceIdentifier,
               (JSON..=) "DBName" Prelude.<$> dBName,
               (JSON..=) "DBParameterGroupName" Prelude.<$> dBParameterGroupName,
               (JSON..=) "DBSecurityGroups" Prelude.<$> dBSecurityGroups,
               (JSON..=) "DBSnapshotIdentifier" Prelude.<$> dBSnapshotIdentifier,
               (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
               (JSON..=) "DeleteAutomatedBackups"
                 Prelude.<$> deleteAutomatedBackups,
               (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "DomainIAMRoleName" Prelude.<$> domainIAMRoleName,
               (JSON..=) "EnableCloudwatchLogsExports"
                 Prelude.<$> enableCloudwatchLogsExports,
               (JSON..=) "EnableIAMDatabaseAuthentication"
                 Prelude.<$> enableIAMDatabaseAuthentication,
               (JSON..=) "EnablePerformanceInsights"
                 Prelude.<$> enablePerformanceInsights,
               (JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "Engine" Prelude.<$> engine,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "LicenseModel" Prelude.<$> licenseModel,
               (JSON..=) "ManageMasterUserPassword"
                 Prelude.<$> manageMasterUserPassword,
               (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
               (JSON..=) "MasterUserSecret" Prelude.<$> masterUserSecret,
               (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
               (JSON..=) "MaxAllocatedStorage" Prelude.<$> maxAllocatedStorage,
               (JSON..=) "MonitoringInterval" Prelude.<$> monitoringInterval,
               (JSON..=) "MonitoringRoleArn" Prelude.<$> monitoringRoleArn,
               (JSON..=) "MultiAZ" Prelude.<$> multiAZ,
               (JSON..=) "NcharCharacterSetName"
                 Prelude.<$> ncharCharacterSetName,
               (JSON..=) "NetworkType" Prelude.<$> networkType,
               (JSON..=) "OptionGroupName" Prelude.<$> optionGroupName,
               (JSON..=) "PerformanceInsightsKMSKeyId"
                 Prelude.<$> performanceInsightsKMSKeyId,
               (JSON..=) "PerformanceInsightsRetentionPeriod"
                 Prelude.<$> performanceInsightsRetentionPeriod,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "PreferredBackupWindow"
                 Prelude.<$> preferredBackupWindow,
               (JSON..=) "PreferredMaintenanceWindow"
                 Prelude.<$> preferredMaintenanceWindow,
               (JSON..=) "ProcessorFeatures" Prelude.<$> processorFeatures,
               (JSON..=) "PromotionTier" Prelude.<$> promotionTier,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "ReplicaMode" Prelude.<$> replicaMode,
               (JSON..=) "RestoreTime" Prelude.<$> restoreTime,
               (JSON..=) "SourceDBClusterIdentifier"
                 Prelude.<$> sourceDBClusterIdentifier,
               (JSON..=) "SourceDBInstanceAutomatedBackupsArn"
                 Prelude.<$> sourceDBInstanceAutomatedBackupsArn,
               (JSON..=) "SourceDBInstanceIdentifier"
                 Prelude.<$> sourceDBInstanceIdentifier,
               (JSON..=) "SourceDbiResourceId" Prelude.<$> sourceDbiResourceId,
               (JSON..=) "SourceRegion" Prelude.<$> sourceRegion,
               (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
               (JSON..=) "StorageThroughput" Prelude.<$> storageThroughput,
               (JSON..=) "StorageType" Prelude.<$> storageType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Timezone" Prelude.<$> timezone,
               (JSON..=) "UseDefaultProcessorFeatures"
                 Prelude.<$> useDefaultProcessorFeatures,
               (JSON..=) "UseLatestRestorableTime"
                 Prelude.<$> useLatestRestorableTime,
               (JSON..=) "VPCSecurityGroups" Prelude.<$> vPCSecurityGroups]))
instance Property "AllocatedStorage" DBInstance where
  type PropertyType "AllocatedStorage" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {allocatedStorage = Prelude.pure newValue, ..}
instance Property "AllowMajorVersionUpgrade" DBInstance where
  type PropertyType "AllowMajorVersionUpgrade" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {allowMajorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AssociatedRoles" DBInstance where
  type PropertyType "AssociatedRoles" DBInstance = [DBInstanceRoleProperty]
  set newValue DBInstance {..}
    = DBInstance {associatedRoles = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" DBInstance where
  type PropertyType "AutoMinorVersionUpgrade" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" DBInstance where
  type PropertyType "AvailabilityZone" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {availabilityZone = Prelude.pure newValue, ..}
instance Property "BackupRetentionPeriod" DBInstance where
  type PropertyType "BackupRetentionPeriod" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {backupRetentionPeriod = Prelude.pure newValue, ..}
instance Property "CACertificateIdentifier" DBInstance where
  type PropertyType "CACertificateIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {cACertificateIdentifier = Prelude.pure newValue, ..}
instance Property "CertificateDetails" DBInstance where
  type PropertyType "CertificateDetails" DBInstance = CertificateDetailsProperty
  set newValue DBInstance {..}
    = DBInstance {certificateDetails = Prelude.pure newValue, ..}
instance Property "CertificateRotationRestart" DBInstance where
  type PropertyType "CertificateRotationRestart" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {certificateRotationRestart = Prelude.pure newValue, ..}
instance Property "CharacterSetName" DBInstance where
  type PropertyType "CharacterSetName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {characterSetName = Prelude.pure newValue, ..}
instance Property "CopyTagsToSnapshot" DBInstance where
  type PropertyType "CopyTagsToSnapshot" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {copyTagsToSnapshot = Prelude.pure newValue, ..}
instance Property "CustomIAMInstanceProfile" DBInstance where
  type PropertyType "CustomIAMInstanceProfile" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {customIAMInstanceProfile = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBInstance where
  type PropertyType "DBClusterIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "DBClusterSnapshotIdentifier" DBInstance where
  type PropertyType "DBClusterSnapshotIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {dBClusterSnapshotIdentifier = Prelude.pure newValue, ..}
instance Property "DBInstanceClass" DBInstance where
  type PropertyType "DBInstanceClass" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceClass = Prelude.pure newValue, ..}
instance Property "DBInstanceIdentifier" DBInstance where
  type PropertyType "DBInstanceIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBInstanceIdentifier = Prelude.pure newValue, ..}
instance Property "DBName" DBInstance where
  type PropertyType "DBName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBName = Prelude.pure newValue, ..}
instance Property "DBParameterGroupName" DBInstance where
  type PropertyType "DBParameterGroupName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBParameterGroupName = Prelude.pure newValue, ..}
instance Property "DBSecurityGroups" DBInstance where
  type PropertyType "DBSecurityGroups" DBInstance = ValueList Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBSecurityGroups = Prelude.pure newValue, ..}
instance Property "DBSnapshotIdentifier" DBInstance where
  type PropertyType "DBSnapshotIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBSnapshotIdentifier = Prelude.pure newValue, ..}
instance Property "DBSubnetGroupName" DBInstance where
  type PropertyType "DBSubnetGroupName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {dBSubnetGroupName = Prelude.pure newValue, ..}
instance Property "DeleteAutomatedBackups" DBInstance where
  type PropertyType "DeleteAutomatedBackups" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {deleteAutomatedBackups = Prelude.pure newValue, ..}
instance Property "DeletionProtection" DBInstance where
  type PropertyType "DeletionProtection" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {deletionProtection = Prelude.pure newValue, ..}
instance Property "Domain" DBInstance where
  type PropertyType "Domain" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {domain = Prelude.pure newValue, ..}
instance Property "DomainIAMRoleName" DBInstance where
  type PropertyType "DomainIAMRoleName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {domainIAMRoleName = Prelude.pure newValue, ..}
instance Property "EnableCloudwatchLogsExports" DBInstance where
  type PropertyType "EnableCloudwatchLogsExports" DBInstance = ValueList Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {enableCloudwatchLogsExports = Prelude.pure newValue, ..}
instance Property "EnableIAMDatabaseAuthentication" DBInstance where
  type PropertyType "EnableIAMDatabaseAuthentication" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {enableIAMDatabaseAuthentication = Prelude.pure newValue, ..}
instance Property "EnablePerformanceInsights" DBInstance where
  type PropertyType "EnablePerformanceInsights" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {enablePerformanceInsights = Prelude.pure newValue, ..}
instance Property "Endpoint" DBInstance where
  type PropertyType "Endpoint" DBInstance = EndpointProperty
  set newValue DBInstance {..}
    = DBInstance {endpoint = Prelude.pure newValue, ..}
instance Property "Engine" DBInstance where
  type PropertyType "Engine" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {engine = Prelude.pure newValue, ..}
instance Property "EngineVersion" DBInstance where
  type PropertyType "EngineVersion" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {engineVersion = Prelude.pure newValue, ..}
instance Property "Iops" DBInstance where
  type PropertyType "Iops" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" DBInstance where
  type PropertyType "KmsKeyId" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LicenseModel" DBInstance where
  type PropertyType "LicenseModel" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {licenseModel = Prelude.pure newValue, ..}
instance Property "ManageMasterUserPassword" DBInstance where
  type PropertyType "ManageMasterUserPassword" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {manageMasterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUserPassword" DBInstance where
  type PropertyType "MasterUserPassword" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {masterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUserSecret" DBInstance where
  type PropertyType "MasterUserSecret" DBInstance = MasterUserSecretProperty
  set newValue DBInstance {..}
    = DBInstance {masterUserSecret = Prelude.pure newValue, ..}
instance Property "MasterUsername" DBInstance where
  type PropertyType "MasterUsername" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {masterUsername = Prelude.pure newValue, ..}
instance Property "MaxAllocatedStorage" DBInstance where
  type PropertyType "MaxAllocatedStorage" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {maxAllocatedStorage = Prelude.pure newValue, ..}
instance Property "MonitoringInterval" DBInstance where
  type PropertyType "MonitoringInterval" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {monitoringInterval = Prelude.pure newValue, ..}
instance Property "MonitoringRoleArn" DBInstance where
  type PropertyType "MonitoringRoleArn" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {monitoringRoleArn = Prelude.pure newValue, ..}
instance Property "MultiAZ" DBInstance where
  type PropertyType "MultiAZ" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {multiAZ = Prelude.pure newValue, ..}
instance Property "NcharCharacterSetName" DBInstance where
  type PropertyType "NcharCharacterSetName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {ncharCharacterSetName = Prelude.pure newValue, ..}
instance Property "NetworkType" DBInstance where
  type PropertyType "NetworkType" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {networkType = Prelude.pure newValue, ..}
instance Property "OptionGroupName" DBInstance where
  type PropertyType "OptionGroupName" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {optionGroupName = Prelude.pure newValue, ..}
instance Property "PerformanceInsightsKMSKeyId" DBInstance where
  type PropertyType "PerformanceInsightsKMSKeyId" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {performanceInsightsKMSKeyId = Prelude.pure newValue, ..}
instance Property "PerformanceInsightsRetentionPeriod" DBInstance where
  type PropertyType "PerformanceInsightsRetentionPeriod" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance
        {performanceInsightsRetentionPeriod = Prelude.pure newValue, ..}
instance Property "Port" DBInstance where
  type PropertyType "Port" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {port = Prelude.pure newValue, ..}
instance Property "PreferredBackupWindow" DBInstance where
  type PropertyType "PreferredBackupWindow" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {preferredBackupWindow = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" DBInstance where
  type PropertyType "PreferredMaintenanceWindow" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "ProcessorFeatures" DBInstance where
  type PropertyType "ProcessorFeatures" DBInstance = [ProcessorFeatureProperty]
  set newValue DBInstance {..}
    = DBInstance {processorFeatures = Prelude.pure newValue, ..}
instance Property "PromotionTier" DBInstance where
  type PropertyType "PromotionTier" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {promotionTier = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" DBInstance where
  type PropertyType "PubliclyAccessible" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "ReplicaMode" DBInstance where
  type PropertyType "ReplicaMode" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {replicaMode = Prelude.pure newValue, ..}
instance Property "RestoreTime" DBInstance where
  type PropertyType "RestoreTime" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {restoreTime = Prelude.pure newValue, ..}
instance Property "SourceDBClusterIdentifier" DBInstance where
  type PropertyType "SourceDBClusterIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {sourceDBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "SourceDBInstanceAutomatedBackupsArn" DBInstance where
  type PropertyType "SourceDBInstanceAutomatedBackupsArn" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {sourceDBInstanceAutomatedBackupsArn = Prelude.pure newValue, ..}
instance Property "SourceDBInstanceIdentifier" DBInstance where
  type PropertyType "SourceDBInstanceIdentifier" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance
        {sourceDBInstanceIdentifier = Prelude.pure newValue, ..}
instance Property "SourceDbiResourceId" DBInstance where
  type PropertyType "SourceDbiResourceId" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {sourceDbiResourceId = Prelude.pure newValue, ..}
instance Property "SourceRegion" DBInstance where
  type PropertyType "SourceRegion" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {sourceRegion = Prelude.pure newValue, ..}
instance Property "StorageEncrypted" DBInstance where
  type PropertyType "StorageEncrypted" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {storageEncrypted = Prelude.pure newValue, ..}
instance Property "StorageThroughput" DBInstance where
  type PropertyType "StorageThroughput" DBInstance = Value Prelude.Integer
  set newValue DBInstance {..}
    = DBInstance {storageThroughput = Prelude.pure newValue, ..}
instance Property "StorageType" DBInstance where
  type PropertyType "StorageType" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {storageType = Prelude.pure newValue, ..}
instance Property "Tags" DBInstance where
  type PropertyType "Tags" DBInstance = [Tag]
  set newValue DBInstance {..}
    = DBInstance {tags = Prelude.pure newValue, ..}
instance Property "Timezone" DBInstance where
  type PropertyType "Timezone" DBInstance = Value Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {timezone = Prelude.pure newValue, ..}
instance Property "UseDefaultProcessorFeatures" DBInstance where
  type PropertyType "UseDefaultProcessorFeatures" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance
        {useDefaultProcessorFeatures = Prelude.pure newValue, ..}
instance Property "UseLatestRestorableTime" DBInstance where
  type PropertyType "UseLatestRestorableTime" DBInstance = Value Prelude.Bool
  set newValue DBInstance {..}
    = DBInstance {useLatestRestorableTime = Prelude.pure newValue, ..}
instance Property "VPCSecurityGroups" DBInstance where
  type PropertyType "VPCSecurityGroups" DBInstance = ValueList Prelude.Text
  set newValue DBInstance {..}
    = DBInstance {vPCSecurityGroups = Prelude.pure newValue, ..}