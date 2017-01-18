{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html

module Stratosphere.Resources.ElastiCacheCacheCluster where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElastiCacheCacheCluster. See
-- | 'elastiCacheCacheCluster' for a more convenient constructor.
data ElastiCacheCacheCluster =
  ElastiCacheCacheCluster
  { _elastiCacheCacheClusterAZMode :: Maybe (Val Text)
  , _elastiCacheCacheClusterAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _elastiCacheCacheClusterCacheNodeType :: Val Text
  , _elastiCacheCacheClusterCacheParameterGroupName :: Maybe (Val Text)
  , _elastiCacheCacheClusterCacheSecurityGroupNames :: Maybe [Val Text]
  , _elastiCacheCacheClusterCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheCacheClusterClusterName :: Maybe (Val Text)
  , _elastiCacheCacheClusterEngine :: Val Text
  , _elastiCacheCacheClusterEngineVersion :: Maybe (Val Text)
  , _elastiCacheCacheClusterNotificationTopicArn :: Maybe (Val Text)
  , _elastiCacheCacheClusterNumCacheNodes :: Val Integer'
  , _elastiCacheCacheClusterPort :: Maybe (Val Integer')
  , _elastiCacheCacheClusterPreferredAvailabilityZone :: Maybe (Val Text)
  , _elastiCacheCacheClusterPreferredAvailabilityZones :: Maybe [Val Text]
  , _elastiCacheCacheClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _elastiCacheCacheClusterSnapshotArns :: Maybe [Val Text]
  , _elastiCacheCacheClusterSnapshotName :: Maybe (Val Text)
  , _elastiCacheCacheClusterSnapshotRetentionLimit :: Maybe (Val Integer')
  , _elastiCacheCacheClusterSnapshotWindow :: Maybe (Val Text)
  , _elastiCacheCacheClusterTags :: Maybe [Tag]
  , _elastiCacheCacheClusterVpcSecurityGroupIds :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON ElastiCacheCacheCluster where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON ElastiCacheCacheCluster where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'ElastiCacheCacheCluster' containing required fields as
-- | arguments.
elastiCacheCacheCluster
  :: Val Text -- ^ 'ecccCacheNodeType'
  -> Val Text -- ^ 'ecccEngine'
  -> Val Integer' -- ^ 'ecccNumCacheNodes'
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
ecccAutoMinorVersionUpgrade :: Lens' ElastiCacheCacheCluster (Maybe (Val Bool'))
ecccAutoMinorVersionUpgrade = lens _elastiCacheCacheClusterAutoMinorVersionUpgrade (\s a -> s { _elastiCacheCacheClusterAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachenodetype
ecccCacheNodeType :: Lens' ElastiCacheCacheCluster (Val Text)
ecccCacheNodeType = lens _elastiCacheCacheClusterCacheNodeType (\s a -> s { _elastiCacheCacheClusterCacheNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cacheparametergroupname
ecccCacheParameterGroupName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccCacheParameterGroupName = lens _elastiCacheCacheClusterCacheParameterGroupName (\s a -> s { _elastiCacheCacheClusterCacheParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesecuritygroupnames
ecccCacheSecurityGroupNames :: Lens' ElastiCacheCacheCluster (Maybe [Val Text])
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
ecccNumCacheNodes :: Lens' ElastiCacheCacheCluster (Val Integer')
ecccNumCacheNodes = lens _elastiCacheCacheClusterNumCacheNodes (\s a -> s { _elastiCacheCacheClusterNumCacheNodes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-port
ecccPort :: Lens' ElastiCacheCacheCluster (Maybe (Val Integer'))
ecccPort = lens _elastiCacheCacheClusterPort (\s a -> s { _elastiCacheCacheClusterPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzone
ecccPreferredAvailabilityZone :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccPreferredAvailabilityZone = lens _elastiCacheCacheClusterPreferredAvailabilityZone (\s a -> s { _elastiCacheCacheClusterPreferredAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzones
ecccPreferredAvailabilityZones :: Lens' ElastiCacheCacheCluster (Maybe [Val Text])
ecccPreferredAvailabilityZones = lens _elastiCacheCacheClusterPreferredAvailabilityZones (\s a -> s { _elastiCacheCacheClusterPreferredAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredmaintenancewindow
ecccPreferredMaintenanceWindow :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccPreferredMaintenanceWindow = lens _elastiCacheCacheClusterPreferredMaintenanceWindow (\s a -> s { _elastiCacheCacheClusterPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotarns
ecccSnapshotArns :: Lens' ElastiCacheCacheCluster (Maybe [Val Text])
ecccSnapshotArns = lens _elastiCacheCacheClusterSnapshotArns (\s a -> s { _elastiCacheCacheClusterSnapshotArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotname
ecccSnapshotName :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccSnapshotName = lens _elastiCacheCacheClusterSnapshotName (\s a -> s { _elastiCacheCacheClusterSnapshotName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotretentionlimit
ecccSnapshotRetentionLimit :: Lens' ElastiCacheCacheCluster (Maybe (Val Integer'))
ecccSnapshotRetentionLimit = lens _elastiCacheCacheClusterSnapshotRetentionLimit (\s a -> s { _elastiCacheCacheClusterSnapshotRetentionLimit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotwindow
ecccSnapshotWindow :: Lens' ElastiCacheCacheCluster (Maybe (Val Text))
ecccSnapshotWindow = lens _elastiCacheCacheClusterSnapshotWindow (\s a -> s { _elastiCacheCacheClusterSnapshotWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-tags
ecccTags :: Lens' ElastiCacheCacheCluster (Maybe [Tag])
ecccTags = lens _elastiCacheCacheClusterTags (\s a -> s { _elastiCacheCacheClusterTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-vpcsecuritygroupids
ecccVpcSecurityGroupIds :: Lens' ElastiCacheCacheCluster (Maybe [Val Text])
ecccVpcSecurityGroupIds = lens _elastiCacheCacheClusterVpcSecurityGroupIds (\s a -> s { _elastiCacheCacheClusterVpcSecurityGroupIds = a })
