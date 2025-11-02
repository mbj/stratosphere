module Stratosphere.RDS.DBCluster (
        module Exports, DBCluster(..), mkDBCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RDS.DBCluster.DBClusterRoleProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBCluster.MasterUserSecretProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBCluster.ScalingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.RDS.DBCluster.ServerlessV2ScalingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DBCluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html>
    DBCluster {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-allocatedstorage>
               allocatedStorage :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-associatedroles>
               associatedRoles :: (Prelude.Maybe [DBClusterRoleProperty]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-autominorversionupgrade>
               autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-availabilityzones>
               availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backtrackwindow>
               backtrackWindow :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backupretentionperiod>
               backupRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-clusterscalabilitytype>
               clusterScalabilityType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-copytagstosnapshot>
               copyTagsToSnapshot :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusteridentifier>
               dBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusterinstanceclass>
               dBClusterInstanceClass :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusterparametergroupname>
               dBClusterParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbinstanceparametergroupname>
               dBInstanceParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbsubnetgroupname>
               dBSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbsystemid>
               dBSystemId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-databasename>
               databaseName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-deletionprotection>
               deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-domain>
               domain :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-domainiamrolename>
               domainIAMRoleName :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablecloudwatchlogsexports>
               enableCloudwatchLogsExports :: (Prelude.Maybe (ValueList Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enableglobalwriteforwarding>
               enableGlobalWriteForwarding :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablehttpendpoint>
               enableHttpEndpoint :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enableiamdatabaseauthentication>
               enableIAMDatabaseAuthentication :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablelocalwriteforwarding>
               enableLocalWriteForwarding :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engine>
               engine :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enginelifecyclesupport>
               engineLifecycleSupport :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enginemode>
               engineMode :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engineversion>
               engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-globalclusteridentifier>
               globalClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-iops>
               iops :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-kmskeyid>
               kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-managemasteruserpassword>
               manageMasterUserPassword :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masteruserpassword>
               masterUserPassword :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masterusersecret>
               masterUserSecret :: (Prelude.Maybe MasterUserSecretProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masterusername>
               masterUsername :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-monitoringinterval>
               monitoringInterval :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-monitoringrolearn>
               monitoringRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-networktype>
               networkType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-performanceinsightsenabled>
               performanceInsightsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-performanceinsightskmskeyid>
               performanceInsightsKmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-performanceinsightsretentionperiod>
               performanceInsightsRetentionPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-port>
               port :: (Prelude.Maybe (Value Prelude.Integer)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredbackupwindow>
               preferredBackupWindow :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredmaintenancewindow>
               preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-publiclyaccessible>
               publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-replicationsourceidentifier>
               replicationSourceIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-restoretotime>
               restoreToTime :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-restoretype>
               restoreType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-scalingconfiguration>
               scalingConfiguration :: (Prelude.Maybe ScalingConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-serverlessv2scalingconfiguration>
               serverlessV2ScalingConfiguration :: (Prelude.Maybe ServerlessV2ScalingConfigurationProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-snapshotidentifier>
               snapshotIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourcedbclusteridentifier>
               sourceDBClusterIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourceregion>
               sourceRegion :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-storageencrypted>
               storageEncrypted :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-storagetype>
               storageType :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-tags>
               tags :: (Prelude.Maybe [Tag]),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-uselatestrestorabletime>
               useLatestRestorableTime :: (Prelude.Maybe (Value Prelude.Bool)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-vpcsecuritygroupids>
               vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDBCluster :: DBCluster
mkDBCluster
  = DBCluster
      {haddock_workaround_ = (), allocatedStorage = Prelude.Nothing,
       associatedRoles = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       availabilityZones = Prelude.Nothing,
       backtrackWindow = Prelude.Nothing,
       backupRetentionPeriod = Prelude.Nothing,
       clusterScalabilityType = Prelude.Nothing,
       copyTagsToSnapshot = Prelude.Nothing,
       dBClusterIdentifier = Prelude.Nothing,
       dBClusterInstanceClass = Prelude.Nothing,
       dBClusterParameterGroupName = Prelude.Nothing,
       dBInstanceParameterGroupName = Prelude.Nothing,
       dBSubnetGroupName = Prelude.Nothing, dBSystemId = Prelude.Nothing,
       databaseName = Prelude.Nothing,
       deletionProtection = Prelude.Nothing, domain = Prelude.Nothing,
       domainIAMRoleName = Prelude.Nothing,
       enableCloudwatchLogsExports = Prelude.Nothing,
       enableGlobalWriteForwarding = Prelude.Nothing,
       enableHttpEndpoint = Prelude.Nothing,
       enableIAMDatabaseAuthentication = Prelude.Nothing,
       enableLocalWriteForwarding = Prelude.Nothing,
       engine = Prelude.Nothing, engineLifecycleSupport = Prelude.Nothing,
       engineMode = Prelude.Nothing, engineVersion = Prelude.Nothing,
       globalClusterIdentifier = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing,
       manageMasterUserPassword = Prelude.Nothing,
       masterUserPassword = Prelude.Nothing,
       masterUserSecret = Prelude.Nothing,
       masterUsername = Prelude.Nothing,
       monitoringInterval = Prelude.Nothing,
       monitoringRoleArn = Prelude.Nothing, networkType = Prelude.Nothing,
       performanceInsightsEnabled = Prelude.Nothing,
       performanceInsightsKmsKeyId = Prelude.Nothing,
       performanceInsightsRetentionPeriod = Prelude.Nothing,
       port = Prelude.Nothing, preferredBackupWindow = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       replicationSourceIdentifier = Prelude.Nothing,
       restoreToTime = Prelude.Nothing, restoreType = Prelude.Nothing,
       scalingConfiguration = Prelude.Nothing,
       serverlessV2ScalingConfiguration = Prelude.Nothing,
       snapshotIdentifier = Prelude.Nothing,
       sourceDBClusterIdentifier = Prelude.Nothing,
       sourceRegion = Prelude.Nothing, storageEncrypted = Prelude.Nothing,
       storageType = Prelude.Nothing, tags = Prelude.Nothing,
       useLatestRestorableTime = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties DBCluster where
  toResourceProperties DBCluster {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBCluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
                            (JSON..=) "AssociatedRoles" Prelude.<$> associatedRoles,
                            (JSON..=) "AutoMinorVersionUpgrade"
                              Prelude.<$> autoMinorVersionUpgrade,
                            (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                            (JSON..=) "BacktrackWindow" Prelude.<$> backtrackWindow,
                            (JSON..=) "BackupRetentionPeriod"
                              Prelude.<$> backupRetentionPeriod,
                            (JSON..=) "ClusterScalabilityType"
                              Prelude.<$> clusterScalabilityType,
                            (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
                            (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
                            (JSON..=) "DBClusterInstanceClass"
                              Prelude.<$> dBClusterInstanceClass,
                            (JSON..=) "DBClusterParameterGroupName"
                              Prelude.<$> dBClusterParameterGroupName,
                            (JSON..=) "DBInstanceParameterGroupName"
                              Prelude.<$> dBInstanceParameterGroupName,
                            (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
                            (JSON..=) "DBSystemId" Prelude.<$> dBSystemId,
                            (JSON..=) "DatabaseName" Prelude.<$> databaseName,
                            (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                            (JSON..=) "Domain" Prelude.<$> domain,
                            (JSON..=) "DomainIAMRoleName" Prelude.<$> domainIAMRoleName,
                            (JSON..=) "EnableCloudwatchLogsExports"
                              Prelude.<$> enableCloudwatchLogsExports,
                            (JSON..=) "EnableGlobalWriteForwarding"
                              Prelude.<$> enableGlobalWriteForwarding,
                            (JSON..=) "EnableHttpEndpoint" Prelude.<$> enableHttpEndpoint,
                            (JSON..=) "EnableIAMDatabaseAuthentication"
                              Prelude.<$> enableIAMDatabaseAuthentication,
                            (JSON..=) "EnableLocalWriteForwarding"
                              Prelude.<$> enableLocalWriteForwarding,
                            (JSON..=) "Engine" Prelude.<$> engine,
                            (JSON..=) "EngineLifecycleSupport"
                              Prelude.<$> engineLifecycleSupport,
                            (JSON..=) "EngineMode" Prelude.<$> engineMode,
                            (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                            (JSON..=) "GlobalClusterIdentifier"
                              Prelude.<$> globalClusterIdentifier,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "ManageMasterUserPassword"
                              Prelude.<$> manageMasterUserPassword,
                            (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
                            (JSON..=) "MasterUserSecret" Prelude.<$> masterUserSecret,
                            (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
                            (JSON..=) "MonitoringInterval" Prelude.<$> monitoringInterval,
                            (JSON..=) "MonitoringRoleArn" Prelude.<$> monitoringRoleArn,
                            (JSON..=) "NetworkType" Prelude.<$> networkType,
                            (JSON..=) "PerformanceInsightsEnabled"
                              Prelude.<$> performanceInsightsEnabled,
                            (JSON..=) "PerformanceInsightsKmsKeyId"
                              Prelude.<$> performanceInsightsKmsKeyId,
                            (JSON..=) "PerformanceInsightsRetentionPeriod"
                              Prelude.<$> performanceInsightsRetentionPeriod,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "PreferredBackupWindow"
                              Prelude.<$> preferredBackupWindow,
                            (JSON..=) "PreferredMaintenanceWindow"
                              Prelude.<$> preferredMaintenanceWindow,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "ReplicationSourceIdentifier"
                              Prelude.<$> replicationSourceIdentifier,
                            (JSON..=) "RestoreToTime" Prelude.<$> restoreToTime,
                            (JSON..=) "RestoreType" Prelude.<$> restoreType,
                            (JSON..=) "ScalingConfiguration" Prelude.<$> scalingConfiguration,
                            (JSON..=) "ServerlessV2ScalingConfiguration"
                              Prelude.<$> serverlessV2ScalingConfiguration,
                            (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
                            (JSON..=) "SourceDBClusterIdentifier"
                              Prelude.<$> sourceDBClusterIdentifier,
                            (JSON..=) "SourceRegion" Prelude.<$> sourceRegion,
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
              [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
               (JSON..=) "AssociatedRoles" Prelude.<$> associatedRoles,
               (JSON..=) "AutoMinorVersionUpgrade"
                 Prelude.<$> autoMinorVersionUpgrade,
               (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
               (JSON..=) "BacktrackWindow" Prelude.<$> backtrackWindow,
               (JSON..=) "BackupRetentionPeriod"
                 Prelude.<$> backupRetentionPeriod,
               (JSON..=) "ClusterScalabilityType"
                 Prelude.<$> clusterScalabilityType,
               (JSON..=) "CopyTagsToSnapshot" Prelude.<$> copyTagsToSnapshot,
               (JSON..=) "DBClusterIdentifier" Prelude.<$> dBClusterIdentifier,
               (JSON..=) "DBClusterInstanceClass"
                 Prelude.<$> dBClusterInstanceClass,
               (JSON..=) "DBClusterParameterGroupName"
                 Prelude.<$> dBClusterParameterGroupName,
               (JSON..=) "DBInstanceParameterGroupName"
                 Prelude.<$> dBInstanceParameterGroupName,
               (JSON..=) "DBSubnetGroupName" Prelude.<$> dBSubnetGroupName,
               (JSON..=) "DBSystemId" Prelude.<$> dBSystemId,
               (JSON..=) "DatabaseName" Prelude.<$> databaseName,
               (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
               (JSON..=) "Domain" Prelude.<$> domain,
               (JSON..=) "DomainIAMRoleName" Prelude.<$> domainIAMRoleName,
               (JSON..=) "EnableCloudwatchLogsExports"
                 Prelude.<$> enableCloudwatchLogsExports,
               (JSON..=) "EnableGlobalWriteForwarding"
                 Prelude.<$> enableGlobalWriteForwarding,
               (JSON..=) "EnableHttpEndpoint" Prelude.<$> enableHttpEndpoint,
               (JSON..=) "EnableIAMDatabaseAuthentication"
                 Prelude.<$> enableIAMDatabaseAuthentication,
               (JSON..=) "EnableLocalWriteForwarding"
                 Prelude.<$> enableLocalWriteForwarding,
               (JSON..=) "Engine" Prelude.<$> engine,
               (JSON..=) "EngineLifecycleSupport"
                 Prelude.<$> engineLifecycleSupport,
               (JSON..=) "EngineMode" Prelude.<$> engineMode,
               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
               (JSON..=) "GlobalClusterIdentifier"
                 Prelude.<$> globalClusterIdentifier,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "ManageMasterUserPassword"
                 Prelude.<$> manageMasterUserPassword,
               (JSON..=) "MasterUserPassword" Prelude.<$> masterUserPassword,
               (JSON..=) "MasterUserSecret" Prelude.<$> masterUserSecret,
               (JSON..=) "MasterUsername" Prelude.<$> masterUsername,
               (JSON..=) "MonitoringInterval" Prelude.<$> monitoringInterval,
               (JSON..=) "MonitoringRoleArn" Prelude.<$> monitoringRoleArn,
               (JSON..=) "NetworkType" Prelude.<$> networkType,
               (JSON..=) "PerformanceInsightsEnabled"
                 Prelude.<$> performanceInsightsEnabled,
               (JSON..=) "PerformanceInsightsKmsKeyId"
                 Prelude.<$> performanceInsightsKmsKeyId,
               (JSON..=) "PerformanceInsightsRetentionPeriod"
                 Prelude.<$> performanceInsightsRetentionPeriod,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "PreferredBackupWindow"
                 Prelude.<$> preferredBackupWindow,
               (JSON..=) "PreferredMaintenanceWindow"
                 Prelude.<$> preferredMaintenanceWindow,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "ReplicationSourceIdentifier"
                 Prelude.<$> replicationSourceIdentifier,
               (JSON..=) "RestoreToTime" Prelude.<$> restoreToTime,
               (JSON..=) "RestoreType" Prelude.<$> restoreType,
               (JSON..=) "ScalingConfiguration" Prelude.<$> scalingConfiguration,
               (JSON..=) "ServerlessV2ScalingConfiguration"
                 Prelude.<$> serverlessV2ScalingConfiguration,
               (JSON..=) "SnapshotIdentifier" Prelude.<$> snapshotIdentifier,
               (JSON..=) "SourceDBClusterIdentifier"
                 Prelude.<$> sourceDBClusterIdentifier,
               (JSON..=) "SourceRegion" Prelude.<$> sourceRegion,
               (JSON..=) "StorageEncrypted" Prelude.<$> storageEncrypted,
               (JSON..=) "StorageType" Prelude.<$> storageType,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "UseLatestRestorableTime"
                 Prelude.<$> useLatestRestorableTime,
               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))
instance Property "AllocatedStorage" DBCluster where
  type PropertyType "AllocatedStorage" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {allocatedStorage = Prelude.pure newValue, ..}
instance Property "AssociatedRoles" DBCluster where
  type PropertyType "AssociatedRoles" DBCluster = [DBClusterRoleProperty]
  set newValue DBCluster {..}
    = DBCluster {associatedRoles = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" DBCluster where
  type PropertyType "AutoMinorVersionUpgrade" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AvailabilityZones" DBCluster where
  type PropertyType "AvailabilityZones" DBCluster = ValueList Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {availabilityZones = Prelude.pure newValue, ..}
instance Property "BacktrackWindow" DBCluster where
  type PropertyType "BacktrackWindow" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {backtrackWindow = Prelude.pure newValue, ..}
instance Property "BackupRetentionPeriod" DBCluster where
  type PropertyType "BackupRetentionPeriod" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {backupRetentionPeriod = Prelude.pure newValue, ..}
instance Property "ClusterScalabilityType" DBCluster where
  type PropertyType "ClusterScalabilityType" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {clusterScalabilityType = Prelude.pure newValue, ..}
instance Property "CopyTagsToSnapshot" DBCluster where
  type PropertyType "CopyTagsToSnapshot" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {copyTagsToSnapshot = Prelude.pure newValue, ..}
instance Property "DBClusterIdentifier" DBCluster where
  type PropertyType "DBClusterIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBClusterIdentifier = Prelude.pure newValue, ..}
instance Property "DBClusterInstanceClass" DBCluster where
  type PropertyType "DBClusterInstanceClass" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBClusterInstanceClass = Prelude.pure newValue, ..}
instance Property "DBClusterParameterGroupName" DBCluster where
  type PropertyType "DBClusterParameterGroupName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {dBClusterParameterGroupName = Prelude.pure newValue, ..}
instance Property "DBInstanceParameterGroupName" DBCluster where
  type PropertyType "DBInstanceParameterGroupName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {dBInstanceParameterGroupName = Prelude.pure newValue, ..}
instance Property "DBSubnetGroupName" DBCluster where
  type PropertyType "DBSubnetGroupName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBSubnetGroupName = Prelude.pure newValue, ..}
instance Property "DBSystemId" DBCluster where
  type PropertyType "DBSystemId" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {dBSystemId = Prelude.pure newValue, ..}
instance Property "DatabaseName" DBCluster where
  type PropertyType "DatabaseName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {databaseName = Prelude.pure newValue, ..}
instance Property "DeletionProtection" DBCluster where
  type PropertyType "DeletionProtection" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {deletionProtection = Prelude.pure newValue, ..}
instance Property "Domain" DBCluster where
  type PropertyType "Domain" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {domain = Prelude.pure newValue, ..}
instance Property "DomainIAMRoleName" DBCluster where
  type PropertyType "DomainIAMRoleName" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {domainIAMRoleName = Prelude.pure newValue, ..}
instance Property "EnableCloudwatchLogsExports" DBCluster where
  type PropertyType "EnableCloudwatchLogsExports" DBCluster = ValueList Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {enableCloudwatchLogsExports = Prelude.pure newValue, ..}
instance Property "EnableGlobalWriteForwarding" DBCluster where
  type PropertyType "EnableGlobalWriteForwarding" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster
        {enableGlobalWriteForwarding = Prelude.pure newValue, ..}
instance Property "EnableHttpEndpoint" DBCluster where
  type PropertyType "EnableHttpEndpoint" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {enableHttpEndpoint = Prelude.pure newValue, ..}
instance Property "EnableIAMDatabaseAuthentication" DBCluster where
  type PropertyType "EnableIAMDatabaseAuthentication" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster
        {enableIAMDatabaseAuthentication = Prelude.pure newValue, ..}
instance Property "EnableLocalWriteForwarding" DBCluster where
  type PropertyType "EnableLocalWriteForwarding" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster
        {enableLocalWriteForwarding = Prelude.pure newValue, ..}
instance Property "Engine" DBCluster where
  type PropertyType "Engine" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {engine = Prelude.pure newValue, ..}
instance Property "EngineLifecycleSupport" DBCluster where
  type PropertyType "EngineLifecycleSupport" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {engineLifecycleSupport = Prelude.pure newValue, ..}
instance Property "EngineMode" DBCluster where
  type PropertyType "EngineMode" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {engineMode = Prelude.pure newValue, ..}
instance Property "EngineVersion" DBCluster where
  type PropertyType "EngineVersion" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {engineVersion = Prelude.pure newValue, ..}
instance Property "GlobalClusterIdentifier" DBCluster where
  type PropertyType "GlobalClusterIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {globalClusterIdentifier = Prelude.pure newValue, ..}
instance Property "Iops" DBCluster where
  type PropertyType "Iops" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" DBCluster where
  type PropertyType "KmsKeyId" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {kmsKeyId = Prelude.pure newValue, ..}
instance Property "ManageMasterUserPassword" DBCluster where
  type PropertyType "ManageMasterUserPassword" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {manageMasterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUserPassword" DBCluster where
  type PropertyType "MasterUserPassword" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {masterUserPassword = Prelude.pure newValue, ..}
instance Property "MasterUserSecret" DBCluster where
  type PropertyType "MasterUserSecret" DBCluster = MasterUserSecretProperty
  set newValue DBCluster {..}
    = DBCluster {masterUserSecret = Prelude.pure newValue, ..}
instance Property "MasterUsername" DBCluster where
  type PropertyType "MasterUsername" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {masterUsername = Prelude.pure newValue, ..}
instance Property "MonitoringInterval" DBCluster where
  type PropertyType "MonitoringInterval" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster {monitoringInterval = Prelude.pure newValue, ..}
instance Property "MonitoringRoleArn" DBCluster where
  type PropertyType "MonitoringRoleArn" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {monitoringRoleArn = Prelude.pure newValue, ..}
instance Property "NetworkType" DBCluster where
  type PropertyType "NetworkType" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {networkType = Prelude.pure newValue, ..}
instance Property "PerformanceInsightsEnabled" DBCluster where
  type PropertyType "PerformanceInsightsEnabled" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster
        {performanceInsightsEnabled = Prelude.pure newValue, ..}
instance Property "PerformanceInsightsKmsKeyId" DBCluster where
  type PropertyType "PerformanceInsightsKmsKeyId" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {performanceInsightsKmsKeyId = Prelude.pure newValue, ..}
instance Property "PerformanceInsightsRetentionPeriod" DBCluster where
  type PropertyType "PerformanceInsightsRetentionPeriod" DBCluster = Value Prelude.Integer
  set newValue DBCluster {..}
    = DBCluster
        {performanceInsightsRetentionPeriod = Prelude.pure newValue, ..}
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
instance Property "PubliclyAccessible" DBCluster where
  type PropertyType "PubliclyAccessible" DBCluster = Value Prelude.Bool
  set newValue DBCluster {..}
    = DBCluster {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "ReplicationSourceIdentifier" DBCluster where
  type PropertyType "ReplicationSourceIdentifier" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster
        {replicationSourceIdentifier = Prelude.pure newValue, ..}
instance Property "RestoreToTime" DBCluster where
  type PropertyType "RestoreToTime" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {restoreToTime = Prelude.pure newValue, ..}
instance Property "RestoreType" DBCluster where
  type PropertyType "RestoreType" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {restoreType = Prelude.pure newValue, ..}
instance Property "ScalingConfiguration" DBCluster where
  type PropertyType "ScalingConfiguration" DBCluster = ScalingConfigurationProperty
  set newValue DBCluster {..}
    = DBCluster {scalingConfiguration = Prelude.pure newValue, ..}
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
instance Property "SourceRegion" DBCluster where
  type PropertyType "SourceRegion" DBCluster = Value Prelude.Text
  set newValue DBCluster {..}
    = DBCluster {sourceRegion = Prelude.pure newValue, ..}
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