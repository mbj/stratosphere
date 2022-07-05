{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html

module Stratosphere.Resources.ElastiCacheReplicationGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElastiCacheReplicationGroup. See
-- 'elastiCacheReplicationGroup' for a more convenient constructor.
data ElastiCacheReplicationGroup =
  ElastiCacheReplicationGroup
  { _elastiCacheReplicationGroupAtRestEncryptionEnabled :: Maybe (Val Bool)
  , _elastiCacheReplicationGroupAuthToken :: Maybe (Val Text)
  , _elastiCacheReplicationGroupAutoMinorVersionUpgrade :: Maybe (Val Bool)
  , _elastiCacheReplicationGroupAutomaticFailoverEnabled :: Maybe (Val Bool)
  , _elastiCacheReplicationGroupCacheNodeType :: Maybe (Val Text)
  , _elastiCacheReplicationGroupCacheParameterGroupName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupCacheSecurityGroupNames :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupEngine :: Maybe (Val Text)
  , _elastiCacheReplicationGroupEngineVersion :: Maybe (Val Text)
  , _elastiCacheReplicationGroupKmsKeyId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupMultiAZEnabled :: Maybe (Val Bool)
  , _elastiCacheReplicationGroupNodeGroupConfiguration :: Maybe [ElastiCacheReplicationGroupNodeGroupConfiguration]
  , _elastiCacheReplicationGroupNotificationTopicArn :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNumCacheClusters :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupNumNodeGroups :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupPort :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupPreferredCacheClusterAZs :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupPreferredMaintenanceWindow :: Maybe (Val Text)
  , _elastiCacheReplicationGroupPrimaryClusterId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupReplicasPerNodeGroup :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupReplicationGroupDescription :: Val Text
  , _elastiCacheReplicationGroupReplicationGroupId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSecurityGroupIds :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupSnapshotArns :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupSnapshotName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSnapshotRetentionLimit :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupSnapshotWindow :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSnapshottingClusterId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupTags :: Maybe [Tag]
  , _elastiCacheReplicationGroupTransitEncryptionEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToResourceProperties ElastiCacheReplicationGroup where
  toResourceProperties ElastiCacheReplicationGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElastiCache::ReplicationGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AtRestEncryptionEnabled",) . toJSON) _elastiCacheReplicationGroupAtRestEncryptionEnabled
        , fmap (("AuthToken",) . toJSON) _elastiCacheReplicationGroupAuthToken
        , fmap (("AutoMinorVersionUpgrade",) . toJSON) _elastiCacheReplicationGroupAutoMinorVersionUpgrade
        , fmap (("AutomaticFailoverEnabled",) . toJSON) _elastiCacheReplicationGroupAutomaticFailoverEnabled
        , fmap (("CacheNodeType",) . toJSON) _elastiCacheReplicationGroupCacheNodeType
        , fmap (("CacheParameterGroupName",) . toJSON) _elastiCacheReplicationGroupCacheParameterGroupName
        , fmap (("CacheSecurityGroupNames",) . toJSON) _elastiCacheReplicationGroupCacheSecurityGroupNames
        , fmap (("CacheSubnetGroupName",) . toJSON) _elastiCacheReplicationGroupCacheSubnetGroupName
        , fmap (("Engine",) . toJSON) _elastiCacheReplicationGroupEngine
        , fmap (("EngineVersion",) . toJSON) _elastiCacheReplicationGroupEngineVersion
        , fmap (("KmsKeyId",) . toJSON) _elastiCacheReplicationGroupKmsKeyId
        , fmap (("MultiAZEnabled",) . toJSON) _elastiCacheReplicationGroupMultiAZEnabled
        , fmap (("NodeGroupConfiguration",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfiguration
        , fmap (("NotificationTopicArn",) . toJSON) _elastiCacheReplicationGroupNotificationTopicArn
        , fmap (("NumCacheClusters",) . toJSON) _elastiCacheReplicationGroupNumCacheClusters
        , fmap (("NumNodeGroups",) . toJSON) _elastiCacheReplicationGroupNumNodeGroups
        , fmap (("Port",) . toJSON) _elastiCacheReplicationGroupPort
        , fmap (("PreferredCacheClusterAZs",) . toJSON) _elastiCacheReplicationGroupPreferredCacheClusterAZs
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _elastiCacheReplicationGroupPreferredMaintenanceWindow
        , fmap (("PrimaryClusterId",) . toJSON) _elastiCacheReplicationGroupPrimaryClusterId
        , fmap (("ReplicasPerNodeGroup",) . toJSON) _elastiCacheReplicationGroupReplicasPerNodeGroup
        , (Just . ("ReplicationGroupDescription",) . toJSON) _elastiCacheReplicationGroupReplicationGroupDescription
        , fmap (("ReplicationGroupId",) . toJSON) _elastiCacheReplicationGroupReplicationGroupId
        , fmap (("SecurityGroupIds",) . toJSON) _elastiCacheReplicationGroupSecurityGroupIds
        , fmap (("SnapshotArns",) . toJSON) _elastiCacheReplicationGroupSnapshotArns
        , fmap (("SnapshotName",) . toJSON) _elastiCacheReplicationGroupSnapshotName
        , fmap (("SnapshotRetentionLimit",) . toJSON) _elastiCacheReplicationGroupSnapshotRetentionLimit
        , fmap (("SnapshotWindow",) . toJSON) _elastiCacheReplicationGroupSnapshotWindow
        , fmap (("SnapshottingClusterId",) . toJSON) _elastiCacheReplicationGroupSnapshottingClusterId
        , fmap (("Tags",) . toJSON) _elastiCacheReplicationGroupTags
        , fmap (("TransitEncryptionEnabled",) . toJSON) _elastiCacheReplicationGroupTransitEncryptionEnabled
        ]
    }

-- | Constructor for 'ElastiCacheReplicationGroup' containing required fields
-- as arguments.
elastiCacheReplicationGroup
  :: Val Text -- ^ 'ecrgReplicationGroupDescription'
  -> ElastiCacheReplicationGroup
elastiCacheReplicationGroup replicationGroupDescriptionarg =
  ElastiCacheReplicationGroup
  { _elastiCacheReplicationGroupAtRestEncryptionEnabled = Nothing
  , _elastiCacheReplicationGroupAuthToken = Nothing
  , _elastiCacheReplicationGroupAutoMinorVersionUpgrade = Nothing
  , _elastiCacheReplicationGroupAutomaticFailoverEnabled = Nothing
  , _elastiCacheReplicationGroupCacheNodeType = Nothing
  , _elastiCacheReplicationGroupCacheParameterGroupName = Nothing
  , _elastiCacheReplicationGroupCacheSecurityGroupNames = Nothing
  , _elastiCacheReplicationGroupCacheSubnetGroupName = Nothing
  , _elastiCacheReplicationGroupEngine = Nothing
  , _elastiCacheReplicationGroupEngineVersion = Nothing
  , _elastiCacheReplicationGroupKmsKeyId = Nothing
  , _elastiCacheReplicationGroupMultiAZEnabled = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfiguration = Nothing
  , _elastiCacheReplicationGroupNotificationTopicArn = Nothing
  , _elastiCacheReplicationGroupNumCacheClusters = Nothing
  , _elastiCacheReplicationGroupNumNodeGroups = Nothing
  , _elastiCacheReplicationGroupPort = Nothing
  , _elastiCacheReplicationGroupPreferredCacheClusterAZs = Nothing
  , _elastiCacheReplicationGroupPreferredMaintenanceWindow = Nothing
  , _elastiCacheReplicationGroupPrimaryClusterId = Nothing
  , _elastiCacheReplicationGroupReplicasPerNodeGroup = Nothing
  , _elastiCacheReplicationGroupReplicationGroupDescription = replicationGroupDescriptionarg
  , _elastiCacheReplicationGroupReplicationGroupId = Nothing
  , _elastiCacheReplicationGroupSecurityGroupIds = Nothing
  , _elastiCacheReplicationGroupSnapshotArns = Nothing
  , _elastiCacheReplicationGroupSnapshotName = Nothing
  , _elastiCacheReplicationGroupSnapshotRetentionLimit = Nothing
  , _elastiCacheReplicationGroupSnapshotWindow = Nothing
  , _elastiCacheReplicationGroupSnapshottingClusterId = Nothing
  , _elastiCacheReplicationGroupTags = Nothing
  , _elastiCacheReplicationGroupTransitEncryptionEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-atrestencryptionenabled
ecrgAtRestEncryptionEnabled :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool))
ecrgAtRestEncryptionEnabled = lens _elastiCacheReplicationGroupAtRestEncryptionEnabled (\s a -> s { _elastiCacheReplicationGroupAtRestEncryptionEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-authtoken
ecrgAuthToken :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgAuthToken = lens _elastiCacheReplicationGroupAuthToken (\s a -> s { _elastiCacheReplicationGroupAuthToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-autominorversionupgrade
ecrgAutoMinorVersionUpgrade :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool))
ecrgAutoMinorVersionUpgrade = lens _elastiCacheReplicationGroupAutoMinorVersionUpgrade (\s a -> s { _elastiCacheReplicationGroupAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-automaticfailoverenabled
ecrgAutomaticFailoverEnabled :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool))
ecrgAutomaticFailoverEnabled = lens _elastiCacheReplicationGroupAutomaticFailoverEnabled (\s a -> s { _elastiCacheReplicationGroupAutomaticFailoverEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachenodetype
ecrgCacheNodeType :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgCacheNodeType = lens _elastiCacheReplicationGroupCacheNodeType (\s a -> s { _elastiCacheReplicationGroupCacheNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cacheparametergroupname
ecrgCacheParameterGroupName :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgCacheParameterGroupName = lens _elastiCacheReplicationGroupCacheParameterGroupName (\s a -> s { _elastiCacheReplicationGroupCacheParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesecuritygroupnames
ecrgCacheSecurityGroupNames :: Lens' ElastiCacheReplicationGroup (Maybe (ValList Text))
ecrgCacheSecurityGroupNames = lens _elastiCacheReplicationGroupCacheSecurityGroupNames (\s a -> s { _elastiCacheReplicationGroupCacheSecurityGroupNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesubnetgroupname
ecrgCacheSubnetGroupName :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgCacheSubnetGroupName = lens _elastiCacheReplicationGroupCacheSubnetGroupName (\s a -> s { _elastiCacheReplicationGroupCacheSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engine
ecrgEngine :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgEngine = lens _elastiCacheReplicationGroupEngine (\s a -> s { _elastiCacheReplicationGroupEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engineversion
ecrgEngineVersion :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgEngineVersion = lens _elastiCacheReplicationGroupEngineVersion (\s a -> s { _elastiCacheReplicationGroupEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-kmskeyid
ecrgKmsKeyId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgKmsKeyId = lens _elastiCacheReplicationGroupKmsKeyId (\s a -> s { _elastiCacheReplicationGroupKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-multiazenabled
ecrgMultiAZEnabled :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool))
ecrgMultiAZEnabled = lens _elastiCacheReplicationGroupMultiAZEnabled (\s a -> s { _elastiCacheReplicationGroupMultiAZEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-nodegroupconfiguration
ecrgNodeGroupConfiguration :: Lens' ElastiCacheReplicationGroup (Maybe [ElastiCacheReplicationGroupNodeGroupConfiguration])
ecrgNodeGroupConfiguration = lens _elastiCacheReplicationGroupNodeGroupConfiguration (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-notificationtopicarn
ecrgNotificationTopicArn :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgNotificationTopicArn = lens _elastiCacheReplicationGroupNotificationTopicArn (\s a -> s { _elastiCacheReplicationGroupNotificationTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numcacheclusters
ecrgNumCacheClusters :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer))
ecrgNumCacheClusters = lens _elastiCacheReplicationGroupNumCacheClusters (\s a -> s { _elastiCacheReplicationGroupNumCacheClusters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numnodegroups
ecrgNumNodeGroups :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer))
ecrgNumNodeGroups = lens _elastiCacheReplicationGroupNumNodeGroups (\s a -> s { _elastiCacheReplicationGroupNumNodeGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-port
ecrgPort :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer))
ecrgPort = lens _elastiCacheReplicationGroupPort (\s a -> s { _elastiCacheReplicationGroupPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredcacheclusterazs
ecrgPreferredCacheClusterAZs :: Lens' ElastiCacheReplicationGroup (Maybe (ValList Text))
ecrgPreferredCacheClusterAZs = lens _elastiCacheReplicationGroupPreferredCacheClusterAZs (\s a -> s { _elastiCacheReplicationGroupPreferredCacheClusterAZs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredmaintenancewindow
ecrgPreferredMaintenanceWindow :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgPreferredMaintenanceWindow = lens _elastiCacheReplicationGroupPreferredMaintenanceWindow (\s a -> s { _elastiCacheReplicationGroupPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-primaryclusterid
ecrgPrimaryClusterId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgPrimaryClusterId = lens _elastiCacheReplicationGroupPrimaryClusterId (\s a -> s { _elastiCacheReplicationGroupPrimaryClusterId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicaspernodegroup
ecrgReplicasPerNodeGroup :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer))
ecrgReplicasPerNodeGroup = lens _elastiCacheReplicationGroupReplicasPerNodeGroup (\s a -> s { _elastiCacheReplicationGroupReplicasPerNodeGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupdescription
ecrgReplicationGroupDescription :: Lens' ElastiCacheReplicationGroup (Val Text)
ecrgReplicationGroupDescription = lens _elastiCacheReplicationGroupReplicationGroupDescription (\s a -> s { _elastiCacheReplicationGroupReplicationGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupid
ecrgReplicationGroupId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgReplicationGroupId = lens _elastiCacheReplicationGroupReplicationGroupId (\s a -> s { _elastiCacheReplicationGroupReplicationGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-securitygroupids
ecrgSecurityGroupIds :: Lens' ElastiCacheReplicationGroup (Maybe (ValList Text))
ecrgSecurityGroupIds = lens _elastiCacheReplicationGroupSecurityGroupIds (\s a -> s { _elastiCacheReplicationGroupSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotarns
ecrgSnapshotArns :: Lens' ElastiCacheReplicationGroup (Maybe (ValList Text))
ecrgSnapshotArns = lens _elastiCacheReplicationGroupSnapshotArns (\s a -> s { _elastiCacheReplicationGroupSnapshotArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotname
ecrgSnapshotName :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgSnapshotName = lens _elastiCacheReplicationGroupSnapshotName (\s a -> s { _elastiCacheReplicationGroupSnapshotName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotretentionlimit
ecrgSnapshotRetentionLimit :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer))
ecrgSnapshotRetentionLimit = lens _elastiCacheReplicationGroupSnapshotRetentionLimit (\s a -> s { _elastiCacheReplicationGroupSnapshotRetentionLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotwindow
ecrgSnapshotWindow :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgSnapshotWindow = lens _elastiCacheReplicationGroupSnapshotWindow (\s a -> s { _elastiCacheReplicationGroupSnapshotWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshottingclusterid
ecrgSnapshottingClusterId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgSnapshottingClusterId = lens _elastiCacheReplicationGroupSnapshottingClusterId (\s a -> s { _elastiCacheReplicationGroupSnapshottingClusterId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-tags
ecrgTags :: Lens' ElastiCacheReplicationGroup (Maybe [Tag])
ecrgTags = lens _elastiCacheReplicationGroupTags (\s a -> s { _elastiCacheReplicationGroupTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-transitencryptionenabled
ecrgTransitEncryptionEnabled :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool))
ecrgTransitEncryptionEnabled = lens _elastiCacheReplicationGroupTransitEncryptionEnabled (\s a -> s { _elastiCacheReplicationGroupTransitEncryptionEnabled = a })
