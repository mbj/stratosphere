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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-deletemarkerreplication.html>
    DeleteMarkerReplicationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-deletemarkerreplication.html#cfn-s3-bucket-deletemarkerreplication-status>
                                     status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeleteMarkerReplicationProperty ::
  DeleteMarkerReplicationProperty
mkDeleteMarkerReplicationProperty
  = DeleteMarkerReplicationProperty
      {haddock_workaround_ = (), status = Prelude.Nothing}
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
  set newValue DeleteMarkerReplicationProperty {..}
    = DeleteMarkerReplicationProperty
        {status = Prelude.pure newValue, ..}