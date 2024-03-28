module Stratosphere.MSK.Replicator (
        module Exports, Replicator(..), mkReplicator
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Replicator.KafkaClusterProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Replicator.ReplicationInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Replicator
  = Replicator {currentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                description :: (Prelude.Maybe (Value Prelude.Text)),
                kafkaClusters :: [KafkaClusterProperty],
                replicationInfoList :: [ReplicationInfoProperty],
                replicatorName :: (Value Prelude.Text),
                serviceExecutionRoleArn :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicator ::
  [KafkaClusterProperty]
  -> [ReplicationInfoProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> Replicator
mkReplicator
  kafkaClusters
  replicationInfoList
  replicatorName
  serviceExecutionRoleArn
  = Replicator
      {kafkaClusters = kafkaClusters,
       replicationInfoList = replicationInfoList,
       replicatorName = replicatorName,
       serviceExecutionRoleArn = serviceExecutionRoleArn,
       currentVersion = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Replicator where
  toResourceProperties Replicator {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KafkaClusters" JSON..= kafkaClusters,
                            "ReplicationInfoList" JSON..= replicationInfoList,
                            "ReplicatorName" JSON..= replicatorName,
                            "ServiceExecutionRoleArn" JSON..= serviceExecutionRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Replicator where
  toJSON Replicator {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KafkaClusters" JSON..= kafkaClusters,
               "ReplicationInfoList" JSON..= replicationInfoList,
               "ReplicatorName" JSON..= replicatorName,
               "ServiceExecutionRoleArn" JSON..= serviceExecutionRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "CurrentVersion" Prelude.<$> currentVersion,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CurrentVersion" Replicator where
  type PropertyType "CurrentVersion" Replicator = Value Prelude.Text
  set newValue Replicator {..}
    = Replicator {currentVersion = Prelude.pure newValue, ..}
instance Property "Description" Replicator where
  type PropertyType "Description" Replicator = Value Prelude.Text
  set newValue Replicator {..}
    = Replicator {description = Prelude.pure newValue, ..}
instance Property "KafkaClusters" Replicator where
  type PropertyType "KafkaClusters" Replicator = [KafkaClusterProperty]
  set newValue Replicator {..}
    = Replicator {kafkaClusters = newValue, ..}
instance Property "ReplicationInfoList" Replicator where
  type PropertyType "ReplicationInfoList" Replicator = [ReplicationInfoProperty]
  set newValue Replicator {..}
    = Replicator {replicationInfoList = newValue, ..}
instance Property "ReplicatorName" Replicator where
  type PropertyType "ReplicatorName" Replicator = Value Prelude.Text
  set newValue Replicator {..}
    = Replicator {replicatorName = newValue, ..}
instance Property "ServiceExecutionRoleArn" Replicator where
  type PropertyType "ServiceExecutionRoleArn" Replicator = Value Prelude.Text
  set newValue Replicator {..}
    = Replicator {serviceExecutionRoleArn = newValue, ..}
instance Property "Tags" Replicator where
  type PropertyType "Tags" Replicator = [Tag]
  set newValue Replicator {..}
    = Replicator {tags = Prelude.pure newValue, ..}