module Stratosphere.ElastiCache.ReplicationGroup (
        module Exports, ReplicationGroup(..), mkReplicationGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.ReplicationGroup.LogDeliveryConfigurationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.ElastiCache.ReplicationGroup.NodeGroupConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ReplicationGroup
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html>
    ReplicationGroup {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-atrestencryptionenabled>
                      atRestEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-authtoken>
                      authToken :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-autominorversionupgrade>
                      autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-automaticfailoverenabled>
                      automaticFailoverEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachenodetype>
                      cacheNodeType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cacheparametergroupname>
                      cacheParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesecuritygroupnames>
                      cacheSecurityGroupNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-cachesubnetgroupname>
                      cacheSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-clustermode>
                      clusterMode :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-datatieringenabled>
                      dataTieringEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engine>
                      engine :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-engineversion>
                      engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-globalreplicationgroupid>
                      globalReplicationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-ipdiscovery>
                      ipDiscovery :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-kmskeyid>
                      kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-logdeliveryconfigurations>
                      logDeliveryConfigurations :: (Prelude.Maybe [LogDeliveryConfigurationRequestProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-multiazenabled>
                      multiAZEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-networktype>
                      networkType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-nodegroupconfiguration>
                      nodeGroupConfiguration :: (Prelude.Maybe [NodeGroupConfigurationProperty]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-notificationtopicarn>
                      notificationTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numcacheclusters>
                      numCacheClusters :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-numnodegroups>
                      numNodeGroups :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-port>
                      port :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredcacheclusterazs>
                      preferredCacheClusterAZs :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-preferredmaintenancewindow>
                      preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-primaryclusterid>
                      primaryClusterId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicaspernodegroup>
                      replicasPerNodeGroup :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupdescription>
                      replicationGroupDescription :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-replicationgroupid>
                      replicationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-securitygroupids>
                      securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotarns>
                      snapshotArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotname>
                      snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotretentionlimit>
                      snapshotRetentionLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshotwindow>
                      snapshotWindow :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-snapshottingclusterid>
                      snapshottingClusterId :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-transitencryptionenabled>
                      transitEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-transitencryptionmode>
                      transitEncryptionMode :: (Prelude.Maybe (Value Prelude.Text)),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticache-replicationgroup.html#cfn-elasticache-replicationgroup-usergroupids>
                      userGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationGroup :: Value Prelude.Text -> ReplicationGroup
mkReplicationGroup replicationGroupDescription
  = ReplicationGroup
      {replicationGroupDescription = replicationGroupDescription,
       atRestEncryptionEnabled = Prelude.Nothing,
       authToken = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       automaticFailoverEnabled = Prelude.Nothing,
       cacheNodeType = Prelude.Nothing,
       cacheParameterGroupName = Prelude.Nothing,
       cacheSecurityGroupNames = Prelude.Nothing,
       cacheSubnetGroupName = Prelude.Nothing,
       clusterMode = Prelude.Nothing,
       dataTieringEnabled = Prelude.Nothing, engine = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
       globalReplicationGroupId = Prelude.Nothing,
       ipDiscovery = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       logDeliveryConfigurations = Prelude.Nothing,
       multiAZEnabled = Prelude.Nothing, networkType = Prelude.Nothing,
       nodeGroupConfiguration = Prelude.Nothing,
       notificationTopicArn = Prelude.Nothing,
       numCacheClusters = Prelude.Nothing,
       numNodeGroups = Prelude.Nothing, port = Prelude.Nothing,
       preferredCacheClusterAZs = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       primaryClusterId = Prelude.Nothing,
       replicasPerNodeGroup = Prelude.Nothing,
       replicationGroupId = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, snapshotArns = Prelude.Nothing,
       snapshotName = Prelude.Nothing,
       snapshotRetentionLimit = Prelude.Nothing,
       snapshotWindow = Prelude.Nothing,
       snapshottingClusterId = Prelude.Nothing, tags = Prelude.Nothing,
       transitEncryptionEnabled = Prelude.Nothing,
       transitEncryptionMode = Prelude.Nothing,
       userGroupIds = Prelude.Nothing}
instance ToResourceProperties ReplicationGroup where
  toResourceProperties ReplicationGroup {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ReplicationGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ReplicationGroupDescription" JSON..= replicationGroupDescription]
                           (Prelude.catMaybes
                              [(JSON..=) "AtRestEncryptionEnabled"
                                 Prelude.<$> atRestEncryptionEnabled,
                               (JSON..=) "AuthToken" Prelude.<$> authToken,
                               (JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "AutomaticFailoverEnabled"
                                 Prelude.<$> automaticFailoverEnabled,
                               (JSON..=) "CacheNodeType" Prelude.<$> cacheNodeType,
                               (JSON..=) "CacheParameterGroupName"
                                 Prelude.<$> cacheParameterGroupName,
                               (JSON..=) "CacheSecurityGroupNames"
                                 Prelude.<$> cacheSecurityGroupNames,
                               (JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                               (JSON..=) "ClusterMode" Prelude.<$> clusterMode,
                               (JSON..=) "DataTieringEnabled" Prelude.<$> dataTieringEnabled,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "GlobalReplicationGroupId"
                                 Prelude.<$> globalReplicationGroupId,
                               (JSON..=) "IpDiscovery" Prelude.<$> ipDiscovery,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "LogDeliveryConfigurations"
                                 Prelude.<$> logDeliveryConfigurations,
                               (JSON..=) "MultiAZEnabled" Prelude.<$> multiAZEnabled,
                               (JSON..=) "NetworkType" Prelude.<$> networkType,
                               (JSON..=) "NodeGroupConfiguration"
                                 Prelude.<$> nodeGroupConfiguration,
                               (JSON..=) "NotificationTopicArn" Prelude.<$> notificationTopicArn,
                               (JSON..=) "NumCacheClusters" Prelude.<$> numCacheClusters,
                               (JSON..=) "NumNodeGroups" Prelude.<$> numNodeGroups,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PreferredCacheClusterAZs"
                                 Prelude.<$> preferredCacheClusterAZs,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "PrimaryClusterId" Prelude.<$> primaryClusterId,
                               (JSON..=) "ReplicasPerNodeGroup" Prelude.<$> replicasPerNodeGroup,
                               (JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                               (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                               (JSON..=) "SnapshotRetentionLimit"
                                 Prelude.<$> snapshotRetentionLimit,
                               (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                               (JSON..=) "SnapshottingClusterId"
                                 Prelude.<$> snapshottingClusterId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TransitEncryptionEnabled"
                                 Prelude.<$> transitEncryptionEnabled,
                               (JSON..=) "TransitEncryptionMode"
                                 Prelude.<$> transitEncryptionMode,
                               (JSON..=) "UserGroupIds" Prelude.<$> userGroupIds]))}
instance JSON.ToJSON ReplicationGroup where
  toJSON ReplicationGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ReplicationGroupDescription" JSON..= replicationGroupDescription]
              (Prelude.catMaybes
                 [(JSON..=) "AtRestEncryptionEnabled"
                    Prelude.<$> atRestEncryptionEnabled,
                  (JSON..=) "AuthToken" Prelude.<$> authToken,
                  (JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "AutomaticFailoverEnabled"
                    Prelude.<$> automaticFailoverEnabled,
                  (JSON..=) "CacheNodeType" Prelude.<$> cacheNodeType,
                  (JSON..=) "CacheParameterGroupName"
                    Prelude.<$> cacheParameterGroupName,
                  (JSON..=) "CacheSecurityGroupNames"
                    Prelude.<$> cacheSecurityGroupNames,
                  (JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                  (JSON..=) "ClusterMode" Prelude.<$> clusterMode,
                  (JSON..=) "DataTieringEnabled" Prelude.<$> dataTieringEnabled,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "GlobalReplicationGroupId"
                    Prelude.<$> globalReplicationGroupId,
                  (JSON..=) "IpDiscovery" Prelude.<$> ipDiscovery,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "LogDeliveryConfigurations"
                    Prelude.<$> logDeliveryConfigurations,
                  (JSON..=) "MultiAZEnabled" Prelude.<$> multiAZEnabled,
                  (JSON..=) "NetworkType" Prelude.<$> networkType,
                  (JSON..=) "NodeGroupConfiguration"
                    Prelude.<$> nodeGroupConfiguration,
                  (JSON..=) "NotificationTopicArn" Prelude.<$> notificationTopicArn,
                  (JSON..=) "NumCacheClusters" Prelude.<$> numCacheClusters,
                  (JSON..=) "NumNodeGroups" Prelude.<$> numNodeGroups,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PreferredCacheClusterAZs"
                    Prelude.<$> preferredCacheClusterAZs,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "PrimaryClusterId" Prelude.<$> primaryClusterId,
                  (JSON..=) "ReplicasPerNodeGroup" Prelude.<$> replicasPerNodeGroup,
                  (JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                  (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                  (JSON..=) "SnapshotRetentionLimit"
                    Prelude.<$> snapshotRetentionLimit,
                  (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                  (JSON..=) "SnapshottingClusterId"
                    Prelude.<$> snapshottingClusterId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TransitEncryptionEnabled"
                    Prelude.<$> transitEncryptionEnabled,
                  (JSON..=) "TransitEncryptionMode"
                    Prelude.<$> transitEncryptionMode,
                  (JSON..=) "UserGroupIds" Prelude.<$> userGroupIds])))
instance Property "AtRestEncryptionEnabled" ReplicationGroup where
  type PropertyType "AtRestEncryptionEnabled" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {atRestEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "AuthToken" ReplicationGroup where
  type PropertyType "AuthToken" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {authToken = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" ReplicationGroup where
  type PropertyType "AutoMinorVersionUpgrade" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "AutomaticFailoverEnabled" ReplicationGroup where
  type PropertyType "AutomaticFailoverEnabled" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {automaticFailoverEnabled = Prelude.pure newValue, ..}
instance Property "CacheNodeType" ReplicationGroup where
  type PropertyType "CacheNodeType" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {cacheNodeType = Prelude.pure newValue, ..}
instance Property "CacheParameterGroupName" ReplicationGroup where
  type PropertyType "CacheParameterGroupName" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {cacheParameterGroupName = Prelude.pure newValue, ..}
instance Property "CacheSecurityGroupNames" ReplicationGroup where
  type PropertyType "CacheSecurityGroupNames" ReplicationGroup = ValueList Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {cacheSecurityGroupNames = Prelude.pure newValue, ..}
instance Property "CacheSubnetGroupName" ReplicationGroup where
  type PropertyType "CacheSubnetGroupName" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {cacheSubnetGroupName = Prelude.pure newValue, ..}
instance Property "ClusterMode" ReplicationGroup where
  type PropertyType "ClusterMode" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {clusterMode = Prelude.pure newValue, ..}
instance Property "DataTieringEnabled" ReplicationGroup where
  type PropertyType "DataTieringEnabled" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup {dataTieringEnabled = Prelude.pure newValue, ..}
instance Property "Engine" ReplicationGroup where
  type PropertyType "Engine" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {engine = Prelude.pure newValue, ..}
instance Property "EngineVersion" ReplicationGroup where
  type PropertyType "EngineVersion" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {engineVersion = Prelude.pure newValue, ..}
instance Property "GlobalReplicationGroupId" ReplicationGroup where
  type PropertyType "GlobalReplicationGroupId" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {globalReplicationGroupId = Prelude.pure newValue, ..}
instance Property "IpDiscovery" ReplicationGroup where
  type PropertyType "IpDiscovery" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {ipDiscovery = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ReplicationGroup where
  type PropertyType "KmsKeyId" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {kmsKeyId = Prelude.pure newValue, ..}
instance Property "LogDeliveryConfigurations" ReplicationGroup where
  type PropertyType "LogDeliveryConfigurations" ReplicationGroup = [LogDeliveryConfigurationRequestProperty]
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {logDeliveryConfigurations = Prelude.pure newValue, ..}
instance Property "MultiAZEnabled" ReplicationGroup where
  type PropertyType "MultiAZEnabled" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup {multiAZEnabled = Prelude.pure newValue, ..}
instance Property "NetworkType" ReplicationGroup where
  type PropertyType "NetworkType" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {networkType = Prelude.pure newValue, ..}
instance Property "NodeGroupConfiguration" ReplicationGroup where
  type PropertyType "NodeGroupConfiguration" ReplicationGroup = [NodeGroupConfigurationProperty]
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {nodeGroupConfiguration = Prelude.pure newValue, ..}
instance Property "NotificationTopicArn" ReplicationGroup where
  type PropertyType "NotificationTopicArn" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {notificationTopicArn = Prelude.pure newValue, ..}
instance Property "NumCacheClusters" ReplicationGroup where
  type PropertyType "NumCacheClusters" ReplicationGroup = Value Prelude.Integer
  set newValue ReplicationGroup {..}
    = ReplicationGroup {numCacheClusters = Prelude.pure newValue, ..}
instance Property "NumNodeGroups" ReplicationGroup where
  type PropertyType "NumNodeGroups" ReplicationGroup = Value Prelude.Integer
  set newValue ReplicationGroup {..}
    = ReplicationGroup {numNodeGroups = Prelude.pure newValue, ..}
instance Property "Port" ReplicationGroup where
  type PropertyType "Port" ReplicationGroup = Value Prelude.Integer
  set newValue ReplicationGroup {..}
    = ReplicationGroup {port = Prelude.pure newValue, ..}
instance Property "PreferredCacheClusterAZs" ReplicationGroup where
  type PropertyType "PreferredCacheClusterAZs" ReplicationGroup = ValueList Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {preferredCacheClusterAZs = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" ReplicationGroup where
  type PropertyType "PreferredMaintenanceWindow" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "PrimaryClusterId" ReplicationGroup where
  type PropertyType "PrimaryClusterId" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {primaryClusterId = Prelude.pure newValue, ..}
instance Property "ReplicasPerNodeGroup" ReplicationGroup where
  type PropertyType "ReplicasPerNodeGroup" ReplicationGroup = Value Prelude.Integer
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {replicasPerNodeGroup = Prelude.pure newValue, ..}
instance Property "ReplicationGroupDescription" ReplicationGroup where
  type PropertyType "ReplicationGroupDescription" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {replicationGroupDescription = newValue, ..}
instance Property "ReplicationGroupId" ReplicationGroup where
  type PropertyType "ReplicationGroupId" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {replicationGroupId = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" ReplicationGroup where
  type PropertyType "SecurityGroupIds" ReplicationGroup = ValueList Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SnapshotArns" ReplicationGroup where
  type PropertyType "SnapshotArns" ReplicationGroup = ValueList Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {snapshotArns = Prelude.pure newValue, ..}
instance Property "SnapshotName" ReplicationGroup where
  type PropertyType "SnapshotName" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {snapshotName = Prelude.pure newValue, ..}
instance Property "SnapshotRetentionLimit" ReplicationGroup where
  type PropertyType "SnapshotRetentionLimit" ReplicationGroup = Value Prelude.Integer
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {snapshotRetentionLimit = Prelude.pure newValue, ..}
instance Property "SnapshotWindow" ReplicationGroup where
  type PropertyType "SnapshotWindow" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {snapshotWindow = Prelude.pure newValue, ..}
instance Property "SnapshottingClusterId" ReplicationGroup where
  type PropertyType "SnapshottingClusterId" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {snapshottingClusterId = Prelude.pure newValue, ..}
instance Property "Tags" ReplicationGroup where
  type PropertyType "Tags" ReplicationGroup = [Tag]
  set newValue ReplicationGroup {..}
    = ReplicationGroup {tags = Prelude.pure newValue, ..}
instance Property "TransitEncryptionEnabled" ReplicationGroup where
  type PropertyType "TransitEncryptionEnabled" ReplicationGroup = Value Prelude.Bool
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {transitEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "TransitEncryptionMode" ReplicationGroup where
  type PropertyType "TransitEncryptionMode" ReplicationGroup = Value Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup
        {transitEncryptionMode = Prelude.pure newValue, ..}
instance Property "UserGroupIds" ReplicationGroup where
  type PropertyType "UserGroupIds" ReplicationGroup = ValueList Prelude.Text
  set newValue ReplicationGroup {..}
    = ReplicationGroup {userGroupIds = Prelude.pure newValue, ..}