module Stratosphere.MediaLive.Channel.CaptionSelectorSettingsProperty (
        module Exports, CaptionSelectorSettingsProperty(..),
        mkCaptionSelectorSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AncillarySourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AribSourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DvbSubSourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EmbeddedSourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte20SourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte27SourceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TeletextSourceSettingsProperty as Exports
import Stratosphere.ResourceProperties
data CaptionSelectorSettingsProperty
  = CaptionSelectorSettingsProperty {ancillarySourceSettings :: (Prelude.Maybe AncillarySourceSettingsProperty),
                                     aribSourceSettings :: (Prelude.Maybe AribSourceSettingsProperty),
                                     dvbSubSourceSettings :: (Prelude.Maybe DvbSubSourceSettingsProperty),
                                     embeddedSourceSettings :: (Prelude.Maybe EmbeddedSourceSettingsProperty),
                                     scte20SourceSettings :: (Prelude.Maybe Scte20SourceSettingsProperty),
                                     scte27SourceSettings :: (Prelude.Maybe Scte27SourceSettingsProperty),
                                     teletextSourceSettings :: (Prelude.Maybe TeletextSourceSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptionSelectorSettingsProperty ::
  CaptionSelectorSettingsProperty
mkCaptionSelectorSettingsProperty
  = CaptionSelectorSettingsProperty
      {ancillarySourceSettings = Prelude.Nothing,
       aribSourceSettings = Prelude.Nothing,
       dvbSubSourceSettings = Prelude.Nothing,
       embeddedSourceSettings = Prelude.Nothing,
       scte20SourceSettings = Prelude.Nothing,
       scte27SourceSettings = Prelude.Nothing,
       teletextSourceSettings = Prelude.Nothing}
instance ToResourceProperties CaptionSelectorSettingsProperty where
  toResourceProperties CaptionSelectorSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionSelectorSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AncillarySourceSettings"
                              Prelude.<$> ancillarySourceSettings,
                            (JSON..=) "AribSourceSettings" Prelude.<$> aribSourceSettings,
                            (JSON..=) "DvbSubSourceSettings" Prelude.<$> dvbSubSourceSettings,
                            (JSON..=) "EmbeddedSourceSettings"
                              Prelude.<$> embeddedSourceSettings,
                            (JSON..=) "Scte20SourceSettings" Prelude.<$> scte20SourceSettings,
                            (JSON..=) "Scte27SourceSettings" Prelude.<$> scte27SourceSettings,
                            (JSON..=) "TeletextSourceSettings"
                              Prelude.<$> teletextSourceSettings])}
instance JSON.ToJSON CaptionSelectorSettingsProperty where
  toJSON CaptionSelectorSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AncillarySourceSettings"
                 Prelude.<$> ancillarySourceSettings,
               (JSON..=) "AribSourceSettings" Prelude.<$> aribSourceSettings,
               (JSON..=) "DvbSubSourceSettings" Prelude.<$> dvbSubSourceSettings,
               (JSON..=) "EmbeddedSourceSettings"
                 Prelude.<$> embeddedSourceSettings,
               (JSON..=) "Scte20SourceSettings" Prelude.<$> scte20SourceSettings,
               (JSON..=) "Scte27SourceSettings" Prelude.<$> scte27SourceSettings,
               (JSON..=) "TeletextSourceSettings"
                 Prelude.<$> teletextSourceSettings]))
instance Property "AncillarySourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "AncillarySourceSettings" CaptionSelectorSettingsProperty = AncillarySourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {ancillarySourceSettings = Prelude.pure newValue, ..}
instance Property "AribSourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "AribSourceSettings" CaptionSelectorSettingsProperty = AribSourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {aribSourceSettings = Prelude.pure newValue, ..}
instance Property "DvbSubSourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "DvbSubSourceSettings" CaptionSelectorSettingsProperty = DvbSubSourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {dvbSubSourceSettings = Prelude.pure newValue, ..}
instance Property "EmbeddedSourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "EmbeddedSourceSettings" CaptionSelectorSettingsProperty = EmbeddedSourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {embeddedSourceSettings = Prelude.pure newValue, ..}
instance Property "Scte20SourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "Scte20SourceSettings" CaptionSelectorSettingsProperty = Scte20SourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {scte20SourceSettings = Prelude.pure newValue, ..}
instance Property "Scte27SourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "Scte27SourceSettings" CaptionSelectorSettingsProperty = Scte27SourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {scte27SourceSettings = Prelude.pure newValue, ..}
instance Property "TeletextSourceSettings" CaptionSelectorSettingsProperty where
  type PropertyType "TeletextSourceSettings" CaptionSelectorSettingsProperty = TeletextSourceSettingsProperty
  set newValue CaptionSelectorSettingsProperty {..}
    = CaptionSelectorSettingsProperty
        {teletextSourceSettings = Prelude.pure newValue, ..}