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
  = Cluster {aCLName :: (Value Prelude.Text),
             autoMinorVersionUpgrade :: (Prelude.Maybe (Value Prelude.Bool)),
             clusterEndpoint :: (Prelude.Maybe EndpointProperty),
             clusterName :: (Value Prelude.Text),
             dataTiering :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
             finalSnapshotName :: (Prelude.Maybe (Value Prelude.Text)),
             kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
             maintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
             nodeType :: (Value Prelude.Text),
             numReplicasPerShard :: (Prelude.Maybe (Value Prelude.Integer)),
             numShards :: (Prelude.Maybe (Value Prelude.Integer)),
             parameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             port :: (Prelude.Maybe (Value Prelude.Integer)),
             securityGroupIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
             snapshotArns :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
             snapshotName :: (Prelude.Maybe (Value Prelude.Text)),
             snapshotRetentionLimit :: (Prelude.Maybe (Value Prelude.Integer)),
             snapshotWindow :: (Prelude.Maybe (Value Prelude.Text)),
             snsTopicArn :: (Prelude.Maybe (Value Prelude.Text)),
             snsTopicStatus :: (Prelude.Maybe (Value Prelude.Text)),
             subnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             tLSEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
             tags :: (Prelude.Maybe [Tag])}
mkCluster ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Cluster
mkCluster aCLName clusterName nodeType
  = Cluster
      {aCLName = aCLName, clusterName = clusterName, nodeType = nodeType,
       autoMinorVersionUpgrade = Prelude.Nothing,
       clusterEndpoint = Prelude.Nothing, dataTiering = Prelude.Nothing,
       description = Prelude.Nothing, engineVersion = Prelude.Nothing,
       finalSnapshotName = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       maintenanceWindow = Prelude.Nothing,
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
        {awsType = "AWS::MemoryDB::Cluster",
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
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
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
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "FinalSnapshotName" Prelude.<$> finalSnapshotName,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MaintenanceWindow" Prelude.<$> maintenanceWindow,
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
  type PropertyType "SecurityGroupIds" Cluster = ValueList (Value Prelude.Text)
  set newValue Cluster {..}
    = Cluster {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SnapshotArns" Cluster where
  type PropertyType "SnapshotArns" Cluster = ValueList (Value Prelude.Text)
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