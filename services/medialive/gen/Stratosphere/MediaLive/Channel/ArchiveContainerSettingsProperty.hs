module Stratosphere.MediaLive.Channel.ArchiveContainerSettingsProperty (
        module Exports, ArchiveContainerSettingsProperty(..),
        mkArchiveContainerSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.M2tsSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.RawSettingsProperty as Exports
import Stratosphere.ResourceProperties
data ArchiveContainerSettingsProperty
  = ArchiveContainerSettingsProperty {m2tsSettings :: (Prelude.Maybe M2tsSettingsProperty),
                                      rawSettings :: (Prelude.Maybe RawSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveContainerSettingsProperty ::
  ArchiveContainerSettingsProperty
mkArchiveContainerSettingsProperty
  = ArchiveContainerSettingsProperty
      {m2tsSettings = Prelude.Nothing, rawSettings = Prelude.Nothing}
instance ToResourceProperties ArchiveContainerSettingsProperty where
  toResourceProperties ArchiveContainerSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveContainerSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "M2tsSettings" Prelude.<$> m2tsSettings,
                            (JSON..=) "RawSettings" Prelude.<$> rawSettings])}
instance JSON.ToJSON ArchiveContainerSettingsProperty where
  toJSON ArchiveContainerSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "M2tsSettings" Prelude.<$> m2tsSettings,
               (JSON..=) "RawSettings" Prelude.<$> rawSettings]))
instance Property "M2tsSettings" ArchiveContainerSettingsProperty where
  type PropertyType "M2tsSettings" ArchiveContainerSettingsProperty = M2tsSettingsProperty
  set newValue ArchiveContainerSettingsProperty {..}
    = ArchiveContainerSettingsProperty
        {m2tsSettings = Prelude.pure newValue, ..}
instance Property "RawSettings" ArchiveContainerSettingsProperty where
  type PropertyType "RawSettings" ArchiveContainerSettingsProperty = RawSettingsProperty
  set newValue ArchiveContainerSettingsProperty {..}
    = ArchiveContainerSettingsProperty
        {rawSettings = Prelude.pure newValue, ..}