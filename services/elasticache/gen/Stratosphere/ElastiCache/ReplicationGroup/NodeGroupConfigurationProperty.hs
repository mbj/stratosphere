module Stratosphere.ElastiCache.ReplicationGroup.NodeGroupConfigurationProperty (
        NodeGroupConfigurationProperty(..),
        mkNodeGroupConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NodeGroupConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html>
    NodeGroupConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-nodegroupid>
                                    nodeGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-primaryavailabilityzone>
                                    primaryAvailabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicaavailabilityzones>
                                    replicaAvailabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount>
                                    replicaCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots>
                                    slots :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNodeGroupConfigurationProperty :: NodeGroupConfigurationProperty
mkNodeGroupConfigurationProperty
  = NodeGroupConfigurationProperty
      {nodeGroupId = Prelude.Nothing,
       primaryAvailabilityZone = Prelude.Nothing,
       replicaAvailabilityZones = Prelude.Nothing,
       replicaCount = Prelude.Nothing, slots = Prelude.Nothing}
instance ToResourceProperties NodeGroupConfigurationProperty where
  toResourceProperties NodeGroupConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::ReplicationGroup.NodeGroupConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NodeGroupId" Prelude.<$> nodeGroupId,
                            (JSON..=) "PrimaryAvailabilityZone"
                              Prelude.<$> primaryAvailabilityZone,
                            (JSON..=) "ReplicaAvailabilityZones"
                              Prelude.<$> replicaAvailabilityZones,
                            (JSON..=) "ReplicaCount" Prelude.<$> replicaCount,
                            (JSON..=) "Slots" Prelude.<$> slots])}
instance JSON.ToJSON NodeGroupConfigurationProperty where
  toJSON NodeGroupConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NodeGroupId" Prelude.<$> nodeGroupId,
               (JSON..=) "PrimaryAvailabilityZone"
                 Prelude.<$> primaryAvailabilityZone,
               (JSON..=) "ReplicaAvailabilityZones"
                 Prelude.<$> replicaAvailabilityZones,
               (JSON..=) "ReplicaCount" Prelude.<$> replicaCount,
               (JSON..=) "Slots" Prelude.<$> slots]))
instance Property "NodeGroupId" NodeGroupConfigurationProperty where
  type PropertyType "NodeGroupId" NodeGroupConfigurationProperty = Value Prelude.Text
  set newValue NodeGroupConfigurationProperty {..}
    = NodeGroupConfigurationProperty
        {nodeGroupId = Prelude.pure newValue, ..}
instance Property "PrimaryAvailabilityZone" NodeGroupConfigurationProperty where
  type PropertyType "PrimaryAvailabilityZone" NodeGroupConfigurationProperty = Value Prelude.Text
  set newValue NodeGroupConfigurationProperty {..}
    = NodeGroupConfigurationProperty
        {primaryAvailabilityZone = Prelude.pure newValue, ..}
instance Property "ReplicaAvailabilityZones" NodeGroupConfigurationProperty where
  type PropertyType "ReplicaAvailabilityZones" NodeGroupConfigurationProperty = ValueList Prelude.Text
  set newValue NodeGroupConfigurationProperty {..}
    = NodeGroupConfigurationProperty
        {replicaAvailabilityZones = Prelude.pure newValue, ..}
instance Property "ReplicaCount" NodeGroupConfigurationProperty where
  type PropertyType "ReplicaCount" NodeGroupConfigurationProperty = Value Prelude.Integer
  set newValue NodeGroupConfigurationProperty {..}
    = NodeGroupConfigurationProperty
        {replicaCount = Prelude.pure newValue, ..}
instance Property "Slots" NodeGroupConfigurationProperty where
  type PropertyType "Slots" NodeGroupConfigurationProperty = Value Prelude.Text
  set newValue NodeGroupConfigurationProperty {..}
    = NodeGroupConfigurationProperty
        {slots = Prelude.pure newValue, ..}