module Stratosphere.MSK.Replicator.TopicReplicationProperty (
        module Exports, TopicReplicationProperty(..),
        mkTopicReplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Replicator.ReplicationStartingPositionProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Replicator.ReplicationTopicNameConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TopicReplicationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html>
    TopicReplicationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-copyaccesscontrollistsfortopics>
                              copyAccessControlListsForTopics :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-copytopicconfigurations>
                              copyTopicConfigurations :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-detectandcopynewtopics>
                              detectAndCopyNewTopics :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-startingposition>
                              startingPosition :: (Prelude.Maybe ReplicationStartingPositionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-topicnameconfiguration>
                              topicNameConfiguration :: (Prelude.Maybe ReplicationTopicNameConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-topicstoexclude>
                              topicsToExclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-topicreplication.html#cfn-msk-replicator-topicreplication-topicstoreplicate>
                              topicsToReplicate :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTopicReplicationProperty ::
  ValueList Prelude.Text -> TopicReplicationProperty
mkTopicReplicationProperty topicsToReplicate
  = TopicReplicationProperty
      {haddock_workaround_ = (), topicsToReplicate = topicsToReplicate,
       copyAccessControlListsForTopics = Prelude.Nothing,
       copyTopicConfigurations = Prelude.Nothing,
       detectAndCopyNewTopics = Prelude.Nothing,
       startingPosition = Prelude.Nothing,
       topicNameConfiguration = Prelude.Nothing,
       topicsToExclude = Prelude.Nothing}
instance ToResourceProperties TopicReplicationProperty where
  toResourceProperties TopicReplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.TopicReplication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TopicsToReplicate" JSON..= topicsToReplicate]
                           (Prelude.catMaybes
                              [(JSON..=) "CopyAccessControlListsForTopics"
                                 Prelude.<$> copyAccessControlListsForTopics,
                               (JSON..=) "CopyTopicConfigurations"
                                 Prelude.<$> copyTopicConfigurations,
                               (JSON..=) "DetectAndCopyNewTopics"
                                 Prelude.<$> detectAndCopyNewTopics,
                               (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                               (JSON..=) "TopicNameConfiguration"
                                 Prelude.<$> topicNameConfiguration,
                               (JSON..=) "TopicsToExclude" Prelude.<$> topicsToExclude]))}
instance JSON.ToJSON TopicReplicationProperty where
  toJSON TopicReplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TopicsToReplicate" JSON..= topicsToReplicate]
              (Prelude.catMaybes
                 [(JSON..=) "CopyAccessControlListsForTopics"
                    Prelude.<$> copyAccessControlListsForTopics,
                  (JSON..=) "CopyTopicConfigurations"
                    Prelude.<$> copyTopicConfigurations,
                  (JSON..=) "DetectAndCopyNewTopics"
                    Prelude.<$> detectAndCopyNewTopics,
                  (JSON..=) "StartingPosition" Prelude.<$> startingPosition,
                  (JSON..=) "TopicNameConfiguration"
                    Prelude.<$> topicNameConfiguration,
                  (JSON..=) "TopicsToExclude" Prelude.<$> topicsToExclude])))
instance Property "CopyAccessControlListsForTopics" TopicReplicationProperty where
  type PropertyType "CopyAccessControlListsForTopics" TopicReplicationProperty = Value Prelude.Bool
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {copyAccessControlListsForTopics = Prelude.pure newValue, ..}
instance Property "CopyTopicConfigurations" TopicReplicationProperty where
  type PropertyType "CopyTopicConfigurations" TopicReplicationProperty = Value Prelude.Bool
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {copyTopicConfigurations = Prelude.pure newValue, ..}
instance Property "DetectAndCopyNewTopics" TopicReplicationProperty where
  type PropertyType "DetectAndCopyNewTopics" TopicReplicationProperty = Value Prelude.Bool
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {detectAndCopyNewTopics = Prelude.pure newValue, ..}
instance Property "StartingPosition" TopicReplicationProperty where
  type PropertyType "StartingPosition" TopicReplicationProperty = ReplicationStartingPositionProperty
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {startingPosition = Prelude.pure newValue, ..}
instance Property "TopicNameConfiguration" TopicReplicationProperty where
  type PropertyType "TopicNameConfiguration" TopicReplicationProperty = ReplicationTopicNameConfigurationProperty
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {topicNameConfiguration = Prelude.pure newValue, ..}
instance Property "TopicsToExclude" TopicReplicationProperty where
  type PropertyType "TopicsToExclude" TopicReplicationProperty = ValueList Prelude.Text
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty
        {topicsToExclude = Prelude.pure newValue, ..}
instance Property "TopicsToReplicate" TopicReplicationProperty where
  type PropertyType "TopicsToReplicate" TopicReplicationProperty = ValueList Prelude.Text
  set newValue TopicReplicationProperty {..}
    = TopicReplicationProperty {topicsToReplicate = newValue, ..}