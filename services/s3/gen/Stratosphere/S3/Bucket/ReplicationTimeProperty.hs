module Stratosphere.S3.Bucket.ReplicationTimeProperty (
        module Exports, ReplicationTimeProperty(..),
        mkReplicationTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationTimeValueProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationTimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html>
    ReplicationTimeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html#cfn-s3-bucket-replicationtime-status>
                             status :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html#cfn-s3-bucket-replicationtime-time>
                             time :: ReplicationTimeValueProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationTimeProperty ::
  Value Prelude.Text
  -> ReplicationTimeValueProperty -> ReplicationTimeProperty
mkReplicationTimeProperty status time
  = ReplicationTimeProperty
      {haddock_workaround_ = (), status = status, time = time}
instance ToResourceProperties ReplicationTimeProperty where
  toResourceProperties ReplicationTimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationTime",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status, "Time" JSON..= time]}
instance JSON.ToJSON ReplicationTimeProperty where
  toJSON ReplicationTimeProperty {..}
    = JSON.object ["Status" JSON..= status, "Time" JSON..= time]
instance Property "Status" ReplicationTimeProperty where
  type PropertyType "Status" ReplicationTimeProperty = Value Prelude.Text
  set newValue ReplicationTimeProperty {..}
    = ReplicationTimeProperty {status = newValue, ..}
instance Property "Time" ReplicationTimeProperty where
  type PropertyType "Time" ReplicationTimeProperty = ReplicationTimeValueProperty
  set newValue ReplicationTimeProperty {..}
    = ReplicationTimeProperty {time = newValue, ..}