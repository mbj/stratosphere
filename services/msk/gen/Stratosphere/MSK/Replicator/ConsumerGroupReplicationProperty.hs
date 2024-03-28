module Stratosphere.MSK.Replicator.ConsumerGroupReplicationProperty (
        ConsumerGroupReplicationProperty(..),
        mkConsumerGroupReplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConsumerGroupReplicationProperty
  = ConsumerGroupReplicationProperty {consumerGroupsToExclude :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      consumerGroupsToReplicate :: (ValueList Prelude.Text),
                                      detectAndCopyNewConsumerGroups :: (Prelude.Maybe (Value Prelude.Bool)),
                                      synchroniseConsumerGroupOffsets :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConsumerGroupReplicationProperty ::
  ValueList Prelude.Text -> ConsumerGroupReplicationProperty
mkConsumerGroupReplicationProperty consumerGroupsToReplicate
  = ConsumerGroupReplicationProperty
      {consumerGroupsToReplicate = consumerGroupsToReplicate,
       consumerGroupsToExclude = Prelude.Nothing,
       detectAndCopyNewConsumerGroups = Prelude.Nothing,
       synchroniseConsumerGroupOffsets = Prelude.Nothing}
instance ToResourceProperties ConsumerGroupReplicationProperty where
  toResourceProperties ConsumerGroupReplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.ConsumerGroupReplication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConsumerGroupsToReplicate" JSON..= consumerGroupsToReplicate]
                           (Prelude.catMaybes
                              [(JSON..=) "ConsumerGroupsToExclude"
                                 Prelude.<$> consumerGroupsToExclude,
                               (JSON..=) "DetectAndCopyNewConsumerGroups"
                                 Prelude.<$> detectAndCopyNewConsumerGroups,
                               (JSON..=) "SynchroniseConsumerGroupOffsets"
                                 Prelude.<$> synchroniseConsumerGroupOffsets]))}
instance JSON.ToJSON ConsumerGroupReplicationProperty where
  toJSON ConsumerGroupReplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConsumerGroupsToReplicate" JSON..= consumerGroupsToReplicate]
              (Prelude.catMaybes
                 [(JSON..=) "ConsumerGroupsToExclude"
                    Prelude.<$> consumerGroupsToExclude,
                  (JSON..=) "DetectAndCopyNewConsumerGroups"
                    Prelude.<$> detectAndCopyNewConsumerGroups,
                  (JSON..=) "SynchroniseConsumerGroupOffsets"
                    Prelude.<$> synchroniseConsumerGroupOffsets])))
instance Property "ConsumerGroupsToExclude" ConsumerGroupReplicationProperty where
  type PropertyType "ConsumerGroupsToExclude" ConsumerGroupReplicationProperty = ValueList Prelude.Text
  set newValue ConsumerGroupReplicationProperty {..}
    = ConsumerGroupReplicationProperty
        {consumerGroupsToExclude = Prelude.pure newValue, ..}
instance Property "ConsumerGroupsToReplicate" ConsumerGroupReplicationProperty where
  type PropertyType "ConsumerGroupsToReplicate" ConsumerGroupReplicationProperty = ValueList Prelude.Text
  set newValue ConsumerGroupReplicationProperty {..}
    = ConsumerGroupReplicationProperty
        {consumerGroupsToReplicate = newValue, ..}
instance Property "DetectAndCopyNewConsumerGroups" ConsumerGroupReplicationProperty where
  type PropertyType "DetectAndCopyNewConsumerGroups" ConsumerGroupReplicationProperty = Value Prelude.Bool
  set newValue ConsumerGroupReplicationProperty {..}
    = ConsumerGroupReplicationProperty
        {detectAndCopyNewConsumerGroups = Prelude.pure newValue, ..}
instance Property "SynchroniseConsumerGroupOffsets" ConsumerGroupReplicationProperty where
  type PropertyType "SynchroniseConsumerGroupOffsets" ConsumerGroupReplicationProperty = Value Prelude.Bool
  set newValue ConsumerGroupReplicationProperty {..}
    = ConsumerGroupReplicationProperty
        {synchroniseConsumerGroupOffsets = Prelude.pure newValue, ..}