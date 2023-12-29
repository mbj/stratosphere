module Stratosphere.DAX.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DAX.Cluster.SSESpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Cluster
  = Cluster {availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
             clusterEndpointEncryptionType :: (Prelude.Maybe (Value Prelude.Text)),
             clusterName :: (Prelude.Maybe (Value Prelude.Text)),
             description :: (Prelude.Maybe (Value Prelude.Text)),
             iAMRoleARN :: (Value Prelude.Text),
             nodeType :: (Value Prelude.Text),
             notificationTopicARN :: (Prelude.Maybe (Value Prelude.Text)),
             parameterGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
             replicationFactor :: (Value Prelude.Integer),
             sSESpecification :: (Prelude.Maybe SSESpecificationProperty),
             securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
             subnetGroupName :: (Prelude.Maybe (Value Prelude.Text)),
             tags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Integer -> Cluster
mkCluster iAMRoleARN nodeType replicationFactor
  = Cluster
      {iAMRoleARN = iAMRoleARN, nodeType = nodeType,
       replicationFactor = replicationFactor,
       availabilityZones = Prelude.Nothing,
       clusterEndpointEncryptionType = Prelude.Nothing,
       clusterName = Prelude.Nothing, description = Prelude.Nothing,
       notificationTopicARN = Prelude.Nothing,
       parameterGroupName = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       sSESpecification = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       subnetGroupName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::DAX::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IAMRoleARN" JSON..= iAMRoleARN, "NodeType" JSON..= nodeType,
                            "ReplicationFactor" JSON..= replicationFactor]
                           (Prelude.catMaybes
                              [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                               (JSON..=) "ClusterEndpointEncryptionType"
                                 Prelude.<$> clusterEndpointEncryptionType,
                               (JSON..=) "ClusterName" Prelude.<$> clusterName,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "NotificationTopicARN" Prelude.<$> notificationTopicARN,
                               (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IAMRoleARN" JSON..= iAMRoleARN, "NodeType" JSON..= nodeType,
               "ReplicationFactor" JSON..= replicationFactor]
              (Prelude.catMaybes
                 [(JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                  (JSON..=) "ClusterEndpointEncryptionType"
                    Prelude.<$> clusterEndpointEncryptionType,
                  (JSON..=) "ClusterName" Prelude.<$> clusterName,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "NotificationTopicARN" Prelude.<$> notificationTopicARN,
                  (JSON..=) "ParameterGroupName" Prelude.<$> parameterGroupName,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "SSESpecification" Prelude.<$> sSESpecification,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "SubnetGroupName" Prelude.<$> subnetGroupName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AvailabilityZones" Cluster where
  type PropertyType "AvailabilityZones" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {availabilityZones = Prelude.pure newValue, ..}
instance Property "ClusterEndpointEncryptionType" Cluster where
  type PropertyType "ClusterEndpointEncryptionType" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster
        {clusterEndpointEncryptionType = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterName = Prelude.pure newValue, ..}
instance Property "Description" Cluster where
  type PropertyType "Description" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {description = Prelude.pure newValue, ..}
instance Property "IAMRoleARN" Cluster where
  type PropertyType "IAMRoleARN" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {iAMRoleARN = newValue, ..}
instance Property "NodeType" Cluster where
  type PropertyType "NodeType" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {nodeType = newValue, ..}
instance Property "NotificationTopicARN" Cluster where
  type PropertyType "NotificationTopicARN" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {notificationTopicARN = Prelude.pure newValue, ..}
instance Property "ParameterGroupName" Cluster where
  type PropertyType "ParameterGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {parameterGroupName = Prelude.pure newValue, ..}
instance Property "PreferredMaintenanceWindow" Cluster where
  type PropertyType "PreferredMaintenanceWindow" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "ReplicationFactor" Cluster where
  type PropertyType "ReplicationFactor" Cluster = Value Prelude.Integer
  set newValue Cluster {..}
    = Cluster {replicationFactor = newValue, ..}
instance Property "SSESpecification" Cluster where
  type PropertyType "SSESpecification" Cluster = SSESpecificationProperty
  set newValue Cluster {..}
    = Cluster {sSESpecification = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Cluster where
  type PropertyType "SecurityGroupIds" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetGroupName" Cluster where
  type PropertyType "SubnetGroupName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {subnetGroupName = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = JSON.Object
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}