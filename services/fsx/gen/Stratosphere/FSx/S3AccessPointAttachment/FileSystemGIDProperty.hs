module Stratosphere.FSx.S3AccessPointAttachment.FileSystemGIDProperty (
        FileSystemGIDProperty(..), mkFileSystemGIDProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FileSystemGIDProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-filesystemgid.html>
    FileSystemGIDProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-filesystemgid.html#cfn-fsx-s3accesspointattachment-filesystemgid-gid>
                           gid :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFileSystemGIDProperty ::
  Value Prelude.Double -> FileSystemGIDProperty
mkFileSystemGIDProperty gid
  = FileSystemGIDProperty {haddock_workaround_ = (), gid = gid}
instance ToResourceProperties FileSystemGIDProperty where
  toResourceProperties FileSystemGIDProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.FileSystemGID",
         supportsTags = Prelude.False, properties = ["Gid" JSON..= gid]}
instance JSON.ToJSON FileSystemGIDProperty where
  toJSON FileSystemGIDProperty {..} = JSON.object ["Gid" JSON..= gid]
instance Property "Gid" FileSystemGIDProperty where
  type PropertyType "Gid" FileSystemGIDProperty = Value Prelude.Double
  set newValue FileSystemGIDProperty {..}
    = FileSystemGIDProperty {gid = newValue, ..}