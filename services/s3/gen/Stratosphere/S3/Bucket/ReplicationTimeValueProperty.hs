module Stratosphere.S3.Bucket.ReplicationTimeValueProperty (
        ReplicationTimeValueProperty(..), mkReplicationTimeValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationTimeValueProperty
  = ReplicationTimeValueProperty {minutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationTimeValueProperty ::
  Value Prelude.Integer -> ReplicationTimeValueProperty
mkReplicationTimeValueProperty minutes
  = ReplicationTimeValueProperty {minutes = minutes}
instance ToResourceProperties ReplicationTimeValueProperty where
  toResourceProperties ReplicationTimeValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationTimeValue",
         supportsTags = Prelude.False,
         properties = ["Minutes" JSON..= minutes]}
instance JSON.ToJSON ReplicationTimeValueProperty where
  toJSON ReplicationTimeValueProperty {..}
    = JSON.object ["Minutes" JSON..= minutes]
instance Property "Minutes" ReplicationTimeValueProperty where
  type PropertyType "Minutes" ReplicationTimeValueProperty = Value Prelude.Integer
  set newValue ReplicationTimeValueProperty {}
    = ReplicationTimeValueProperty {minutes = newValue, ..}