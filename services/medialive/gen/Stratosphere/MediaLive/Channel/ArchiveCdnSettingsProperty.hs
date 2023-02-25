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
  = ArchiveCdnSettingsProperty {archiveS3Settings :: (Prelude.Maybe ArchiveS3SettingsProperty)}
mkArchiveCdnSettingsProperty :: ArchiveCdnSettingsProperty
mkArchiveCdnSettingsProperty
  = ArchiveCdnSettingsProperty {archiveS3Settings = Prelude.Nothing}
instance ToResourceProperties ArchiveCdnSettingsProperty where
  toResourceProperties ArchiveCdnSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveCdnSettings",
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
  set newValue ArchiveCdnSettingsProperty {}
    = ArchiveCdnSettingsProperty
        {archiveS3Settings = Prelude.pure newValue, ..}