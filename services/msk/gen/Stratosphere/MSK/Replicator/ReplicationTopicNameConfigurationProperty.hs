module Stratosphere.MSK.Replicator.ReplicationTopicNameConfigurationProperty (
        ReplicationTopicNameConfigurationProperty(..),
        mkReplicationTopicNameConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationTopicNameConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-replicationtopicnameconfiguration.html>
    ReplicationTopicNameConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-replicator-replicationtopicnameconfiguration.html#cfn-msk-replicator-replicationtopicnameconfiguration-type>
                                               type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationTopicNameConfigurationProperty ::
  ReplicationTopicNameConfigurationProperty
mkReplicationTopicNameConfigurationProperty
  = ReplicationTopicNameConfigurationProperty
      {haddock_workaround_ = (), type' = Prelude.Nothing}
instance ToResourceProperties ReplicationTopicNameConfigurationProperty where
  toResourceProperties ReplicationTopicNameConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.ReplicationTopicNameConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ReplicationTopicNameConfigurationProperty where
  toJSON ReplicationTopicNameConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" ReplicationTopicNameConfigurationProperty where
  type PropertyType "Type" ReplicationTopicNameConfigurationProperty = Value Prelude.Text
  set newValue ReplicationTopicNameConfigurationProperty {..}
    = ReplicationTopicNameConfigurationProperty
        {type' = Prelude.pure newValue, ..}