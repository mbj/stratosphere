{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html

module Stratosphere.Resources.NeptuneDBCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for NeptuneDBCluster. See 'neptuneDBCluster'
-- for a more convenient constructor.
data NeptuneDBCluster =
  NeptuneDBCluster
  { _neptuneDBClusterAvailabilityZones :: Maybe (ValList Text)
  , _neptuneDBClusterBackupRetentionPeriod :: Maybe (Val Integer)
  , _neptuneDBClusterDBClusterIdentifier :: Maybe (Val Text)
  , _neptuneDBClusterDBClusterParameterGroupName :: Maybe (Val Text)
  , _neptuneDBClusterDBSubnetGroupName :: Maybe (Val Text)
  , _neptuneDBClusterIamAuthEnabled :: Maybe (Val Bool)
  , _neptuneDBClusterKmsKeyId :: Maybe (Val Text)
  , _neptuneDBClusterPort :: Maybe (Val Integer)
  , _neptuneDBClusterPreferredBackupWindow :: Maybe (Val Text)
  , _neptuneDBClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _neptuneDBClusterSnapshotIdentifier :: Maybe (Val Text)
  , _neptuneDBClusterStorageEncrypted :: Maybe (Val Bool)
  , _neptuneDBClusterTags :: Maybe [Tag]
  , _neptuneDBClusterVpcSecurityGroupIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties NeptuneDBCluster where
  toResourceProperties NeptuneDBCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Neptune::DBCluster"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("AvailabilityZones",) . toJSON) _neptuneDBClusterAvailabilityZones
        , fmap (("BackupRetentionPeriod",) . toJSON) _neptuneDBClusterBackupRetentionPeriod
        , fmap (("DBClusterIdentifier",) . toJSON) _neptuneDBClusterDBClusterIdentifier
        , fmap (("DBClusterParameterGroupName",) . toJSON) _neptuneDBClusterDBClusterParameterGroupName
        , fmap (("DBSubnetGroupName",) . toJSON) _neptuneDBClusterDBSubnetGroupName
        , fmap (("IamAuthEnabled",) . toJSON) _neptuneDBClusterIamAuthEnabled
        , fmap (("KmsKeyId",) . toJSON) _neptuneDBClusterKmsKeyId
        , fmap (("Port",) . toJSON) _neptuneDBClusterPort
        , fmap (("PreferredBackupWindow",) . toJSON) _neptuneDBClusterPreferredBackupWindow
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _neptuneDBClusterPreferredMaintenanceWindow
        , fmap (("SnapshotIdentifier",) . toJSON) _neptuneDBClusterSnapshotIdentifier
        , fmap (("StorageEncrypted",) . toJSON) _neptuneDBClusterStorageEncrypted
        , fmap (("Tags",) . toJSON) _neptuneDBClusterTags
        , fmap (("VpcSecurityGroupIds",) . toJSON) _neptuneDBClusterVpcSecurityGroupIds
        ]
    }

-- | Constructor for 'NeptuneDBCluster' containing required fields as
-- arguments.
neptuneDBCluster
  :: NeptuneDBCluster
neptuneDBCluster  =
  NeptuneDBCluster
  { _neptuneDBClusterAvailabilityZones = Nothing
  , _neptuneDBClusterBackupRetentionPeriod = Nothing
  , _neptuneDBClusterDBClusterIdentifier = Nothing
  , _neptuneDBClusterDBClusterParameterGroupName = Nothing
  , _neptuneDBClusterDBSubnetGroupName = Nothing
  , _neptuneDBClusterIamAuthEnabled = Nothing
  , _neptuneDBClusterKmsKeyId = Nothing
  , _neptuneDBClusterPort = Nothing
  , _neptuneDBClusterPreferredBackupWindow = Nothing
  , _neptuneDBClusterPreferredMaintenanceWindow = Nothing
  , _neptuneDBClusterSnapshotIdentifier = Nothing
  , _neptuneDBClusterStorageEncrypted = Nothing
  , _neptuneDBClusterTags = Nothing
  , _neptuneDBClusterVpcSecurityGroupIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-availabilityzones
ndbcAvailabilityZones :: Lens' NeptuneDBCluster (Maybe (ValList Text))
ndbcAvailabilityZones = lens _neptuneDBClusterAvailabilityZones (\s a -> s { _neptuneDBClusterAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-backupretentionperiod
ndbcBackupRetentionPeriod :: Lens' NeptuneDBCluster (Maybe (Val Integer))
ndbcBackupRetentionPeriod = lens _neptuneDBClusterBackupRetentionPeriod (\s a -> s { _neptuneDBClusterBackupRetentionPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbclusteridentifier
ndbcDBClusterIdentifier :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcDBClusterIdentifier = lens _neptuneDBClusterDBClusterIdentifier (\s a -> s { _neptuneDBClusterDBClusterIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbclusterparametergroupname
ndbcDBClusterParameterGroupName :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcDBClusterParameterGroupName = lens _neptuneDBClusterDBClusterParameterGroupName (\s a -> s { _neptuneDBClusterDBClusterParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-dbsubnetgroupname
ndbcDBSubnetGroupName :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcDBSubnetGroupName = lens _neptuneDBClusterDBSubnetGroupName (\s a -> s { _neptuneDBClusterDBSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-iamauthenabled
ndbcIamAuthEnabled :: Lens' NeptuneDBCluster (Maybe (Val Bool))
ndbcIamAuthEnabled = lens _neptuneDBClusterIamAuthEnabled (\s a -> s { _neptuneDBClusterIamAuthEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-kmskeyid
ndbcKmsKeyId :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcKmsKeyId = lens _neptuneDBClusterKmsKeyId (\s a -> s { _neptuneDBClusterKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-port
ndbcPort :: Lens' NeptuneDBCluster (Maybe (Val Integer))
ndbcPort = lens _neptuneDBClusterPort (\s a -> s { _neptuneDBClusterPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-preferredbackupwindow
ndbcPreferredBackupWindow :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcPreferredBackupWindow = lens _neptuneDBClusterPreferredBackupWindow (\s a -> s { _neptuneDBClusterPreferredBackupWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-preferredmaintenancewindow
ndbcPreferredMaintenanceWindow :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcPreferredMaintenanceWindow = lens _neptuneDBClusterPreferredMaintenanceWindow (\s a -> s { _neptuneDBClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-snapshotidentifier
ndbcSnapshotIdentifier :: Lens' NeptuneDBCluster (Maybe (Val Text))
ndbcSnapshotIdentifier = lens _neptuneDBClusterSnapshotIdentifier (\s a -> s { _neptuneDBClusterSnapshotIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-storageencrypted
ndbcStorageEncrypted :: Lens' NeptuneDBCluster (Maybe (Val Bool))
ndbcStorageEncrypted = lens _neptuneDBClusterStorageEncrypted (\s a -> s { _neptuneDBClusterStorageEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-tags
ndbcTags :: Lens' NeptuneDBCluster (Maybe [Tag])
ndbcTags = lens _neptuneDBClusterTags (\s a -> s { _neptuneDBClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-neptune-dbcluster.html#cfn-neptune-dbcluster-vpcsecuritygroupids
ndbcVpcSecurityGroupIds :: Lens' NeptuneDBCluster (Maybe (ValList Text))
ndbcVpcSecurityGroupIds = lens _neptuneDBClusterVpcSecurityGroupIds (\s a -> s { _neptuneDBClusterVpcSecurityGroupIds = a })
