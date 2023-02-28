module Stratosphere.NimbleStudio.StudioComponent.SharedFileSystemConfigurationProperty (
        SharedFileSystemConfigurationProperty(..),
        mkSharedFileSystemConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SharedFileSystemConfigurationProperty
  = SharedFileSystemConfigurationProperty {endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                           fileSystemId :: (Prelude.Maybe (Value Prelude.Text)),
                                           linuxMountPoint :: (Prelude.Maybe (Value Prelude.Text)),
                                           shareName :: (Prelude.Maybe (Value Prelude.Text)),
                                           windowsMountDrive :: (Prelude.Maybe (Value Prelude.Text))}
mkSharedFileSystemConfigurationProperty ::
  SharedFileSystemConfigurationProperty
mkSharedFileSystemConfigurationProperty
  = SharedFileSystemConfigurationProperty
      {endpoint = Prelude.Nothing, fileSystemId = Prelude.Nothing,
       linuxMountPoint = Prelude.Nothing, shareName = Prelude.Nothing,
       windowsMountDrive = Prelude.Nothing}
instance ToResourceProperties SharedFileSystemConfigurationProperty where
  toResourceProperties SharedFileSystemConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.SharedFileSystemConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Endpoint" Prelude.<$> endpoint,
                            (JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
                            (JSON..=) "LinuxMountPoint" Prelude.<$> linuxMountPoint,
                            (JSON..=) "ShareName" Prelude.<$> shareName,
                            (JSON..=) "WindowsMountDrive" Prelude.<$> windowsMountDrive])}
instance JSON.ToJSON SharedFileSystemConfigurationProperty where
  toJSON SharedFileSystemConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Endpoint" Prelude.<$> endpoint,
               (JSON..=) "FileSystemId" Prelude.<$> fileSystemId,
               (JSON..=) "LinuxMountPoint" Prelude.<$> linuxMountPoint,
               (JSON..=) "ShareName" Prelude.<$> shareName,
               (JSON..=) "WindowsMountDrive" Prelude.<$> windowsMountDrive]))
instance Property "Endpoint" SharedFileSystemConfigurationProperty where
  type PropertyType "Endpoint" SharedFileSystemConfigurationProperty = Value Prelude.Text
  set newValue SharedFileSystemConfigurationProperty {..}
    = SharedFileSystemConfigurationProperty
        {endpoint = Prelude.pure newValue, ..}
instance Property "FileSystemId" SharedFileSystemConfigurationProperty where
  type PropertyType "FileSystemId" SharedFileSystemConfigurationProperty = Value Prelude.Text
  set newValue SharedFileSystemConfigurationProperty {..}
    = SharedFileSystemConfigurationProperty
        {fileSystemId = Prelude.pure newValue, ..}
instance Property "LinuxMountPoint" SharedFileSystemConfigurationProperty where
  type PropertyType "LinuxMountPoint" SharedFileSystemConfigurationProperty = Value Prelude.Text
  set newValue SharedFileSystemConfigurationProperty {..}
    = SharedFileSystemConfigurationProperty
        {linuxMountPoint = Prelude.pure newValue, ..}
instance Property "ShareName" SharedFileSystemConfigurationProperty where
  type PropertyType "ShareName" SharedFileSystemConfigurationProperty = Value Prelude.Text
  set newValue SharedFileSystemConfigurationProperty {..}
    = SharedFileSystemConfigurationProperty
        {shareName = Prelude.pure newValue, ..}
instance Property "WindowsMountDrive" SharedFileSystemConfigurationProperty where
  type PropertyType "WindowsMountDrive" SharedFileSystemConfigurationProperty = Value Prelude.Text
  set newValue SharedFileSystemConfigurationProperty {..}
    = SharedFileSystemConfigurationProperty
        {windowsMountDrive = Prelude.pure newValue, ..}