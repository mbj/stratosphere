module Stratosphere.MSK.Replicator.ReplicationInfoProperty (
        module Exports, ReplicationInfoProperty(..),
        mkReplicationInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Replicator.ConsumerGroupReplicationProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Replicator.TopicReplicationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationInfoProperty
  = ReplicationInfoProperty {consumerGroupReplication :: ConsumerGroupReplicationProperty,
                             sourceKafkaClusterArn :: (Value Prelude.Text),
                             targetCompressionType :: (Value Prelude.Text),
                             targetKafkaClusterArn :: (Value Prelude.Text),
                             topicReplication :: TopicReplicationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationInfoProperty ::
  ConsumerGroupReplicationProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> TopicReplicationProperty -> ReplicationInfoProperty
mkReplicationInfoProperty
  consumerGroupReplication
  sourceKafkaClusterArn
  targetCompressionType
  targetKafkaClusterArn
  topicReplication
  = ReplicationInfoProperty
      {consumerGroupReplication = consumerGroupReplication,
       sourceKafkaClusterArn = sourceKafkaClusterArn,
       targetCompressionType = targetCompressionType,
       targetKafkaClusterArn = targetKafkaClusterArn,
       topicReplication = topicReplication}
instance ToResourceProperties ReplicationInfoProperty where
  toResourceProperties ReplicationInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.ReplicationInfo",
         supportsTags = Prelude.False,
         properties = ["ConsumerGroupReplication"
                         JSON..= consumerGroupReplication,
                       "SourceKafkaClusterArn" JSON..= sourceKafkaClusterArn,
                       "TargetCompressionType" JSON..= targetCompressionType,
                       "TargetKafkaClusterArn" JSON..= targetKafkaClusterArn,
                       "TopicReplication" JSON..= topicReplication]}
instance JSON.ToJSON ReplicationInfoProperty where
  toJSON ReplicationInfoProperty {..}
    = JSON.object
        ["ConsumerGroupReplication" JSON..= consumerGroupReplication,
         "SourceKafkaClusterArn" JSON..= sourceKafkaClusterArn,
         "TargetCompressionType" JSON..= targetCompressionType,
         "TargetKafkaClusterArn" JSON..= targetKafkaClusterArn,
         "TopicReplication" JSON..= topicReplication]
instance Property "ConsumerGroupReplication" ReplicationInfoProperty where
  type PropertyType "ConsumerGroupReplication" ReplicationInfoProperty = ConsumerGroupReplicationProperty
  set newValue ReplicationInfoProperty {..}
    = ReplicationInfoProperty {consumerGroupReplication = newValue, ..}
instance Property "SourceKafkaClusterArn" ReplicationInfoProperty where
  type PropertyType "SourceKafkaClusterArn" ReplicationInfoProperty = Value Prelude.Text
  set newValue ReplicationInfoProperty {..}
    = ReplicationInfoProperty {sourceKafkaClusterArn = newValue, ..}
instance Property "TargetCompressionType" ReplicationInfoProperty where
  type PropertyType "TargetCompressionType" ReplicationInfoProperty = Value Prelude.Text
  set newValue ReplicationInfoProperty {..}
    = ReplicationInfoProperty {targetCompressionType = newValue, ..}
instance Property "TargetKafkaClusterArn" ReplicationInfoProperty where
  type PropertyType "TargetKafkaClusterArn" ReplicationInfoProperty = Value Prelude.Text
  set newValue ReplicationInfoProperty {..}
    = ReplicationInfoProperty {targetKafkaClusterArn = newValue, ..}
instance Property "TopicReplication" ReplicationInfoProperty where
  type PropertyType "TopicReplication" ReplicationInfoProperty = TopicReplicationProperty
  set newValue ReplicationInfoProperty {..}
    = ReplicationInfoProperty {topicReplication = newValue, ..}