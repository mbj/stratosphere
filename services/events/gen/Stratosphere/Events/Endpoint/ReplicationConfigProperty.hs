module Stratosphere.Events.Endpoint.ReplicationConfigProperty (
        ReplicationConfigProperty(..), mkReplicationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationConfigProperty
  = ReplicationConfigProperty {state :: (Value Prelude.Text)}
mkReplicationConfigProperty ::
  Value Prelude.Text -> ReplicationConfigProperty
mkReplicationConfigProperty state
  = ReplicationConfigProperty {state = state}
instance ToResourceProperties ReplicationConfigProperty where
  toResourceProperties ReplicationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Endpoint.ReplicationConfig",
         supportsTags = Prelude.False, properties = ["State" JSON..= state]}
instance JSON.ToJSON ReplicationConfigProperty where
  toJSON ReplicationConfigProperty {..}
    = JSON.object ["State" JSON..= state]
instance Property "State" ReplicationConfigProperty where
  type PropertyType "State" ReplicationConfigProperty = Value Prelude.Text
  set newValue ReplicationConfigProperty {}
    = ReplicationConfigProperty {state = newValue, ..}