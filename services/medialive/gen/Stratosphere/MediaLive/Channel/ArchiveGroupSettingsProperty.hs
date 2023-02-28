module Stratosphere.MediaLive.Channel.ArchiveGroupSettingsProperty (
        module Exports, ArchiveGroupSettingsProperty(..),
        mkArchiveGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ArchiveCdnSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveGroupSettingsProperty
  = ArchiveGroupSettingsProperty {archiveCdnSettings :: (Prelude.Maybe ArchiveCdnSettingsProperty),
                                  destination :: (Prelude.Maybe OutputLocationRefProperty),
                                  rolloverInterval :: (Prelude.Maybe (Value Prelude.Integer))}
mkArchiveGroupSettingsProperty :: ArchiveGroupSettingsProperty
mkArchiveGroupSettingsProperty
  = ArchiveGroupSettingsProperty
      {archiveCdnSettings = Prelude.Nothing,
       destination = Prelude.Nothing, rolloverInterval = Prelude.Nothing}
instance ToResourceProperties ArchiveGroupSettingsProperty where
  toResourceProperties ArchiveGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveCdnSettings" Prelude.<$> archiveCdnSettings,
                            (JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "RolloverInterval" Prelude.<$> rolloverInterval])}
instance JSON.ToJSON ArchiveGroupSettingsProperty where
  toJSON ArchiveGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveCdnSettings" Prelude.<$> archiveCdnSettings,
               (JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "RolloverInterval" Prelude.<$> rolloverInterval]))
instance Property "ArchiveCdnSettings" ArchiveGroupSettingsProperty where
  type PropertyType "ArchiveCdnSettings" ArchiveGroupSettingsProperty = ArchiveCdnSettingsProperty
  set newValue ArchiveGroupSettingsProperty {..}
    = ArchiveGroupSettingsProperty
        {archiveCdnSettings = Prelude.pure newValue, ..}
instance Property "Destination" ArchiveGroupSettingsProperty where
  type PropertyType "Destination" ArchiveGroupSettingsProperty = OutputLocationRefProperty
  set newValue ArchiveGroupSettingsProperty {..}
    = ArchiveGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "RolloverInterval" ArchiveGroupSettingsProperty where
  type PropertyType "RolloverInterval" ArchiveGroupSettingsProperty = Value Prelude.Integer
  set newValue ArchiveGroupSettingsProperty {..}
    = ArchiveGroupSettingsProperty
        {rolloverInterval = Prelude.pure newValue, ..}