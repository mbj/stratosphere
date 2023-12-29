module Stratosphere.M2.Environment.FsxStorageConfigurationProperty (
        FsxStorageConfigurationProperty(..),
        mkFsxStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FsxStorageConfigurationProperty
  = FsxStorageConfigurationProperty {fileSystemId :: (Value Prelude.Text),
                                     mountPoint :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFsxStorageConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> FsxStorageConfigurationProperty
mkFsxStorageConfigurationProperty fileSystemId mountPoint
  = FsxStorageConfigurationProperty
      {fileSystemId = fileSystemId, mountPoint = mountPoint}
instance ToResourceProperties FsxStorageConfigurationProperty where
  toResourceProperties FsxStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment.FsxStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["FileSystemId" JSON..= fileSystemId,
                       "MountPoint" JSON..= mountPoint]}
instance JSON.ToJSON FsxStorageConfigurationProperty where
  toJSON FsxStorageConfigurationProperty {..}
    = JSON.object
        ["FileSystemId" JSON..= fileSystemId,
         "MountPoint" JSON..= mountPoint]
instance Property "FileSystemId" FsxStorageConfigurationProperty where
  type PropertyType "FileSystemId" FsxStorageConfigurationProperty = Value Prelude.Text
  set newValue FsxStorageConfigurationProperty {..}
    = FsxStorageConfigurationProperty {fileSystemId = newValue, ..}
instance Property "MountPoint" FsxStorageConfigurationProperty where
  type PropertyType "MountPoint" FsxStorageConfigurationProperty = Value Prelude.Text
  set newValue FsxStorageConfigurationProperty {..}
    = FsxStorageConfigurationProperty {mountPoint = newValue, ..}