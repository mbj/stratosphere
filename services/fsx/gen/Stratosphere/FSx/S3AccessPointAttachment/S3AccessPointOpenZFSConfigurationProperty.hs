module Stratosphere.FSx.S3AccessPointAttachment.S3AccessPointOpenZFSConfigurationProperty (
        module Exports, S3AccessPointOpenZFSConfigurationProperty(..),
        mkS3AccessPointOpenZFSConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.FSx.S3AccessPointAttachment.OpenZFSFileSystemIdentityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3AccessPointOpenZFSConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html>
    S3AccessPointOpenZFSConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html#cfn-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration-filesystemidentity>
                                               fileSystemIdentity :: OpenZFSFileSystemIdentityProperty,
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration.html#cfn-fsx-s3accesspointattachment-s3accesspointopenzfsconfiguration-volumeid>
                                               volumeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3AccessPointOpenZFSConfigurationProperty ::
  OpenZFSFileSystemIdentityProperty
  -> Value Prelude.Text -> S3AccessPointOpenZFSConfigurationProperty
mkS3AccessPointOpenZFSConfigurationProperty
  fileSystemIdentity
  volumeId
  = S3AccessPointOpenZFSConfigurationProperty
      {haddock_workaround_ = (), fileSystemIdentity = fileSystemIdentity,
       volumeId = volumeId}
instance ToResourceProperties S3AccessPointOpenZFSConfigurationProperty where
  toResourceProperties S3AccessPointOpenZFSConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::FSx::S3AccessPointAttachment.S3AccessPointOpenZFSConfiguration",
         supportsTags = Prelude.False,
         properties = ["FileSystemIdentity" JSON..= fileSystemIdentity,
                       "VolumeId" JSON..= volumeId]}
instance JSON.ToJSON S3AccessPointOpenZFSConfigurationProperty where
  toJSON S3AccessPointOpenZFSConfigurationProperty {..}
    = JSON.object
        ["FileSystemIdentity" JSON..= fileSystemIdentity,
         "VolumeId" JSON..= volumeId]
instance Property "FileSystemIdentity" S3AccessPointOpenZFSConfigurationProperty where
  type PropertyType "FileSystemIdentity" S3AccessPointOpenZFSConfigurationProperty = OpenZFSFileSystemIdentityProperty
  set newValue S3AccessPointOpenZFSConfigurationProperty {..}
    = S3AccessPointOpenZFSConfigurationProperty
        {fileSystemIdentity = newValue, ..}
instance Property "VolumeId" S3AccessPointOpenZFSConfigurationProperty where
  type PropertyType "VolumeId" S3AccessPointOpenZFSConfigurationProperty = Value Prelude.Text
  set newValue S3AccessPointOpenZFSConfigurationProperty {..}
    = S3AccessPointOpenZFSConfigurationProperty
        {volumeId = newValue, ..}