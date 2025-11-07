module Stratosphere.FSx.S3AccessPointAttachment.OpenZFSPosixFileSystemUserProperty (
        module Exports, OpenZFSPosixFileSystemUserProperty(..),
        mkOpenZFSPosixFileSystemUserProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.FileSystemGIDProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OpenZFSPosixFileSystemUserProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsposixfilesystemuser.html>
    OpenZFSPosixFileSystemUserProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsposixfilesystemuser.html#cfn-fsx-s3accesspointattachment-openzfsposixfilesystemuser-gid>
                                        gid :: (Value Prelude.Double),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsposixfilesystemuser.html#cfn-fsx-s3accesspointattachment-openzfsposixfilesystemuser-secondarygids>
                                        secondaryGids :: (Prelude.Maybe [FileSystemGIDProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-openzfsposixfilesystemuser.html#cfn-fsx-s3accesspointattachment-openzfsposixfilesystemuser-uid>
                                        uid :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenZFSPosixFileSystemUserProperty ::
  Value Prelude.Double
  -> Value Prelude.Double -> OpenZFSPosixFileSystemUserProperty
mkOpenZFSPosixFileSystemUserProperty gid uid
  = OpenZFSPosixFileSystemUserProperty
      {haddock_workaround_ = (), gid = gid, uid = uid,
       secondaryGids = Prelude.Nothing}
instance ToResourceProperties OpenZFSPosixFileSystemUserProperty where
  toResourceProperties OpenZFSPosixFileSystemUserProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.OpenZFSPosixFileSystemUser",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Gid" JSON..= gid, "Uid" JSON..= uid]
                           (Prelude.catMaybes
                              [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids]))}
instance JSON.ToJSON OpenZFSPosixFileSystemUserProperty where
  toJSON OpenZFSPosixFileSystemUserProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Gid" JSON..= gid, "Uid" JSON..= uid]
              (Prelude.catMaybes
                 [(JSON..=) "SecondaryGids" Prelude.<$> secondaryGids])))
instance Property "Gid" OpenZFSPosixFileSystemUserProperty where
  type PropertyType "Gid" OpenZFSPosixFileSystemUserProperty = Value Prelude.Double
  set newValue OpenZFSPosixFileSystemUserProperty {..}
    = OpenZFSPosixFileSystemUserProperty {gid = newValue, ..}
instance Property "SecondaryGids" OpenZFSPosixFileSystemUserProperty where
  type PropertyType "SecondaryGids" OpenZFSPosixFileSystemUserProperty = [FileSystemGIDProperty]
  set newValue OpenZFSPosixFileSystemUserProperty {..}
    = OpenZFSPosixFileSystemUserProperty
        {secondaryGids = Prelude.pure newValue, ..}
instance Property "Uid" OpenZFSPosixFileSystemUserProperty where
  type PropertyType "Uid" OpenZFSPosixFileSystemUserProperty = Value Prelude.Double
  set newValue OpenZFSPosixFileSystemUserProperty {..}
    = OpenZFSPosixFileSystemUserProperty {uid = newValue, ..}