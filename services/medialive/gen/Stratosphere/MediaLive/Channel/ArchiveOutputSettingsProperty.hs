module Stratosphere.MediaLive.Channel.ArchiveOutputSettingsProperty (
        module Exports, ArchiveOutputSettingsProperty(..),
        mkArchiveOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ArchiveContainerSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ArchiveOutputSettingsProperty
  = ArchiveOutputSettingsProperty {containerSettings :: (Prelude.Maybe ArchiveContainerSettingsProperty),
                                   extension :: (Prelude.Maybe (Value Prelude.Text)),
                                   nameModifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkArchiveOutputSettingsProperty :: ArchiveOutputSettingsProperty
mkArchiveOutputSettingsProperty
  = ArchiveOutputSettingsProperty
      {containerSettings = Prelude.Nothing, extension = Prelude.Nothing,
       nameModifier = Prelude.Nothing}
instance ToResourceProperties ArchiveOutputSettingsProperty where
  toResourceProperties ArchiveOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ArchiveOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
                            (JSON..=) "Extension" Prelude.<$> extension,
                            (JSON..=) "NameModifier" Prelude.<$> nameModifier])}
instance JSON.ToJSON ArchiveOutputSettingsProperty where
  toJSON ArchiveOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerSettings" Prelude.<$> containerSettings,
               (JSON..=) "Extension" Prelude.<$> extension,
               (JSON..=) "NameModifier" Prelude.<$> nameModifier]))
instance Property "ContainerSettings" ArchiveOutputSettingsProperty where
  type PropertyType "ContainerSettings" ArchiveOutputSettingsProperty = ArchiveContainerSettingsProperty
  set newValue ArchiveOutputSettingsProperty {..}
    = ArchiveOutputSettingsProperty
        {containerSettings = Prelude.pure newValue, ..}
instance Property "Extension" ArchiveOutputSettingsProperty where
  type PropertyType "Extension" ArchiveOutputSettingsProperty = Value Prelude.Text
  set newValue ArchiveOutputSettingsProperty {..}
    = ArchiveOutputSettingsProperty
        {extension = Prelude.pure newValue, ..}
instance Property "NameModifier" ArchiveOutputSettingsProperty where
  type PropertyType "NameModifier" ArchiveOutputSettingsProperty = Value Prelude.Text
  set newValue ArchiveOutputSettingsProperty {..}
    = ArchiveOutputSettingsProperty
        {nameModifier = Prelude.pure newValue, ..}