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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html>
    SharedFileSystemConfigurationProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html#cfn-nimblestudio-studiocomponent-sharedfilesystemconfiguration-endpoint>
                                           endpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html#cfn-nimblestudio-studiocomponent-sharedfilesystemconfiguration-filesystemid>
                                           fileSystemId :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html#cfn-nimblestudio-studiocomponent-sharedfilesystemconfiguration-linuxmountpoint>
                                           linuxMountPoint :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html#cfn-nimblestudio-studiocomponent-sharedfilesystemconfiguration-sharename>
                                           shareName :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-nimblestudio-studiocomponent-sharedfilesystemconfiguration.html#cfn-nimblestudio-studiocomponent-sharedfilesystemconfiguration-windowsmountdrive>
                                           windowsMountDrive :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSharedFileSystemConfigurationProperty ::
  SharedFileSystemConfigurationProperty
mkSharedFileSystemConfigurationProperty
  = SharedFileSystemConfigurationProperty
      {haddock_workaround_ = (), endpoint = Prelude.Nothing,
       fileSystemId = Prelude.Nothing, linuxMountPoint = Prelude.Nothing,
       shareName = Prelude.Nothing, windowsMountDrive = Prelude.Nothing}
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