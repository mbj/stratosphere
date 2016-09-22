{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::ElastiCache::CacheCluster type creates an Amazon ElastiCache
-- cache cluster.

module Stratosphere.Resources.CacheCluster where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for CacheCluster. See 'cacheCluster' for a more
-- convenient constructor.
data CacheCluster =
  CacheCluster
  { _cacheClusterAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _cacheClusterAZMode :: Maybe (Val Text)
  , _cacheClusterCacheNodeType :: Val Text
  , _cacheClusterCacheParameterGroupName :: Maybe (Val Text)
  , _cacheClusterCacheSecurityGroupNames :: Maybe [Val Text]
  , _cacheClusterCacheSubnetGroupName :: Maybe (Val Text)
  , _cacheClusterClusterName :: Maybe (Val Text)
  , _cacheClusterEngine :: Val Text
  , _cacheClusterEngineVersion :: Maybe (Val Text)
  , _cacheClusterNotificationTopicArn :: Maybe (Val Text)
  , _cacheClusterNumCacheNodes :: Val Integer'
  , _cacheClusterPort :: Maybe (Val Integer')
  , _cacheClusterPreferredAvailabilityZone :: Maybe (Val Text)
  , _cacheClusterPreferredAvailabilityZones :: Maybe [Val Text]
  , _cacheClusterPreferredMaintenanceWindow :: Maybe (Val Text)
  , _cacheClusterSnapshotArns :: Maybe [Val Text]
  , _cacheClusterSnapshotName :: Maybe (Val Text)
  , _cacheClusterSnapshotRetentionLimit :: Maybe (Val Integer')
  , _cacheClusterSnapshotWindow :: Maybe (Val Text)
  , _cacheClusterTags :: Maybe [ResourceTag]
  , _cacheClusterVpcSecurityGroupIds :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON CacheCluster where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

instance FromJSON CacheCluster where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 13, omitNothingFields = True }

-- | Constructor for 'CacheCluster' containing required fields as arguments.
cacheCluster
  :: Val Text -- ^ 'ccCacheNodeType'
  -> Val Text -- ^ 'ccEngine'
  -> Val Integer' -- ^ 'ccNumCacheNodes'
  -> CacheCluster
cacheCluster cacheNodeTypearg enginearg numCacheNodesarg =
  CacheCluster
  { _cacheClusterAutoMinorVersionUpgrade = Nothing
  , _cacheClusterAZMode = Nothing
  , _cacheClusterCacheNodeType = cacheNodeTypearg
  , _cacheClusterCacheParameterGroupName = Nothing
  , _cacheClusterCacheSecurityGroupNames = Nothing
  , _cacheClusterCacheSubnetGroupName = Nothing
  , _cacheClusterClusterName = Nothing
  , _cacheClusterEngine = enginearg
  , _cacheClusterEngineVersion = Nothing
  , _cacheClusterNotificationTopicArn = Nothing
  , _cacheClusterNumCacheNodes = numCacheNodesarg
  , _cacheClusterPort = Nothing
  , _cacheClusterPreferredAvailabilityZone = Nothing
  , _cacheClusterPreferredAvailabilityZones = Nothing
  , _cacheClusterPreferredMaintenanceWindow = Nothing
  , _cacheClusterSnapshotArns = Nothing
  , _cacheClusterSnapshotName = Nothing
  , _cacheClusterSnapshotRetentionLimit = Nothing
  , _cacheClusterSnapshotWindow = Nothing
  , _cacheClusterTags = Nothing
  , _cacheClusterVpcSecurityGroupIds = Nothing
  }

-- | Indicates that minor engine upgrades will be applied automatically to the
-- cache cluster during the maintenance window.
ccAutoMinorVersionUpgrade :: Lens' CacheCluster (Maybe (Val Bool'))
ccAutoMinorVersionUpgrade = lens _cacheClusterAutoMinorVersionUpgrade (\s a -> s { _cacheClusterAutoMinorVersionUpgrade = a })

-- | For Memcached cache clusters, indicates whether the nodes are created in
-- a single Availability Zone or across multiple Availability Zones in the
-- cluster's region. For valid values, see CreateCacheCluster in the Amazon
-- ElastiCache API Reference.
ccAZMode :: Lens' CacheCluster (Maybe (Val Text))
ccAZMode = lens _cacheClusterAZMode (\s a -> s { _cacheClusterAZMode = a })

-- | The compute and memory capacity of nodes in a cache cluster.
ccCacheNodeType :: Lens' CacheCluster (Val Text)
ccCacheNodeType = lens _cacheClusterCacheNodeType (\s a -> s { _cacheClusterCacheNodeType = a })

-- | The name of the cache parameter group that is associated with this cache
-- cluster.
ccCacheParameterGroupName :: Lens' CacheCluster (Maybe (Val Text))
ccCacheParameterGroupName = lens _cacheClusterCacheParameterGroupName (\s a -> s { _cacheClusterCacheParameterGroupName = a })

-- | A list of cache security group names that are associated with this cache
-- cluster. If your cache cluster is in a VPC, specify the VpcSecurityGroupIds
-- property instead.
ccCacheSecurityGroupNames :: Lens' CacheCluster (Maybe [Val Text])
ccCacheSecurityGroupNames = lens _cacheClusterCacheSecurityGroupNames (\s a -> s { _cacheClusterCacheSecurityGroupNames = a })

-- | The cache subnet group that you associate with a cache cluster.
ccCacheSubnetGroupName :: Lens' CacheCluster (Maybe (Val Text))
ccCacheSubnetGroupName = lens _cacheClusterCacheSubnetGroupName (\s a -> s { _cacheClusterCacheSubnetGroupName = a })

-- | A name for the cache cluster. If you don't specify a name, AWS
-- CloudFormation generates a unique physical ID and uses that ID for the
-- cache cluster. For more information, see Name Type. Important If you
-- specify a name, you cannot do updates that require this resource to be
-- replaced. You can still do updates that require no or some interruption. If
-- you must replace the resource, specify a new name. The name must contain 1
-- to 20 alphanumeric characters or hyphens. The name must start with a letter
-- and cannot end with a hyphen or contain two consecutive hyphens.
ccClusterName :: Lens' CacheCluster (Maybe (Val Text))
ccClusterName = lens _cacheClusterClusterName (\s a -> s { _cacheClusterClusterName = a })

-- | The name of the cache engine to be used for this cache cluster, such as
-- memcached or redis.
ccEngine :: Lens' CacheCluster (Val Text)
ccEngine = lens _cacheClusterEngine (\s a -> s { _cacheClusterEngine = a })

-- | The version of the cache engine to be used for this cluster.
ccEngineVersion :: Lens' CacheCluster (Maybe (Val Text))
ccEngineVersion = lens _cacheClusterEngineVersion (\s a -> s { _cacheClusterEngineVersion = a })

-- | The Amazon Resource Name (ARN) of the Amazon Simple Notification Service
-- (SNS) topic to which notifications will be sent.
ccNotificationTopicArn :: Lens' CacheCluster (Maybe (Val Text))
ccNotificationTopicArn = lens _cacheClusterNotificationTopicArn (\s a -> s { _cacheClusterNotificationTopicArn = a })

-- | The number of cache nodes that the cache cluster should have.
ccNumCacheNodes :: Lens' CacheCluster (Val Integer')
ccNumCacheNodes = lens _cacheClusterNumCacheNodes (\s a -> s { _cacheClusterNumCacheNodes = a })

-- | The port number on which each of the cache nodes will accept connections.
ccPort :: Lens' CacheCluster (Maybe (Val Integer'))
ccPort = lens _cacheClusterPort (\s a -> s { _cacheClusterPort = a })

-- | The Amazon EC2 Availability Zone in which the cache cluster is created.
ccPreferredAvailabilityZone :: Lens' CacheCluster (Maybe (Val Text))
ccPreferredAvailabilityZone = lens _cacheClusterPreferredAvailabilityZone (\s a -> s { _cacheClusterPreferredAvailabilityZone = a })

-- | For Memcached cache clusters, the list of Availability Zones in which
-- cache nodes are created. The number of Availability Zones listed must equal
-- the number of cache nodes. For example, if you want to create three nodes
-- in two different Availability Zones, you can specify ["us-east-1a",
-- "us-east-1a", "us-east-1b"], which would create two nodes in us-east-1a and
-- one node in us-east-1b. If you specify a subnet group and you're creating
-- your cache cluster in a VPC, you must specify Availability Zones that are
-- associated with the subnets in the subnet group that you've chosen. If you
-- want all the nodes in the same Availability Zone, use the
-- PreferredAvailabilityZone property or repeat the Availability Zone multiple
-- times in the list.
ccPreferredAvailabilityZones :: Lens' CacheCluster (Maybe [Val Text])
ccPreferredAvailabilityZones = lens _cacheClusterPreferredAvailabilityZones (\s a -> s { _cacheClusterPreferredAvailabilityZones = a })

-- | The weekly time range (in UTC) during which system maintenance can occur.
ccPreferredMaintenanceWindow :: Lens' CacheCluster (Maybe (Val Text))
ccPreferredMaintenanceWindow = lens _cacheClusterPreferredMaintenanceWindow (\s a -> s { _cacheClusterPreferredMaintenanceWindow = a })

-- | The ARN of the snapshot file that you want to use to seed a new Redis
-- cache cluster. If you manage a Redis instance outside of Amazon
-- ElastiCache, you can create a new cache cluster in ElastiCache by using a
-- snapshot file that is stored in an Amazon S3 bucket.
ccSnapshotArns :: Lens' CacheCluster (Maybe [Val Text])
ccSnapshotArns = lens _cacheClusterSnapshotArns (\s a -> s { _cacheClusterSnapshotArns = a })

-- | The name of a snapshot from which to restore data into a new Redis cache
-- cluster.
ccSnapshotName :: Lens' CacheCluster (Maybe (Val Text))
ccSnapshotName = lens _cacheClusterSnapshotName (\s a -> s { _cacheClusterSnapshotName = a })

-- | For Redis cache clusters, the number of days for which ElastiCache
-- retains automatic snapshots before deleting them. For example, if you set
-- the value to 5, a snapshot that was taken today will be retained for 5 days
-- before being deleted.
ccSnapshotRetentionLimit :: Lens' CacheCluster (Maybe (Val Integer'))
ccSnapshotRetentionLimit = lens _cacheClusterSnapshotRetentionLimit (\s a -> s { _cacheClusterSnapshotRetentionLimit = a })

-- | For Redis cache clusters, the daily time range (in UTC) during which
-- ElastiCache will begin taking a daily snapshot of your node group. For
-- example, you can specify 05:00-09:00.
ccSnapshotWindow :: Lens' CacheCluster (Maybe (Val Text))
ccSnapshotWindow = lens _cacheClusterSnapshotWindow (\s a -> s { _cacheClusterSnapshotWindow = a })

-- | An arbitrary set of tags (key–value pairs) for this cache cluster.
ccTags :: Lens' CacheCluster (Maybe [ResourceTag])
ccTags = lens _cacheClusterTags (\s a -> s { _cacheClusterTags = a })

-- | A list of VPC security group IDs. If your cache cluster isn't in a VPC,
-- specify the CacheSecurityGroupNames property instead. Note You must use the
-- AWS::EC2::SecurityGroup resource instead of the
-- AWS::ElastiCache::SecurityGroup resource in order to specify an ElastiCache
-- security group that is in a VPC. In addition, if you use the default VPC
-- for your AWS account, you must use the Fn::GetAtt function and the GroupId
-- attribute to retrieve security group IDs (instead of the Ref function). To
-- see a sample template, see the Template Snippet section.
ccVpcSecurityGroupIds :: Lens' CacheCluster (Maybe [Val Text])
ccVpcSecurityGroupIds = lens _cacheClusterVpcSecurityGroupIds (\s a -> s { _cacheClusterVpcSecurityGroupIds = a })