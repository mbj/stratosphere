module Stratosphere.MSK.Replicator.ReplicationStartingPositionProperty (
        ReplicationStartingPositionProperty(..),
        mkReplicationStartingPositionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationStartingPositionProperty
  = ReplicationStartingPositionProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationStartingPositionProperty ::
  ReplicationStartingPositionProperty
mkReplicationStartingPositionProperty
  = ReplicationStartingPositionProperty {type' = Prelude.Nothing}
instance ToResourceProperties ReplicationStartingPositionProperty where
  toResourceProperties ReplicationStartingPositionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Replicator.ReplicationStartingPosition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON ReplicationStartingPositionProperty where
  toJSON ReplicationStartingPositionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" ReplicationStartingPositionProperty where
  type PropertyType "Type" ReplicationStartingPositionProperty = Value Prelude.Text
  set newValue ReplicationStartingPositionProperty {}
    = ReplicationStartingPositionProperty
        {type' = Prelude.pure newValue, ..}