module Stratosphere.S3.Bucket.DeleteMarkerReplicationProperty (
        DeleteMarkerReplicationProperty(..),
        mkDeleteMarkerReplicationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeleteMarkerReplicationProperty
  = DeleteMarkerReplicationProperty {status :: (Prelude.Maybe (Value Prelude.Text))}
mkDeleteMarkerReplicationProperty ::
  DeleteMarkerReplicationProperty
mkDeleteMarkerReplicationProperty
  = DeleteMarkerReplicationProperty {status = Prelude.Nothing}
instance ToResourceProperties DeleteMarkerReplicationProperty where
  toResourceProperties DeleteMarkerReplicationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.DeleteMarkerReplication",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON DeleteMarkerReplicationProperty where
  toJSON DeleteMarkerReplicationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Status" Prelude.<$> status]))
instance Property "Status" DeleteMarkerReplicationProperty where
  type PropertyType "Status" DeleteMarkerReplicationProperty = Value Prelude.Text
  set newValue DeleteMarkerReplicationProperty {}
    = DeleteMarkerReplicationProperty
        {status = Prelude.pure newValue, ..}