{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html

module Stratosphere.Resources.RDSDBCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.RDSDBClusterDBClusterRole
import Stratosphere.ResourceProperties.RDSDBClusterScalingConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for RDSDBCluster. See 'rdsdbCluster' for a more
-- convenient constructor.
data RDSDBCluster =
  RDSDBCluster
  { _rDSDBClusterAssociatedRoles :: Maybe [RDSDBClusterDBClusterRole]
  , _rDSDBClusterAvailabilityZones :: Maybe (ValList Text)
  , _rDSDBClusterBacktrackWindow :: Maybe (Val Integer)
  , _rDSDBClusterBackupRetentionPeriod :: Maybe (Val Integer)
  , _rDSDBClusterDBClusterIdentifier :: Maybe (Val Text)
  , _rDSDBClusterDBClusterParameterGroupName :: Maybe (Val Text)
  , _rDSDBClusterDBSubnetGroupName :: Maybe (Val Text)
  , _rDSDBClusterDatabaseName :: Maybe (Val Text)
  , _rDSDBClusterDeletionProtection :: Maybe (Val Bool)
  , _rDSDBClusterEnableCloudwatchLogsExports :: Maybe (ValList Text)
  , _rDSDBClusterEnableHttpEndpoint :: Maybe (Val Bool)
  , _rDSDBClusterEnableIAMDatabaseAuthentication :: Maybe (Val Bool)
  , _rDSDBClusterEngine :: Val Text
  , _rDSDBClusterEngineMode :: Maybe (Val Text)
  , _rDSDBClusterEngineVersion :: Maybe (Val Text)
  , _rDSDBClusterKmsKeyId :: Maybe (Val Text)
  , _rDSDBClusterMasterUserPassword :: Maybe (Val Text)
  , _rDSDBClusterMasterUsername :: Maybe (Val Text)
  , _rDSDBClusterPort :: Maybe (Val Integer)
  , _rDSDBClusterPreferredBackupWindow :: Maybe (Val Text)
  , _rDSDBClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _rDSDBClusterReplicationSourceIdentifier :: Maybe (Val Text)
  , _rDSDBClusterRestoreType :: Maybe (Val Text)
  , _rDSDBClusterScalingConfiguration :: Maybe RDSDBClusterScalingConfiguration
  , _rDSDBClusterSnapshotIdentifier :: Maybe (Val Text)
  , _rDSDBClusterSourceDBClusterIdentifier :: Maybe (Val Text)
  , _rDSDBClusterSourceRegion :: Maybe (Val Text)
  , _rDSDBClusterStorageEncrypted :: Maybe (Val Bool)
  , _rDSDBClusterTags :: Maybe [Tag]
  , _rDSDBClusterUseLatestRestorableTime :: Maybe (Val Bool)
  , _rDSDBClusterVpcSecurityGroupIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties RDSDBCluster where
  toResourceProperties RDSDBCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::RDS::DBCluster"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AssociatedRoles",) . toJSON) _rDSDBClusterAssociatedRoles
        , fmap (("AvailabilityZones",) . toJSON) _rDSDBClusterAvailabilityZones
        , fmap (("BacktrackWindow",) . toJSON) _rDSDBClusterBacktrackWindow
        , fmap (("BackupRetentionPeriod",) . toJSON) _rDSDBClusterBackupRetentionPeriod
        , fmap (("DBClusterIdentifier",) . toJSON) _rDSDBClusterDBClusterIdentifier
        , fmap (("DBClusterParameterGroupName",) . toJSON) _rDSDBClusterDBClusterParameterGroupName
        , fmap (("DBSubnetGroupName",) . toJSON) _rDSDBClusterDBSubnetGroupName
        , fmap (("DatabaseName",) . toJSON) _rDSDBClusterDatabaseName
        , fmap (("DeletionProtection",) . toJSON) _rDSDBClusterDeletionProtection
        , fmap (("EnableCloudwatchLogsExports",) . toJSON) _rDSDBClusterEnableCloudwatchLogsExports
        , fmap (("EnableHttpEndpoint",) . toJSON) _rDSDBClusterEnableHttpEndpoint
        , fmap (("EnableIAMDatabaseAuthentication",) . toJSON) _rDSDBClusterEnableIAMDatabaseAuthentication
        , (Just . ("Engine",) . toJSON) _rDSDBClusterEngine
        , fmap (("EngineMode",) . toJSON) _rDSDBClusterEngineMode
        , fmap (("EngineVersion",) . toJSON) _rDSDBClusterEngineVersion
        , fmap (("KmsKeyId",) . toJSON) _rDSDBClusterKmsKeyId
        , fmap (("MasterUserPassword",) . toJSON) _rDSDBClusterMasterUserPassword
        , fmap (("MasterUsername",) . toJSON) _rDSDBClusterMasterUsername
        , fmap (("Port",) . toJSON) _rDSDBClusterPort
        , fmap (("PreferredBackupWindow",) . toJSON) _rDSDBClusterPreferredBackupWindow
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _rDSDBClusterPreferredMaintenanceWindow
        , fmap (("ReplicationSourceIdentifier",) . toJSON) _rDSDBClusterReplicationSourceIdentifier
        , fmap (("RestoreType",) . toJSON) _rDSDBClusterRestoreType
        , fmap (("ScalingConfiguration",) . toJSON) _rDSDBClusterScalingConfiguration
        , fmap (("SnapshotIdentifier",) . toJSON) _rDSDBClusterSnapshotIdentifier
        , fmap (("SourceDBClusterIdentifier",) . toJSON) _rDSDBClusterSourceDBClusterIdentifier
        , fmap (("SourceRegion",) . toJSON) _rDSDBClusterSourceRegion
        , fmap (("StorageEncrypted",) . toJSON) _rDSDBClusterStorageEncrypted
        , fmap (("Tags",) . toJSON) _rDSDBClusterTags
        , fmap (("UseLatestRestorableTime",) . toJSON) _rDSDBClusterUseLatestRestorableTime
        , fmap (("VpcSecurityGroupIds",) . toJSON) _rDSDBClusterVpcSecurityGroupIds
        ]
    }

-- | Constructor for 'RDSDBCluster' containing required fields as arguments.
rdsdbCluster
  :: Val Text -- ^ 'rdsdbcEngine'
  -> RDSDBCluster
rdsdbCluster enginearg =
  RDSDBCluster
  { _rDSDBClusterAssociatedRoles = Nothing
  , _rDSDBClusterAvailabilityZones = Nothing
  , _rDSDBClusterBacktrackWindow = Nothing
  , _rDSDBClusterBackupRetentionPeriod = Nothing
  , _rDSDBClusterDBClusterIdentifier = Nothing
  , _rDSDBClusterDBClusterParameterGroupName = Nothing
  , _rDSDBClusterDBSubnetGroupName = Nothing
  , _rDSDBClusterDatabaseName = Nothing
  , _rDSDBClusterDeletionProtection = Nothing
  , _rDSDBClusterEnableCloudwatchLogsExports = Nothing
  , _rDSDBClusterEnableHttpEndpoint = Nothing
  , _rDSDBClusterEnableIAMDatabaseAuthentication = Nothing
  , _rDSDBClusterEngine = enginearg
  , _rDSDBClusterEngineMode = Nothing
  , _rDSDBClusterEngineVersion = Nothing
  , _rDSDBClusterKmsKeyId = Nothing
  , _rDSDBClusterMasterUserPassword = Nothing
  , _rDSDBClusterMasterUsername = Nothing
  , _rDSDBClusterPort = Nothing
  , _rDSDBClusterPreferredBackupWindow = Nothing
  , _rDSDBClusterPreferredMaintenanceWindow = Nothing
  , _rDSDBClusterReplicationSourceIdentifier = Nothing
  , _rDSDBClusterRestoreType = Nothing
  , _rDSDBClusterScalingConfiguration = Nothing
  , _rDSDBClusterSnapshotIdentifier = Nothing
  , _rDSDBClusterSourceDBClusterIdentifier = Nothing
  , _rDSDBClusterSourceRegion = Nothing
  , _rDSDBClusterStorageEncrypted = Nothing
  , _rDSDBClusterTags = Nothing
  , _rDSDBClusterUseLatestRestorableTime = Nothing
  , _rDSDBClusterVpcSecurityGroupIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-associatedroles
rdsdbcAssociatedRoles :: Lens' RDSDBCluster (Maybe [RDSDBClusterDBClusterRole])
rdsdbcAssociatedRoles = lens _rDSDBClusterAssociatedRoles (\s a -> s { _rDSDBClusterAssociatedRoles = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-availabilityzones
rdsdbcAvailabilityZones :: Lens' RDSDBCluster (Maybe (ValList Text))
rdsdbcAvailabilityZones = lens _rDSDBClusterAvailabilityZones (\s a -> s { _rDSDBClusterAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backtrackwindow
rdsdbcBacktrackWindow :: Lens' RDSDBCluster (Maybe (Val Integer))
rdsdbcBacktrackWindow = lens _rDSDBClusterBacktrackWindow (\s a -> s { _rDSDBClusterBacktrackWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-backuprententionperiod
rdsdbcBackupRetentionPeriod :: Lens' RDSDBCluster (Maybe (Val Integer))
rdsdbcBackupRetentionPeriod = lens _rDSDBClusterBackupRetentionPeriod (\s a -> s { _rDSDBClusterBackupRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusteridentifier
rdsdbcDBClusterIdentifier :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcDBClusterIdentifier = lens _rDSDBClusterDBClusterIdentifier (\s a -> s { _rDSDBClusterDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbclusterparametergroupname
rdsdbcDBClusterParameterGroupName :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcDBClusterParameterGroupName = lens _rDSDBClusterDBClusterParameterGroupName (\s a -> s { _rDSDBClusterDBClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-dbsubnetgroupname
rdsdbcDBSubnetGroupName :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcDBSubnetGroupName = lens _rDSDBClusterDBSubnetGroupName (\s a -> s { _rDSDBClusterDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-databasename
rdsdbcDatabaseName :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcDatabaseName = lens _rDSDBClusterDatabaseName (\s a -> s { _rDSDBClusterDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-deletionprotection
rdsdbcDeletionProtection :: Lens' RDSDBCluster (Maybe (Val Bool))
rdsdbcDeletionProtection = lens _rDSDBClusterDeletionProtection (\s a -> s { _rDSDBClusterDeletionProtection = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablecloudwatchlogsexports
rdsdbcEnableCloudwatchLogsExports :: Lens' RDSDBCluster (Maybe (ValList Text))
rdsdbcEnableCloudwatchLogsExports = lens _rDSDBClusterEnableCloudwatchLogsExports (\s a -> s { _rDSDBClusterEnableCloudwatchLogsExports = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enablehttpendpoint
rdsdbcEnableHttpEndpoint :: Lens' RDSDBCluster (Maybe (Val Bool))
rdsdbcEnableHttpEndpoint = lens _rDSDBClusterEnableHttpEndpoint (\s a -> s { _rDSDBClusterEnableHttpEndpoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enableiamdatabaseauthentication
rdsdbcEnableIAMDatabaseAuthentication :: Lens' RDSDBCluster (Maybe (Val Bool))
rdsdbcEnableIAMDatabaseAuthentication = lens _rDSDBClusterEnableIAMDatabaseAuthentication (\s a -> s { _rDSDBClusterEnableIAMDatabaseAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engine
rdsdbcEngine :: Lens' RDSDBCluster (Val Text)
rdsdbcEngine = lens _rDSDBClusterEngine (\s a -> s { _rDSDBClusterEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-enginemode
rdsdbcEngineMode :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcEngineMode = lens _rDSDBClusterEngineMode (\s a -> s { _rDSDBClusterEngineMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-engineversion
rdsdbcEngineVersion :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcEngineVersion = lens _rDSDBClusterEngineVersion (\s a -> s { _rDSDBClusterEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-kmskeyid
rdsdbcKmsKeyId :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcKmsKeyId = lens _rDSDBClusterKmsKeyId (\s a -> s { _rDSDBClusterKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masteruserpassword
rdsdbcMasterUserPassword :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcMasterUserPassword = lens _rDSDBClusterMasterUserPassword (\s a -> s { _rDSDBClusterMasterUserPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-masterusername
rdsdbcMasterUsername :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcMasterUsername = lens _rDSDBClusterMasterUsername (\s a -> s { _rDSDBClusterMasterUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-port
rdsdbcPort :: Lens' RDSDBCluster (Maybe (Val Integer))
rdsdbcPort = lens _rDSDBClusterPort (\s a -> s { _rDSDBClusterPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredbackupwindow
rdsdbcPreferredBackupWindow :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcPreferredBackupWindow = lens _rDSDBClusterPreferredBackupWindow (\s a -> s { _rDSDBClusterPreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-preferredmaintenancewindow
rdsdbcPreferredMaintenanceWindow :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcPreferredMaintenanceWindow = lens _rDSDBClusterPreferredMaintenanceWindow (\s a -> s { _rDSDBClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-replicationsourceidentifier
rdsdbcReplicationSourceIdentifier :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcReplicationSourceIdentifier = lens _rDSDBClusterReplicationSourceIdentifier (\s a -> s { _rDSDBClusterReplicationSourceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-restoretype
rdsdbcRestoreType :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcRestoreType = lens _rDSDBClusterRestoreType (\s a -> s { _rDSDBClusterRestoreType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-scalingconfiguration
rdsdbcScalingConfiguration :: Lens' RDSDBCluster (Maybe RDSDBClusterScalingConfiguration)
rdsdbcScalingConfiguration = lens _rDSDBClusterScalingConfiguration (\s a -> s { _rDSDBClusterScalingConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-snapshotidentifier
rdsdbcSnapshotIdentifier :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcSnapshotIdentifier = lens _rDSDBClusterSnapshotIdentifier (\s a -> s { _rDSDBClusterSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourcedbclusteridentifier
rdsdbcSourceDBClusterIdentifier :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcSourceDBClusterIdentifier = lens _rDSDBClusterSourceDBClusterIdentifier (\s a -> s { _rDSDBClusterSourceDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-sourceregion
rdsdbcSourceRegion :: Lens' RDSDBCluster (Maybe (Val Text))
rdsdbcSourceRegion = lens _rDSDBClusterSourceRegion (\s a -> s { _rDSDBClusterSourceRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-storageencrypted
rdsdbcStorageEncrypted :: Lens' RDSDBCluster (Maybe (Val Bool))
rdsdbcStorageEncrypted = lens _rDSDBClusterStorageEncrypted (\s a -> s { _rDSDBClusterStorageEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-tags
rdsdbcTags :: Lens' RDSDBCluster (Maybe [Tag])
rdsdbcTags = lens _rDSDBClusterTags (\s a -> s { _rDSDBClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-uselatestrestorabletime
rdsdbcUseLatestRestorableTime :: Lens' RDSDBCluster (Maybe (Val Bool))
rdsdbcUseLatestRestorableTime = lens _rDSDBClusterUseLatestRestorableTime (\s a -> s { _rDSDBClusterUseLatestRestorableTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-rds-dbcluster.html#cfn-rds-dbcluster-vpcsecuritygroupids
rdsdbcVpcSecurityGroupIds :: Lens' RDSDBCluster (Maybe (ValList Text))
rdsdbcVpcSecurityGroupIds = lens _rDSDBClusterVpcSecurityGroupIds (\s a -> s { _rDSDBClusterVpcSecurityGroupIds = a })
