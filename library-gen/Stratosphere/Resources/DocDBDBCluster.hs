{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html

module Stratosphere.Resources.DocDBDBCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DocDBDBCluster. See 'docDBDBCluster' for a
-- more convenient constructor.
data DocDBDBCluster =
  DocDBDBCluster
  { _docDBDBClusterAvailabilityZones :: Maybe (ValList Text)
  , _docDBDBClusterBackupRetentionPeriod :: Maybe (Val Integer)
  , _docDBDBClusterDBClusterIdentifier :: Maybe (Val Text)
  , _docDBDBClusterDBClusterParameterGroupName :: Maybe (Val Text)
  , _docDBDBClusterDBSubnetGroupName :: Maybe (Val Text)
  , _docDBDBClusterEngineVersion :: Maybe (Val Text)
  , _docDBDBClusterKmsKeyId :: Maybe (Val Text)
  , _docDBDBClusterMasterUserPassword :: Maybe (Val Text)
  , _docDBDBClusterMasterUsername :: Maybe (Val Text)
  , _docDBDBClusterPort :: Maybe (Val Integer)
  , _docDBDBClusterPreferredBackupWindow :: Maybe (Val Text)
  , _docDBDBClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _docDBDBClusterSnapshotIdentifier :: Maybe (Val Text)
  , _docDBDBClusterStorageEncrypted :: Maybe (Val Bool)
  , _docDBDBClusterTags :: Maybe [Tag]
  , _docDBDBClusterVpcSecurityGroupIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON DocDBDBCluster where
  toJSON DocDBDBCluster{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZones",) . toJSON) _docDBDBClusterAvailabilityZones
    , fmap (("BackupRetentionPeriod",) . toJSON . fmap Integer') _docDBDBClusterBackupRetentionPeriod
    , fmap (("DBClusterIdentifier",) . toJSON) _docDBDBClusterDBClusterIdentifier
    , fmap (("DBClusterParameterGroupName",) . toJSON) _docDBDBClusterDBClusterParameterGroupName
    , fmap (("DBSubnetGroupName",) . toJSON) _docDBDBClusterDBSubnetGroupName
    , fmap (("EngineVersion",) . toJSON) _docDBDBClusterEngineVersion
    , fmap (("KmsKeyId",) . toJSON) _docDBDBClusterKmsKeyId
    , fmap (("MasterUserPassword",) . toJSON) _docDBDBClusterMasterUserPassword
    , fmap (("MasterUsername",) . toJSON) _docDBDBClusterMasterUsername
    , fmap (("Port",) . toJSON . fmap Integer') _docDBDBClusterPort
    , fmap (("PreferredBackupWindow",) . toJSON) _docDBDBClusterPreferredBackupWindow
    , fmap (("PreferredMaintenanceWindow",) . toJSON) _docDBDBClusterPreferredMaintenanceWindow
    , fmap (("SnapshotIdentifier",) . toJSON) _docDBDBClusterSnapshotIdentifier
    , fmap (("StorageEncrypted",) . toJSON . fmap Bool') _docDBDBClusterStorageEncrypted
    , fmap (("Tags",) . toJSON) _docDBDBClusterTags
    , fmap (("VpcSecurityGroupIds",) . toJSON) _docDBDBClusterVpcSecurityGroupIds
    ]

instance FromJSON DocDBDBCluster where
  parseJSON (Object obj) =
    DocDBDBCluster <$>
      (obj .:? "AvailabilityZones") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "BackupRetentionPeriod") <*>
      (obj .:? "DBClusterIdentifier") <*>
      (obj .:? "DBClusterParameterGroupName") <*>
      (obj .:? "DBSubnetGroupName") <*>
      (obj .:? "EngineVersion") <*>
      (obj .:? "KmsKeyId") <*>
      (obj .:? "MasterUserPassword") <*>
      (obj .:? "MasterUsername") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "Port") <*>
      (obj .:? "PreferredBackupWindow") <*>
      (obj .:? "PreferredMaintenanceWindow") <*>
      (obj .:? "SnapshotIdentifier") <*>
      fmap (fmap (fmap unBool')) (obj .:? "StorageEncrypted") <*>
      (obj .:? "Tags") <*>
      (obj .:? "VpcSecurityGroupIds")
  parseJSON _ = mempty

-- | Constructor for 'DocDBDBCluster' containing required fields as arguments.
docDBDBCluster
  :: DocDBDBCluster
docDBDBCluster  =
  DocDBDBCluster
  { _docDBDBClusterAvailabilityZones = Nothing
  , _docDBDBClusterBackupRetentionPeriod = Nothing
  , _docDBDBClusterDBClusterIdentifier = Nothing
  , _docDBDBClusterDBClusterParameterGroupName = Nothing
  , _docDBDBClusterDBSubnetGroupName = Nothing
  , _docDBDBClusterEngineVersion = Nothing
  , _docDBDBClusterKmsKeyId = Nothing
  , _docDBDBClusterMasterUserPassword = Nothing
  , _docDBDBClusterMasterUsername = Nothing
  , _docDBDBClusterPort = Nothing
  , _docDBDBClusterPreferredBackupWindow = Nothing
  , _docDBDBClusterPreferredMaintenanceWindow = Nothing
  , _docDBDBClusterSnapshotIdentifier = Nothing
  , _docDBDBClusterStorageEncrypted = Nothing
  , _docDBDBClusterTags = Nothing
  , _docDBDBClusterVpcSecurityGroupIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-availabilityzones
ddbdbcAvailabilityZones :: Lens' DocDBDBCluster (Maybe (ValList Text))
ddbdbcAvailabilityZones = lens _docDBDBClusterAvailabilityZones (\s a -> s { _docDBDBClusterAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-backupretentionperiod
ddbdbcBackupRetentionPeriod :: Lens' DocDBDBCluster (Maybe (Val Integer))
ddbdbcBackupRetentionPeriod = lens _docDBDBClusterBackupRetentionPeriod (\s a -> s { _docDBDBClusterBackupRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusteridentifier
ddbdbcDBClusterIdentifier :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcDBClusterIdentifier = lens _docDBDBClusterDBClusterIdentifier (\s a -> s { _docDBDBClusterDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbclusterparametergroupname
ddbdbcDBClusterParameterGroupName :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcDBClusterParameterGroupName = lens _docDBDBClusterDBClusterParameterGroupName (\s a -> s { _docDBDBClusterDBClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-dbsubnetgroupname
ddbdbcDBSubnetGroupName :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcDBSubnetGroupName = lens _docDBDBClusterDBSubnetGroupName (\s a -> s { _docDBDBClusterDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-engineversion
ddbdbcEngineVersion :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcEngineVersion = lens _docDBDBClusterEngineVersion (\s a -> s { _docDBDBClusterEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-kmskeyid
ddbdbcKmsKeyId :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcKmsKeyId = lens _docDBDBClusterKmsKeyId (\s a -> s { _docDBDBClusterKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masteruserpassword
ddbdbcMasterUserPassword :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcMasterUserPassword = lens _docDBDBClusterMasterUserPassword (\s a -> s { _docDBDBClusterMasterUserPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-masterusername
ddbdbcMasterUsername :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcMasterUsername = lens _docDBDBClusterMasterUsername (\s a -> s { _docDBDBClusterMasterUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-port
ddbdbcPort :: Lens' DocDBDBCluster (Maybe (Val Integer))
ddbdbcPort = lens _docDBDBClusterPort (\s a -> s { _docDBDBClusterPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredbackupwindow
ddbdbcPreferredBackupWindow :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcPreferredBackupWindow = lens _docDBDBClusterPreferredBackupWindow (\s a -> s { _docDBDBClusterPreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-preferredmaintenancewindow
ddbdbcPreferredMaintenanceWindow :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcPreferredMaintenanceWindow = lens _docDBDBClusterPreferredMaintenanceWindow (\s a -> s { _docDBDBClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-snapshotidentifier
ddbdbcSnapshotIdentifier :: Lens' DocDBDBCluster (Maybe (Val Text))
ddbdbcSnapshotIdentifier = lens _docDBDBClusterSnapshotIdentifier (\s a -> s { _docDBDBClusterSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-storageencrypted
ddbdbcStorageEncrypted :: Lens' DocDBDBCluster (Maybe (Val Bool))
ddbdbcStorageEncrypted = lens _docDBDBClusterStorageEncrypted (\s a -> s { _docDBDBClusterStorageEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-tags
ddbdbcTags :: Lens' DocDBDBCluster (Maybe [Tag])
ddbdbcTags = lens _docDBDBClusterTags (\s a -> s { _docDBDBClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-docdb-dbcluster.html#cfn-docdb-dbcluster-vpcsecuritygroupids
ddbdbcVpcSecurityGroupIds :: Lens' DocDBDBCluster (Maybe (ValList Text))
ddbdbcVpcSecurityGroupIds = lens _docDBDBClusterVpcSecurityGroupIds (\s a -> s { _docDBDBClusterVpcSecurityGroupIds = a })
