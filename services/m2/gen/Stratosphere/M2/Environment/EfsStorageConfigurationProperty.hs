module Stratosphere.M2.Environment.EfsStorageConfigurationProperty (
        EfsStorageConfigurationProperty(..),
        mkEfsStorageConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EfsStorageConfigurationProperty
  = EfsStorageConfigurationProperty {fileSystemId :: (Value Prelude.Text),
                                     mountPoint :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEfsStorageConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EfsStorageConfigurationProperty
mkEfsStorageConfigurationProperty fileSystemId mountPoint
  = EfsStorageConfigurationProperty
      {fileSystemId = fileSystemId, mountPoint = mountPoint}
instance ToResourceProperties EfsStorageConfigurationProperty where
  toResourceProperties EfsStorageConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment.EfsStorageConfiguration",
         supportsTags = Prelude.False,
         properties = ["FileSystemId" JSON..= fileSystemId,
                       "MountPoint" JSON..= mountPoint]}
instance JSON.ToJSON EfsStorageConfigurationProperty where
  toJSON EfsStorageConfigurationProperty {..}
    = JSON.object
        ["FileSystemId" JSON..= fileSystemId,
         "MountPoint" JSON..= mountPoint]
instance Property "FileSystemId" EfsStorageConfigurationProperty where
  type PropertyType "FileSystemId" EfsStorageConfigurationProperty = Value Prelude.Text
  set newValue EfsStorageConfigurationProperty {..}
    = EfsStorageConfigurationProperty {fileSystemId = newValue, ..}
instance Property "MountPoint" EfsStorageConfigurationProperty where
  type PropertyType "MountPoint" EfsStorageConfigurationProperty = Value Prelude.Text
  set newValue EfsStorageConfigurationProperty {..}
    = EfsStorageConfigurationProperty {mountPoint = newValue, ..}