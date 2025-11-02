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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html>
    Replicator {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-currentversion>
                currentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-kafkaclusters>
                kafkaClusters :: [KafkaClusterProperty],
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-replicationinfolist>
                replicationInfoList :: [ReplicationInfoProperty],
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-replicatorname>
                replicatorName :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-serviceexecutionrolearn>
                serviceExecutionRoleArn :: (Value Prelude.Text),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-replicator.html#cfn-msk-replicator-tags>
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
      {haddock_workaround_ = (), kafkaClusters = kafkaClusters,
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