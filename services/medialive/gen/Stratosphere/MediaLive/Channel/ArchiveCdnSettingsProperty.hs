module Stratosphere.MediaLive.Channel.ArchiveCdnSettingsProperty (
        module Exports, ArchiveCdnSettingsProperty(..),
        mkArchiveCdnSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ArchiveS3SettingsProperty as Exports
import Stratosphere.ResourceProperties
data ArchiveCdnSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecdnsettings.html>
    ArchiveCdnSettingsProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-archivecdnsettings.html#cfn-medialive-channel-archivecdnsettings-archives3settings>
                                archiveS3Settings :: (Prelude.Maybe ArchiveS3SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveCdnSettingsProperty :: ArchiveCdnSettingsProperty
mkArchiveCdnSettingsProperty
  = ArchiveCdnSettingsProperty
      {haddock_workaround_ = (), archiveS3Settings = Prelude.Nothing}
instance ToResourceProperties ArchiveCdnSettingsProperty where
  toResourceProperties ArchiveCdnSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveCdnSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveS3Settings" Prelude.<$> archiveS3Settings])}
instance JSON.ToJSON ArchiveCdnSettingsProperty where
  toJSON ArchiveCdnSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveS3Settings" Prelude.<$> archiveS3Settings]))
instance Property "ArchiveS3Settings" ArchiveCdnSettingsProperty where
  type PropertyType "ArchiveS3Settings" ArchiveCdnSettingsProperty = ArchiveS3SettingsProperty
  set newValue ArchiveCdnSettingsProperty {..}
    = ArchiveCdnSettingsProperty
        {archiveS3Settings = Prelude.pure newValue, ..}