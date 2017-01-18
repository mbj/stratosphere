{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html

module Stratosphere.Resources.ElastiCacheReplicationGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElastiCacheReplicationGroup. See
-- | 'elastiCacheReplicationGroup' for a more convenient constructor.
data ElastiCacheReplicationGroup =
  ElastiCacheReplicationGroup
  { _elastiCacheReplicationGroupAutoMinorVersionUpgrade :: Maybe (Val Bool')
  , _elastiCacheReplicationGroupAutomaticFailoverEnabled :: Maybe (Val Bool')
  , _elastiCacheReplicationGroupCacheNodeType :: Maybe (Val Text)
  , _elastiCacheReplicationGroupCacheParameterGroupName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupCacheSecurityGroupNames :: Maybe [Val Text]
  , _elastiCacheReplicationGroupCacheSubnetGroupName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupEngine :: Maybe (Val Text)
  , _elastiCacheReplicationGroupEngineVersion :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNodeGroupConfiguration :: Maybe [ElastiCacheReplicationGroupNodeGroupConfiguration]
  , _elastiCacheReplicationGroupNotificationTopicArn :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNumCacheClusters :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupNumNodeGroups :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupPort :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupPreferredCacheClusterAZs :: Maybe [Val Text]
  , _elastiCacheReplicationGroupPreferredMaintenanceWindow :: Maybe (Val Text)
  , _elastiCacheReplicationGroupPrimaryClusterId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupReplicasPerNodeGroup :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupReplicationGroupDescription :: Val Text
  , _elastiCacheReplicationGroupReplicationGroupId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSecurityGroupIds :: Maybe [Val Text]
  , _elastiCacheReplicationGroupSnapshotArns :: Maybe [Val Text]
  , _elastiCacheReplicationGroupSnapshotName :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSnapshotRetentionLimit :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupSnapshotWindow :: Maybe (Val Text)
  , _elastiCacheReplicationGroupSnapshottingClusterId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupTags :: Maybe [Tag]
  } deriving (Show, Eq, Generic)

instance ToJSON ElastiCacheReplicationGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON ElastiCacheReplicationGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'ElastiCacheReplicationGroup' containing required fields
-- | as arguments.
elastiCacheReplicationGroup
  :: Val Text -- ^ 'ecrgReplicationGroupDescription'
  -> ElastiCacheReplicationGroup
elastiCacheReplicationGroup replicationGroupDescriptionarg =
  ElastiCacheReplicationGroup
  { _elastiCacheReplicationGroupAutoMinorVersionUpgrade = Nothing
  , _elastiCacheReplicationGroupAutomaticFailoverEnabled = Nothing
  , _elastiCacheReplicationGroupCacheNodeType = Nothing
  , _elastiCacheReplicationGroupCacheParameterGroupName = Nothing
  , _elastiCacheReplicationGroupCacheSecurityGroupNames = Nothing
  , _elastiCacheReplicationGroupCacheSubnetGroupName = Nothing
  , _elastiCacheReplicationGroupEngine = Nothing
  , _elastiCacheReplicationGroupEngineVersion = Nothing
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
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-autominorversionupgrade
ecrgAutoMinorVersionUpgrade :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool'))
ecrgAutoMinorVersionUpgrade = lens _elastiCacheReplicationGroupAutoMinorVersionUpgrade (\s a -> s { _elastiCacheReplicationGroupAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-automaticfailoverenabled
ecrgAutomaticFailoverEnabled :: Lens' ElastiCacheReplicationGroup (Maybe (Val Bool'))
ecrgAutomaticFailoverEnabled = lens _elastiCacheReplicationGroupAutomaticFailoverEnabled (\s a -> s { _elastiCacheReplicationGroupAutomaticFailoverEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachenodetype
ecrgCacheNodeType :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgCacheNodeType = lens _elastiCacheReplicationGroupCacheNodeType (\s a -> s { _elastiCacheReplicationGroupCacheNodeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cacheparametergroupname
ecrgCacheParameterGroupName :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgCacheParameterGroupName = lens _elastiCacheReplicationGroupCacheParameterGroupName (\s a -> s { _elastiCacheReplicationGroupCacheParameterGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesecuritygroupnames
ecrgCacheSecurityGroupNames :: Lens' ElastiCacheReplicationGroup (Maybe [Val Text])
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-nodegroupconfiguration
ecrgNodeGroupConfiguration :: Lens' ElastiCacheReplicationGroup (Maybe [ElastiCacheReplicationGroupNodeGroupConfiguration])
ecrgNodeGroupConfiguration = lens _elastiCacheReplicationGroupNodeGroupConfiguration (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-notificationtopicarn
ecrgNotificationTopicArn :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgNotificationTopicArn = lens _elastiCacheReplicationGroupNotificationTopicArn (\s a -> s { _elastiCacheReplicationGroupNotificationTopicArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numcacheclusters
ecrgNumCacheClusters :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer'))
ecrgNumCacheClusters = lens _elastiCacheReplicationGroupNumCacheClusters (\s a -> s { _elastiCacheReplicationGroupNumCacheClusters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numnodegroups
ecrgNumNodeGroups :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer'))
ecrgNumNodeGroups = lens _elastiCacheReplicationGroupNumNodeGroups (\s a -> s { _elastiCacheReplicationGroupNumNodeGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-port
ecrgPort :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer'))
ecrgPort = lens _elastiCacheReplicationGroupPort (\s a -> s { _elastiCacheReplicationGroupPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredcacheclusterazs
ecrgPreferredCacheClusterAZs :: Lens' ElastiCacheReplicationGroup (Maybe [Val Text])
ecrgPreferredCacheClusterAZs = lens _elastiCacheReplicationGroupPreferredCacheClusterAZs (\s a -> s { _elastiCacheReplicationGroupPreferredCacheClusterAZs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredmaintenancewindow
ecrgPreferredMaintenanceWindow :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgPreferredMaintenanceWindow = lens _elastiCacheReplicationGroupPreferredMaintenanceWindow (\s a -> s { _elastiCacheReplicationGroupPreferredMaintenanceWindow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-primaryclusterid
ecrgPrimaryClusterId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgPrimaryClusterId = lens _elastiCacheReplicationGroupPrimaryClusterId (\s a -> s { _elastiCacheReplicationGroupPrimaryClusterId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicaspernodegroup
ecrgReplicasPerNodeGroup :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer'))
ecrgReplicasPerNodeGroup = lens _elastiCacheReplicationGroupReplicasPerNodeGroup (\s a -> s { _elastiCacheReplicationGroupReplicasPerNodeGroup = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupdescription
ecrgReplicationGroupDescription :: Lens' ElastiCacheReplicationGroup (Val Text)
ecrgReplicationGroupDescription = lens _elastiCacheReplicationGroupReplicationGroupDescription (\s a -> s { _elastiCacheReplicationGroupReplicationGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupid
ecrgReplicationGroupId :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgReplicationGroupId = lens _elastiCacheReplicationGroupReplicationGroupId (\s a -> s { _elastiCacheReplicationGroupReplicationGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-securitygroupids
ecrgSecurityGroupIds :: Lens' ElastiCacheReplicationGroup (Maybe [Val Text])
ecrgSecurityGroupIds = lens _elastiCacheReplicationGroupSecurityGroupIds (\s a -> s { _elastiCacheReplicationGroupSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotarns
ecrgSnapshotArns :: Lens' ElastiCacheReplicationGroup (Maybe [Val Text])
ecrgSnapshotArns = lens _elastiCacheReplicationGroupSnapshotArns (\s a -> s { _elastiCacheReplicationGroupSnapshotArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotname
ecrgSnapshotName :: Lens' ElastiCacheReplicationGroup (Maybe (Val Text))
ecrgSnapshotName = lens _elastiCacheReplicationGroupSnapshotName (\s a -> s { _elastiCacheReplicationGroupSnapshotName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotretentionlimit
ecrgSnapshotRetentionLimit :: Lens' ElastiCacheReplicationGroup (Maybe (Val Integer'))
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
