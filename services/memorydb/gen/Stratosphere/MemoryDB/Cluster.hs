module Stratosphere.MemoryDB.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MemoryDB.Cluster.EndpointProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-aclname>
             aCLName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-autominorversionupgrade>
             autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-clusterendpoint>
             clusterEndpoint :: (Prelude.Maybe EndpointProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-clustername>
             clusterName :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-datatiering>
             dataTiering :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-engine>
             engine :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-engineversion>
             engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-finalsnapshotname>
             finalSnapshotName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-kmskeyid>
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-maintenancewindow>
             maintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-multiregionclustername>
             multiRegionClusterName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-nodetype>
             nodeType :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-numreplicaspershard>
             numReplicasPerShard :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-numshards>
             numShards :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-parametergroupname>
             parameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-port>
             port :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-securitygroupids>
             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snapshotarns>
             snapshotArns :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snapshotname>
             snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snapshotretentionlimit>
             snapshotRetentionLimit :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snapshotwindow>
             snapshotWindow :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snstopicarn>
             snsTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-snstopicstatus>
             snsTopicStatus :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-subnetgroupname>
             subnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-tlsenabled>
             tLSEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-memorydb-cluster.html#cfn-memorydb-cluster-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Cluster
mkCluster aCLName clusterName nodeType
  = Cluster
      {haddock_workaround_ = (), aCLName = aCLName,
       clusterName = clusterName, nodeType = nodeType,
       autoMinorVersionUpgrade = Prelude.Nothing,
       clusterEndpoint = Prelude.Nothing, dataTiering = Prelude.Nothing,
       description = Prelude.Nothing, engine = Prelude.Nothing,
       engineVersion = Prelude.Nothing,
       finalSnapshotName = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       maintenanceWindow = Prelude.Nothing,
       multiRegionClusterName = Prelude.Nothing,
       numReplicasPerShard = Prelude.Nothing, numShards = Prelude.Nothing,
       parameterGroupName = Prelude.Nothing, port = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, snapshotArns = Prelude.Nothing,
       snapshotName = Prelude.Nothing,
       snapshotRetentionLimit = Prelude.Nothing,
       snapshotWindow = Prelude.Nothing, snsTopicArn = Prelude.Nothing,
       snsTopicStatus = Prelude.Nothing,
       subnetGroupName = Prelude.Nothing, tLSEnabled = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::MemoryDB::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ACLName" JSON..= aCLName, "ClusterName" JSON..= clusterName,
                            "NodeType" JSON..= nodeType]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoMinorVersionUpgrade"
                                 Prelude.<$> autoMinorVersionUpgrade,
                               (JSON..=) "ClusterEndpoint" Prelude.<$> clusterEndpoint,
                               (JSON..=) "DataTiering" Prelude.<$> dataTiering,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                               (JSON..=) "MultiRegionClusterName"
                                 Prelude.<$> multiRegionClusterName,
                               (JSON..=) "NumReplicasPerShard" Prelude.<$> numReplicasPerShard,
                               (JSON..=) "NumShards" Prelude.<$> numShards,
                               (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                               (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                               (JSON..=) "SnapshotRetentionLimit"
                                 Prelude.<$> snapshotRetentionLimit,
                               (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                               (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                               (JSON..=) "SnsTopicStatus" Prelude.<$> snsTopicStatus,
                               (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName,
                               (JSON..=) "TLSEnabled" Prelude.<$> tLSEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ACLName" JSON..= aCLName, "ClusterName" JSON..= clusterName,
               "NodeType" JSON..= nodeType]
              (Prelude.catMaybes
                 [(JSON..=) "AutoMinorVersionUpgrade"
                    Prelude.<$> autoMinorVersionUpgrade,
                  (JSON..=) "ClusterEndpoint" Prelude.<$> clusterEndpoint,
                  (JSON..=) "DataTiering" Prelude.<$> dataTiering,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
                  (JSON..=) "MultiRegionClusterName"
                    Prelude.<$> multiRegionClusterName,
                  (JSON..=) "NumReplicasPerShard" Prelude.<$> numReplicasPerShard,
                  (JSON..=) "NumShards" Prelude.<$> numShards,
                  (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SnapshotArns" Prelude.<$> snapshotArns,
                  (JSON..=) "SnapshotName" Prelude.<$> snapshotName,
                  (JSON..=) "SnapshotRetentionLimit"
                    Prelude.<$> snapshotRetentionLimit,
                  (JSON..=) "SnapshotWindow" Prelude.<$> snapshotWindow,
                  (JSON..=) "SnsTopicArn" Prelude.<$> snsTopicArn,
                  (JSON..=) "SnsTopicStatus" Prelude.<$> snsTopicStatus,
                  (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName,
                  (JSON..=) "TLSEnabled" Prelude.<$> tLSEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ACLName" Cluster where
  type PropertyType "ACLName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {aCLName = newValue, ..}
instance Property "AutoMinorVersionUpgrade" Cluster where
  type PropertyType "AutoMinorVersionUpgrade" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {autoMinorVersionUpgrade = Prelude.pure newValue, ..}
instance Property "ClusterEndpoint" Cluster where
  type PropertyType "ClusterEndpoint" Cluster = EndpointProperty
  set newValue Cluster {..}
    = Cluster {clusterEndpoint = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {clusterName = newValue, ..}
instance Property "DataTiering" Cluster where
  type PropertyType "DataTiering" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {dataTiering = Prelude.pure newValue, ..}
instance Property "Description" Cluster where
  type PropertyType "Description" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {description = Prelude.pure newValue, ..}
instance Property "Engine" Cluster where
  type PropertyType "Engine" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {engine = Prelude.pure newValue, ..}
instance Property "EngineVersion" Cluster where
  type PropertyType "EngineVersion" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {engineVersion = Prelude.pure newValue, ..}
instance Property "FinalSnapshotName" Cluster where
  type PropertyType "FinalSnapshotName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {finalSnapshotName = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Cluster where
  type PropertyType "KmsKeyId" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MaintenanceWindow" Cluster where
  type PropertyType "MaintenanceWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {maintenanceWindow = Prelude.pure newValue, ..}
instance Property "MultiRegionClusterName" Cluster where
  type PropertyType "MultiRegionClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {multiRegionClusterName = Prelude.pure newValue, ..}
instance Property "NodeType" Cluster where
  type PropertyType "NodeType" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {nodeType = newValue, ..}
instance Property "NumReplicasPerShard" Cluster where
  type PropertyType "NumReplicasPerShard" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {numReplicasPerShard = Prelude.pure newValue, ..}
instance Property "NumShards" Cluster where
  type PropertyType "NumShards" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {numShards = Prelude.pure newValue, ..}
instance Property "ParameterGroupName" Cluster where
  type PropertyType "ParameterGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {parameterGroupName = Prelude.pure newValue, ..}
instance Property "Port" Cluster where
  type PropertyType "Port" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {port = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Cluster where
  type PropertyType "SecurityGroupIds" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SnapshotArns" Cluster where
  type PropertyType "SnapshotArns" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotArns = Prelude.pure newValue, ..}
instance Property "SnapshotName" Cluster where
  type PropertyType "SnapshotName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotName = Prelude.pure newValue, ..}
instance Property "SnapshotRetentionLimit" Cluster where
  type PropertyType "SnapshotRetentionLimit" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {snapshotRetentionLimit = Prelude.pure newValue, ..}
instance Property "SnapshotWindow" Cluster where
  type PropertyType "SnapshotWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snapshotWindow = Prelude.pure newValue, ..}
instance Property "SnsTopicArn" Cluster where
  type PropertyType "SnsTopicArn" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snsTopicArn = Prelude.pure newValue, ..}
instance Property "SnsTopicStatus" Cluster where
  type PropertyType "SnsTopicStatus" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {snsTopicStatus = Prelude.pure newValue, ..}
instance Property "SubnetGroupName" Cluster where
  type PropertyType "SubnetGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {subnetGroupName = Prelude.pure newValue, ..}
instance Property "TLSEnabled" Cluster where
  type PropertyType "TLSEnabled" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {tLSEnabled = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}