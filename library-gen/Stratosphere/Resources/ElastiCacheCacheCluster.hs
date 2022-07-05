{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html

module Stratosphere.Resources.ElastiCacheCacheCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElastiCacheCacheCluster. See
-- 'elastiCacheCacheCluster' for a more convenient constructor.
data ElastiCacheCacheCluster =
  ElastiCacheCacheCluster
  { _elastiCacheCacheClusterAZMode :: Maybe (Val Text)
  , _elastiCacheCacheClusterAutoMinorVersionUpgrade :: Maybe (Val Bool)
  , _elastiCacheCacheClusterCacheNodeType :: Val Text
  , _elastiCacheCacheClusterCacheParameterGroupName :: Maybe (Val Text)
  , _elastiCacheCacheClusterCacheSecurityGroupNames :: Maybe (ValList Text)
  , _elastiCacheCacheClusterCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheCacheClusterClusterName :: Maybe (Val Text)
  , _elastiCacheCacheClusterEngine :: Val Text
  , _elastiCacheCacheClusterEngineVersion :: Maybe (Val Text)
  , _elastiCacheCacheClusterNotificationTopicArn :: Maybe (Val Text)
  , _elastiCacheCacheClusterNumCacheNodes :: Val Integer
  , _elastiCacheCacheClusterPort :: Maybe (Val Integer)
  , _elastiCacheCacheClusterPreferredAvailabilityZone :: Maybe (Val Text)
  , _elastiCacheCacheClusterPreferredAvailabilityZones :: Maybe (ValList Text)
  , _elastiCacheCacheClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _elastiCacheCacheClusterSnapshotArns :: Maybe (ValList Text)
  , _elastiCacheCacheClusterSnapshotName :: Maybe (Val Text)
  , _elastiCacheCacheClusterSnapshotRetentionLimit :: Maybe (Val Integer)
  , _elastiCacheCacheClusterSnapshotWindow :: Maybe (Val Text)
  , _elastiCacheCacheClusterTags :: Maybe [Tag]
  , _elastiCacheCacheClusterVpcSecurityGroupIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties ElastiCacheCacheCluster where
  toResourceProperties ElastiCacheCacheCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElastiCache::CacheCluster"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AZMode",) . toJSON) _elastiCacheCacheClusterAZMode
        , fmap (("AutoMinorVersionUpgrade",) . toJSON) _elastiCacheCacheClusterAutoMinorVersionUpgrade
        , (Just . ("CacheNodeType",) . toJSON) _elastiCacheCacheClusterCacheNodeType
        , fmap (("CacheParameterGroupName",) . toJSON) _elastiCacheCacheClusterCacheParameterGroupName
        , fmap (("CacheSecurityGroupNames",) . toJSON) _elastiCacheCacheClusterCacheSecurityGroupNames
        , fmap (("CacheSubnetGroupName",) . toJSON) _elastiCacheCacheClusterCacheSubnetGroupName
        , fmap (("ClusterName",) . toJSON) _elastiCacheCacheClusterClusterName
        , (Just . ("Engine",) . toJSON) _elastiCacheCacheClusterEngine
        , fmap (("EngineVersion",) . toJSON) _elastiCacheCacheClusterEngineVersion
        , fmap (("NotificationTopicArn",) . toJSON) _elastiCacheCacheClusterNotificationTopicArn
        , (Just . ("NumCacheNodes",) . toJSON) _elastiCacheCacheClusterNumCacheNodes
        , fmap (("Port",) . toJSON) _elastiCacheCacheClusterPort
        , fmap (("PreferredAvailabilityZone",) . toJSON) _elastiCacheCacheClusterPreferredAvailabilityZone
        , fmap (("PreferredAvailabilityZones",) . toJSON) _elastiCacheCacheClusterPreferredAvailabilityZones
        , fmap (("PreferredMaintenanceWindow",) . toJSON) _elastiCacheCacheClusterPreferredMaintenanceWindow
        , fmap (("SnapshotArns",) . toJSON) _elastiCacheCacheClusterSnapshotArns
        , fmap (("SnapshotName",) . toJSON) _elastiCacheCacheClusterSnapshotName
        , fmap (("SnapshotRetentionLimit",) . toJSON) _elastiCacheCacheClusterSnapshotRetentionLimit
        , fmap (("SnapshotWindow",) . toJSON) _elastiCacheCacheClusterSnapshotWindow
        , fmap (("Tags",) . toJSON) _elastiCacheCacheClusterTags
        , fmap (("VpcSecurityGroupIds",) . toJSON) _elastiCacheCacheClusterVpcSecurityGroupIds
        ]
    }

-- | Constructor for 'ElastiCacheCacheCluster' containing required fields as
-- arguments.
elastiCacheCacheCluster
  :: Val Text -- ^ 'ecccCacheNodeType'
  -> Val Text -- ^ 'ecccEngine'
  -> Val Integer -- ^ 'ecccNumCacheNodes'
  -> ElastiCacheCacheCluster
elastiCacheCacheCluster cacheNodeTypearg enginearg numCacheNodesarg =
  ElastiCacheCacheCluster
  { _elastiCacheCacheClusterAZMode = Nothing
  , _elastiCacheCacheClusterAutoMinorVersionUpgrade = Nothing
  , _elastiCacheCacheClusterCacheNodeType = cacheNodeTypearg
  , _elastiCacheCacheClusterCacheParameterGroupName = Nothing
  , _elastiCacheCacheClusterCacheSecurityGroupNames = Nothing
  , _elastiCacheCacheClusterCacheSubnetGroupName = Nothing
  , _elastiCacheCacheClusterClusterName = Nothing
  , _elastiCacheCacheClusterEngine = enginearg
  , _elastiCacheCacheClusterEngineVersion = Nothing
  , _elastiCacheCacheClusterNotificationTopicArn = Nothing
  , _elastiCacheCacheClusterNumCacheNodes = numCacheNodesarg
  , _elastiCacheCacheClusterPort = Nothing
  , _elastiCacheCacheClusterPreferredAvailabilityZone = Nothing
  , _elastiCacheCacheClusterPreferredAvailabilityZones = Nothing
  , _elastiCacheCacheClusterPreferredMaintenanceWindow = Nothing
  , _elastiCacheCacheClusterSnapshotArns = Nothing
  , _elastiCacheCacheClusterSnapshotName = Nothing
  , _elastiCacheCacheClusterSnapshotRetentionLimit = Nothing
  , _elastiCacheCacheClusterSnapshotWindow = Nothing
  , _elastiCacheCacheClusterTags = Nothing
  , _elastiCacheCacheClusterVpcSecurityGroupIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-azmode
ecccAZMode :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccAZMode = lens _elastiCacheCacheClusterAZMode (\s a -> s { _elastiCacheCacheClusterAZMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-autominorversionupgrade
ecccAutoMinorVersionUpgrade :: Lens' ElastiCacheCacheCluster (Maybe (Val Bool))
ecccAutoMinorVersionUpgrade = lens _elastiCacheCacheClusterAutoMinorVersionUpgrade (\s a -> s { _elastiCacheCacheClusterAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachenodetype
ecccCacheNodeType :: Lens' ElastiCacheCacheCluster (Val Text)
ecccCacheNodeType = lens _elastiCacheCacheClusterCacheNodeType (\s a -> s { _elastiCacheCacheClusterCacheNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cacheparametergroupname
ecccCacheParameterGroupName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccCacheParameterGroupName = lens _elastiCacheCacheClusterCacheParameterGroupName (\s a -> s { _elastiCacheCacheClusterCacheParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesecuritygroupnames
ecccCacheSecurityGroupNames :: Lens' ElastiCacheCacheCluster (Maybe (ValList Text))
ecccCacheSecurityGroupNames = lens _elastiCacheCacheClusterCacheSecurityGroupNames (\s a -> s { _elastiCacheCacheClusterCacheSecurityGroupNames = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesubnetgroupname
ecccCacheSubnetGroupName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccCacheSubnetGroupName = lens _elastiCacheCacheClusterCacheSubnetGroupName (\s a -> s { _elastiCacheCacheClusterCacheSubnetGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-clustername
ecccClusterName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccClusterName = lens _elastiCacheCacheClusterClusterName (\s a -> s { _elastiCacheCacheClusterClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engine
ecccEngine :: Lens' ElastiCacheCacheCluster (Val Text)
ecccEngine = lens _elastiCacheCacheClusterEngine (\s a -> s { _elastiCacheCacheClusterEngine = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engineversion
ecccEngineVersion :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccEngineVersion = lens _elastiCacheCacheClusterEngineVersion (\s a -> s { _elastiCacheCacheClusterEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-notificationtopicarn
ecccNotificationTopicArn :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccNotificationTopicArn = lens _elastiCacheCacheClusterNotificationTopicArn (\s a -> s { _elastiCacheCacheClusterNotificationTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-numcachenodes
ecccNumCacheNodes :: Lens' ElastiCacheCacheCluster (Val Integer)
ecccNumCacheNodes = lens _elastiCacheCacheClusterNumCacheNodes (\s a -> s { _elastiCacheCacheClusterNumCacheNodes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-port
ecccPort :: Lens' ElastiCacheCacheCluster (Maybe (Val Integer))
ecccPort = lens _elastiCacheCacheClusterPort (\s a -> s { _elastiCacheCacheClusterPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzone
ecccPreferredAvailabilityZone :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccPreferredAvailabilityZone = lens _elastiCacheCacheClusterPreferredAvailabilityZone (\s a -> s { _elastiCacheCacheClusterPreferredAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzones
ecccPreferredAvailabilityZones :: Lens' ElastiCacheCacheCluster (Maybe (ValList Text))
ecccPreferredAvailabilityZones = lens _elastiCacheCacheClusterPreferredAvailabilityZones (\s a -> s { _elastiCacheCacheClusterPreferredAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredmaintenancewindow
ecccPreferredMaintenanceWindow :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccPreferredMaintenanceWindow = lens _elastiCacheCacheClusterPreferredMaintenanceWindow (\s a -> s { _elastiCacheCacheClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotarns
ecccSnapshotArns :: Lens' ElastiCacheCacheCluster (Maybe (ValList Text))
ecccSnapshotArns = lens _elastiCacheCacheClusterSnapshotArns (\s a -> s { _elastiCacheCacheClusterSnapshotArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotname
ecccSnapshotName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccSnapshotName = lens _elastiCacheCacheClusterSnapshotName (\s a -> s { _elastiCacheCacheClusterSnapshotName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotretentionlimit
ecccSnapshotRetentionLimit :: Lens' ElastiCacheCacheCluster (Maybe (Val Integer))
ecccSnapshotRetentionLimit = lens _elastiCacheCacheClusterSnapshotRetentionLimit (\s a -> s { _elastiCacheCacheClusterSnapshotRetentionLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotwindow
ecccSnapshotWindow :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccSnapshotWindow = lens _elastiCacheCacheClusterSnapshotWindow (\s a -> s { _elastiCacheCacheClusterSnapshotWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-tags
ecccTags :: Lens' ElastiCacheCacheCluster (Maybe [Tag])
ecccTags = lens _elastiCacheCacheClusterTags (\s a -> s { _elastiCacheCacheClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-vpcsecuritygroupids
ecccVpcSecurityGroupIds :: Lens' ElastiCacheCacheCluster (Maybe (ValList Text))
ecccVpcSecurityGroupIds = lens _elastiCacheCacheClusterVpcSecurityGroupIds (\s a -> s { _elastiCacheCacheClusterVpcSecurityGroupIds = a })
