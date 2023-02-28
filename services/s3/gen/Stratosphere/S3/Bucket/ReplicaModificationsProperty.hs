module Stratosphere.S3.Bucket.ReplicaModificationsProperty (
        ReplicaModificationsProperty(..), mkReplicaModificationsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicaModificationsProperty
  = ReplicaModificationsProperty {status :: (Value Prelude.Text)}
mkReplicaModificationsProperty ::
  Value Prelude.Text -> ReplicaModificationsProperty
mkReplicaModificationsProperty status
  = ReplicaModificationsProperty {status = status}
instance ToResourceProperties ReplicaModificationsProperty where
  toResourceProperties ReplicaModificationsProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicaModifications",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON ReplicaModificationsProperty where
  toJSON ReplicaModificationsProperty {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" ReplicaModificationsProperty where
  type PropertyType "Status" ReplicaModificationsProperty = Value Prelude.Text
  set newValue ReplicaModificationsProperty {}
    = ReplicaModificationsProperty {status = newValue, ..}