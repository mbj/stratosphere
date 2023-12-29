module Stratosphere.MediaLive.Channel.CaptionDestinationSettingsProperty (
        module Exports, CaptionDestinationSettingsProperty(..),
        mkCaptionDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AribDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.BurnInDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DvbSubDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EbuTtDDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EmbeddedDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.EmbeddedPlusScte20DestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.RtmpCaptionInfoDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte20PlusEmbeddedDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Scte27DestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.SmpteTtDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TeletextDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.TtmlDestinationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.WebvttDestinationSettingsProperty as Exports
import Stratosphere.ResourceProperties
data CaptionDestinationSettingsProperty
  = CaptionDestinationSettingsProperty {aribDestinationSettings :: (Prelude.Maybe AribDestinationSettingsProperty),
                                        burnInDestinationSettings :: (Prelude.Maybe BurnInDestinationSettingsProperty),
                                        dvbSubDestinationSettings :: (Prelude.Maybe DvbSubDestinationSettingsProperty),
                                        ebuTtDDestinationSettings :: (Prelude.Maybe EbuTtDDestinationSettingsProperty),
                                        embeddedDestinationSettings :: (Prelude.Maybe EmbeddedDestinationSettingsProperty),
                                        embeddedPlusScte20DestinationSettings :: (Prelude.Maybe EmbeddedPlusScte20DestinationSettingsProperty),
                                        rtmpCaptionInfoDestinationSettings :: (Prelude.Maybe RtmpCaptionInfoDestinationSettingsProperty),
                                        scte20PlusEmbeddedDestinationSettings :: (Prelude.Maybe Scte20PlusEmbeddedDestinationSettingsProperty),
                                        scte27DestinationSettings :: (Prelude.Maybe Scte27DestinationSettingsProperty),
                                        smpteTtDestinationSettings :: (Prelude.Maybe SmpteTtDestinationSettingsProperty),
                                        teletextDestinationSettings :: (Prelude.Maybe TeletextDestinationSettingsProperty),
                                        ttmlDestinationSettings :: (Prelude.Maybe TtmlDestinationSettingsProperty),
                                        webvttDestinationSettings :: (Prelude.Maybe WebvttDestinationSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCaptionDestinationSettingsProperty ::
  CaptionDestinationSettingsProperty
mkCaptionDestinationSettingsProperty
  = CaptionDestinationSettingsProperty
      {aribDestinationSettings = Prelude.Nothing,
       burnInDestinationSettings = Prelude.Nothing,
       dvbSubDestinationSettings = Prelude.Nothing,
       ebuTtDDestinationSettings = Prelude.Nothing,
       embeddedDestinationSettings = Prelude.Nothing,
       embeddedPlusScte20DestinationSettings = Prelude.Nothing,
       rtmpCaptionInfoDestinationSettings = Prelude.Nothing,
       scte20PlusEmbeddedDestinationSettings = Prelude.Nothing,
       scte27DestinationSettings = Prelude.Nothing,
       smpteTtDestinationSettings = Prelude.Nothing,
       teletextDestinationSettings = Prelude.Nothing,
       ttmlDestinationSettings = Prelude.Nothing,
       webvttDestinationSettings = Prelude.Nothing}
instance ToResourceProperties CaptionDestinationSettingsProperty where
  toResourceProperties CaptionDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.CaptionDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AribDestinationSettings"
                              Prelude.<$> aribDestinationSettings,
                            (JSON..=) "BurnInDestinationSettings"
                              Prelude.<$> burnInDestinationSettings,
                            (JSON..=) "DvbSubDestinationSettings"
                              Prelude.<$> dvbSubDestinationSettings,
                            (JSON..=) "EbuTtDDestinationSettings"
                              Prelude.<$> ebuTtDDestinationSettings,
                            (JSON..=) "EmbeddedDestinationSettings"
                              Prelude.<$> embeddedDestinationSettings,
                            (JSON..=) "EmbeddedPlusScte20DestinationSettings"
                              Prelude.<$> embeddedPlusScte20DestinationSettings,
                            (JSON..=) "RtmpCaptionInfoDestinationSettings"
                              Prelude.<$> rtmpCaptionInfoDestinationSettings,
                            (JSON..=) "Scte20PlusEmbeddedDestinationSettings"
                              Prelude.<$> scte20PlusEmbeddedDestinationSettings,
                            (JSON..=) "Scte27DestinationSettings"
                              Prelude.<$> scte27DestinationSettings,
                            (JSON..=) "SmpteTtDestinationSettings"
                              Prelude.<$> smpteTtDestinationSettings,
                            (JSON..=) "TeletextDestinationSettings"
                              Prelude.<$> teletextDestinationSettings,
                            (JSON..=) "TtmlDestinationSettings"
                              Prelude.<$> ttmlDestinationSettings,
                            (JSON..=) "WebvttDestinationSettings"
                              Prelude.<$> webvttDestinationSettings])}
instance JSON.ToJSON CaptionDestinationSettingsProperty where
  toJSON CaptionDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AribDestinationSettings"
                 Prelude.<$> aribDestinationSettings,
               (JSON..=) "BurnInDestinationSettings"
                 Prelude.<$> burnInDestinationSettings,
               (JSON..=) "DvbSubDestinationSettings"
                 Prelude.<$> dvbSubDestinationSettings,
               (JSON..=) "EbuTtDDestinationSettings"
                 Prelude.<$> ebuTtDDestinationSettings,
               (JSON..=) "EmbeddedDestinationSettings"
                 Prelude.<$> embeddedDestinationSettings,
               (JSON..=) "EmbeddedPlusScte20DestinationSettings"
                 Prelude.<$> embeddedPlusScte20DestinationSettings,
               (JSON..=) "RtmpCaptionInfoDestinationSettings"
                 Prelude.<$> rtmpCaptionInfoDestinationSettings,
               (JSON..=) "Scte20PlusEmbeddedDestinationSettings"
                 Prelude.<$> scte20PlusEmbeddedDestinationSettings,
               (JSON..=) "Scte27DestinationSettings"
                 Prelude.<$> scte27DestinationSettings,
               (JSON..=) "SmpteTtDestinationSettings"
                 Prelude.<$> smpteTtDestinationSettings,
               (JSON..=) "TeletextDestinationSettings"
                 Prelude.<$> teletextDestinationSettings,
               (JSON..=) "TtmlDestinationSettings"
                 Prelude.<$> ttmlDestinationSettings,
               (JSON..=) "WebvttDestinationSettings"
                 Prelude.<$> webvttDestinationSettings]))
instance Property "AribDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "AribDestinationSettings" CaptionDestinationSettingsProperty = AribDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {aribDestinationSettings = Prelude.pure newValue, ..}
instance Property "BurnInDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "BurnInDestinationSettings" CaptionDestinationSettingsProperty = BurnInDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {burnInDestinationSettings = Prelude.pure newValue, ..}
instance Property "DvbSubDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "DvbSubDestinationSettings" CaptionDestinationSettingsProperty = DvbSubDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {dvbSubDestinationSettings = Prelude.pure newValue, ..}
instance Property "EbuTtDDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "EbuTtDDestinationSettings" CaptionDestinationSettingsProperty = EbuTtDDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {ebuTtDDestinationSettings = Prelude.pure newValue, ..}
instance Property "EmbeddedDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "EmbeddedDestinationSettings" CaptionDestinationSettingsProperty = EmbeddedDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {embeddedDestinationSettings = Prelude.pure newValue, ..}
instance Property "EmbeddedPlusScte20DestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "EmbeddedPlusScte20DestinationSettings" CaptionDestinationSettingsProperty = EmbeddedPlusScte20DestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {embeddedPlusScte20DestinationSettings = Prelude.pure newValue, ..}
instance Property "RtmpCaptionInfoDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "RtmpCaptionInfoDestinationSettings" CaptionDestinationSettingsProperty = RtmpCaptionInfoDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {rtmpCaptionInfoDestinationSettings = Prelude.pure newValue, ..}
instance Property "Scte20PlusEmbeddedDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "Scte20PlusEmbeddedDestinationSettings" CaptionDestinationSettingsProperty = Scte20PlusEmbeddedDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {scte20PlusEmbeddedDestinationSettings = Prelude.pure newValue, ..}
instance Property "Scte27DestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "Scte27DestinationSettings" CaptionDestinationSettingsProperty = Scte27DestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {scte27DestinationSettings = Prelude.pure newValue, ..}
instance Property "SmpteTtDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "SmpteTtDestinationSettings" CaptionDestinationSettingsProperty = SmpteTtDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {smpteTtDestinationSettings = Prelude.pure newValue, ..}
instance Property "TeletextDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "TeletextDestinationSettings" CaptionDestinationSettingsProperty = TeletextDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {teletextDestinationSettings = Prelude.pure newValue, ..}
instance Property "TtmlDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "TtmlDestinationSettings" CaptionDestinationSettingsProperty = TtmlDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {ttmlDestinationSettings = Prelude.pure newValue, ..}
instance Property "WebvttDestinationSettings" CaptionDestinationSettingsProperty where
  type PropertyType "WebvttDestinationSettings" CaptionDestinationSettingsProperty = WebvttDestinationSettingsProperty
  set newValue CaptionDestinationSettingsProperty {..}
    = CaptionDestinationSettingsProperty
        {webvttDestinationSettings = Prelude.pure newValue, ..}