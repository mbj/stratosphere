module Stratosphere.ElastiCache.CacheCluster (
        module Exports, CacheCluster(..), mkCacheCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.CacheCluster.LogDeliveryConfigurationRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CacheCluster
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html>
    CacheCluster {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-azmode>
                  aZMode :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-autominorversionupgrade>
                  autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachenodetype>
                  cacheNodeType :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cacheparametergroupname>
                  cacheParameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesecuritygroupnames>
                  cacheSecurityGroupNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-cachesubnetgroupname>
                  cacheSubnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-clustername>
                  clusterName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engine>
                  engine :: (Value Prelude.Text),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-engineversion>
                  engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-ipdiscovery>
                  ipDiscovery :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-logdeliveryconfigurations>
                  logDeliveryConfigurations :: (Prelude.Maybe [LogDeliveryConfigurationRequestProperty]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-networktype>
                  networkType :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-notificationtopicarn>
                  notificationTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-numcachenodes>
                  numCacheNodes :: (Value Prelude.Integer),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-port>
                  port :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzone>
                  preferredAvailabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredavailabilityzones>
                  preferredAvailabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-preferredmaintenancewindow>
                  preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotarns>
                  snapshotArns :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotname>
                  snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotretentionlimit>
                  snapshotRetentionLimit :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-snapshotwindow>
                  snapshotWindow :: (Prelude.Maybe (Value Prelude.Text)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-transitencryptionenabled>
                  transitEncryptionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-cache-cluster.html#cfn-elasticache-cachecluster-vpcsecuritygroupids>
                  vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheCluster ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Integer -> CacheCluster
mkCacheCluster cacheNodeType engine numCacheNodes
  = CacheCluster
      {cacheNodeType = cacheNodeType, engine = engine,
       numCacheNodes = numCacheNodes, aZMode = Prelude.Nothing,
       autoMinorVersionUpgrade = Prelude.Nothing,
       cacheParameterGroupName = Prelude.Nothing,
       cacheSecurityGroupNames = Prelude.Nothing,
       cacheSubnetGroupName = Prelude.Nothing,
       clusterName = Prelude.Nothing, engineVersion = Prelude.Nothing,
       ipDiscovery = Prelude.Nothing,
       logDeliveryConfigurations = Prelude.Nothing,
       networkType = Prelude.Nothing,
       notificationTopicArn = Prelude.Nothing, port = Prelude.Nothing,
       preferredAvailabilityZone = Prelude.Nothing,
       preferredAvailabilityZones = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       snapshotArns = Prelude.Nothing, snapshotName = Prelude.Nothing,
       snapshotRetentionLimit = Prelude.Nothing,
       snapshotWindow = Prelude.Nothing, tags = Prelude.Nothing,
       transitEncryptionEnabled = Prelude.Nothing,
       vpcSecurityGroupIds = Prelude.Nothing}
instance ToResourceProperties CacheCluster where
  toResourceProperties CacheCluster {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::CacheCluster",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CacheNodeType" JSON..= cacheNodeType, "Engine" JSON..= engine,
                            "NumCacheNodes" JSON..= numCacheNodes]
                           (Prelude.catMaybes
                              [(JSON..=) "AZMode" Prelude.<$> aZMode,
                               (JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "CacheParameterGroupName"
                                 Prelude.<$> cacheParameterGroupName,
                               (JSON..=) "CacheSecurityGroupNames"
                                 Prelude.<$> cacheSecurityGroupNames,
                               (JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                               (JSON..=) "ClusterName" Prelude.<$> clusterName,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "IpDiscovery" Prelude.<$> ipDiscovery,
                               (JSON..=) "LogDeliveryConfigurations"
                                 Prelude.<$> logDeliveryConfigurations,
                               (JSON..=) "NetworkType" Prelude.<$> networkType,
                               (JSON..=) "NotificationTopicArn" Prelude.<$> notificationTopicArn,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "PreferredAvailabilityZone"
                                 Prelude.<$> preferredAvailabilityZone,
                               (JSON..=) "PreferredAvailabilityZones"
                                 Prelude.<$> preferredAvailabilityZones,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                               (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                               (JSON..=) "SnapshotRetentionLimit"
                                 Prelude.<$> snapshotRetentionLimit,
                               (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TransitEncryptionEnabled"
                                 Prelude.<$> transitEncryptionEnabled,
                               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds]))}
instance JSON.ToJSON CacheCluster where
  toJSON CacheCluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CacheNodeType" JSON..= cacheNodeType, "Engine" JSON..= engine,
               "NumCacheNodes" JSON..= numCacheNodes]
              (Prelude.catMaybes
                 [(JSON..=) "AZMode" Prelude.<$> aZMode,
                  (JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "CacheParameterGroupName"
                    Prelude.<$> cacheParameterGroupName,
                  (JSON..=) "CacheSecurityGroupNames"
                    Prelude.<$> cacheSecurityGroupNames,
                  (JSON..=) "CacheSubnetGroupName" Prelude.<$> cacheSubnetGroupName,
                  (JSON..=) "ClusterName" Prelude.<$> clusterName,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "IpDiscovery" Prelude.<$> ipDiscovery,
                  (JSON..=) "LogDeliveryConfigurations"
                    Prelude.<$> logDeliveryConfigurations,
                  (JSON..=) "NetworkType" Prelude.<$> networkType,
                  (JSON..=) "NotificationTopicArn" Prelude.<$> notificationTopicArn,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "PreferredAvailabilityZone"
                    Prelude.<$> preferredAvailabilityZone,
                  (JSON..=) "PreferredAvailabilityZones"
                    Prelude.<$> preferredAvailabilityZones,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                  (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                  (JSON..=) "SnapshotRetentionLimit"
                    Prelude.<$> snapshotRetentionLimit,
                  (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TransitEncryptionEnabled"
                    Prelude.<$> transitEncryptionEnabled,
                  (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds])))
instance Property "AZMode" CacheCluster where
  type PropertyType "AZMode" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {aZMode = Prelude.pure newValue, ..}
instance Property "AutoMinorVersionUpgrade" CacheCluster where
  type PropertyType "AutoMinorVersionUpgrade" CacheCluster = Value Prelude.Bool
  set newValue CacheCluster {..}
    = CacheCluster
        {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "CacheNodeType" CacheCluster where
  type PropertyType "CacheNodeType" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {cacheNodeType = newValue, ..}
instance Property "CacheParameterGroupName" CacheCluster where
  type PropertyType "CacheParameterGroupName" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster
        {cacheParameterGroupName = Prelude.pure newValue, ..}
instance Property "CacheSecurityGroupNames" CacheCluster where
  type PropertyType "CacheSecurityGroupNames" CacheCluster = ValueList Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster
        {cacheSecurityGroupNames = Prelude.pure newValue, ..}
instance Property "CacheSubnetGroupName" CacheCluster where
  type PropertyType "CacheSubnetGroupName" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {cacheSubnetGroupName = Prelude.pure newValue, ..}
instance Property "ClusterName" CacheCluster where
  type PropertyType "ClusterName" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {clusterName = Prelude.pure newValue, ..}
instance Property "Engine" CacheCluster where
  type PropertyType "Engine" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {engine = newValue, ..}
instance Property "EngineVersion" CacheCluster where
  type PropertyType "EngineVersion" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {engineVersion = Prelude.pure newValue, ..}
instance Property "IpDiscovery" CacheCluster where
  type PropertyType "IpDiscovery" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {ipDiscovery = Prelude.pure newValue, ..}
instance Property "LogDeliveryConfigurations" CacheCluster where
  type PropertyType "LogDeliveryConfigurations" CacheCluster = [LogDeliveryConfigurationRequestProperty]
  set newValue CacheCluster {..}
    = CacheCluster
        {logDeliveryConfigurations = Prelude.pure newValue, ..}
instance Property "NetworkType" CacheCluster where
  type PropertyType "NetworkType" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {networkType = Prelude.pure newValue, ..}
instance Property "NotificationTopicArn" CacheCluster where
  type PropertyType "NotificationTopicArn" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {notificationTopicArn = Prelude.pure newValue, ..}
instance Property "NumCacheNodes" CacheCluster where
  type PropertyType "NumCacheNodes" CacheCluster = Value Prelude.Integer
  set newValue CacheCluster {..}
    = CacheCluster {numCacheNodes = newValue, ..}
instance Property "Port" CacheCluster where
  type PropertyType "Port" CacheCluster = Value Prelude.Integer
  set newValue CacheCluster {..}
    = CacheCluster {port = Prelude.pure newValue, ..}
instance Property "PreferredAvailabilityZone" CacheCluster where
  type PropertyType "PreferredAvailabilityZone" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster
        {preferredAvailabilityZone = Prelude.pure newValue, ..}
instance Property "PreferredAvailabilityZones" CacheCluster where
  type PropertyType "PreferredAvailabilityZones" CacheCluster = ValueList Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster
        {preferredAvailabilityZones = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" CacheCluster where
  type PropertyType "PreferredMaintenanceWindow" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "SnapshotArns" CacheCluster where
  type PropertyType "SnapshotArns" CacheCluster = ValueList Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {snapshotArns = Prelude.pure newValue, ..}
instance Property "SnapshotName" CacheCluster where
  type PropertyType "SnapshotName" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {snapshotName = Prelude.pure newValue, ..}
instance Property "SnapshotRetentionLimit" CacheCluster where
  type PropertyType "SnapshotRetentionLimit" CacheCluster = Value Prelude.Integer
  set newValue CacheCluster {..}
    = CacheCluster {snapshotRetentionLimit = Prelude.pure newValue, ..}
instance Property "SnapshotWindow" CacheCluster where
  type PropertyType "SnapshotWindow" CacheCluster = Value Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {snapshotWindow = Prelude.pure newValue, ..}
instance Property "Tags" CacheCluster where
  type PropertyType "Tags" CacheCluster = [Tag]
  set newValue CacheCluster {..}
    = CacheCluster {tags = Prelude.pure newValue, ..}
instance Property "TransitEncryptionEnabled" CacheCluster where
  type PropertyType "TransitEncryptionEnabled" CacheCluster = Value Prelude.Bool
  set newValue CacheCluster {..}
    = CacheCluster
        {transitEncryptionEnabled = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" CacheCluster where
  type PropertyType "VpcSecurityGroupIds" CacheCluster = ValueList Prelude.Text
  set newValue CacheCluster {..}
    = CacheCluster {vpcSecurityGroupIds = Prelude.pure newValue, ..}