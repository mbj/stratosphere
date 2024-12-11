module Stratosphere.MediaLive.Channel.OutputGroupSettingsProperty (
        module Exports, OutputGroupSettingsProperty(..),
        mkOutputGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ArchiveGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.CmafIngestGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MediaPackageGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MsSmoothGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MultiplexGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.RtmpGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.SrtGroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.UdpGroupSettingsProperty as Exports
import Stratosphere.ResourceProperties
data OutputGroupSettingsProperty
  = OutputGroupSettingsProperty {archiveGroupSettings :: (Prelude.Maybe ArchiveGroupSettingsProperty),
                                 cmafIngestGroupSettings :: (Prelude.Maybe CmafIngestGroupSettingsProperty),
                                 frameCaptureGroupSettings :: (Prelude.Maybe FrameCaptureGroupSettingsProperty),
                                 hlsGroupSettings :: (Prelude.Maybe HlsGroupSettingsProperty),
                                 mediaPackageGroupSettings :: (Prelude.Maybe MediaPackageGroupSettingsProperty),
                                 msSmoothGroupSettings :: (Prelude.Maybe MsSmoothGroupSettingsProperty),
                                 multiplexGroupSettings :: (Prelude.Maybe MultiplexGroupSettingsProperty),
                                 rtmpGroupSettings :: (Prelude.Maybe RtmpGroupSettingsProperty),
                                 srtGroupSettings :: (Prelude.Maybe SrtGroupSettingsProperty),
                                 udpGroupSettings :: (Prelude.Maybe UdpGroupSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputGroupSettingsProperty :: OutputGroupSettingsProperty
mkOutputGroupSettingsProperty
  = OutputGroupSettingsProperty
      {archiveGroupSettings = Prelude.Nothing,
       cmafIngestGroupSettings = Prelude.Nothing,
       frameCaptureGroupSettings = Prelude.Nothing,
       hlsGroupSettings = Prelude.Nothing,
       mediaPackageGroupSettings = Prelude.Nothing,
       msSmoothGroupSettings = Prelude.Nothing,
       multiplexGroupSettings = Prelude.Nothing,
       rtmpGroupSettings = Prelude.Nothing,
       srtGroupSettings = Prelude.Nothing,
       udpGroupSettings = Prelude.Nothing}
instance ToResourceProperties OutputGroupSettingsProperty where
  toResourceProperties OutputGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveGroupSettings" Prelude.<$> archiveGroupSettings,
                            (JSON..=) "CmafIngestGroupSettings"
                              Prelude.<$> cmafIngestGroupSettings,
                            (JSON..=) "FrameCaptureGroupSettings"
                              Prelude.<$> frameCaptureGroupSettings,
                            (JSON..=) "HlsGroupSettings" Prelude.<$> hlsGroupSettings,
                            (JSON..=) "MediaPackageGroupSettings"
                              Prelude.<$> mediaPackageGroupSettings,
                            (JSON..=) "MsSmoothGroupSettings"
                              Prelude.<$> msSmoothGroupSettings,
                            (JSON..=) "MultiplexGroupSettings"
                              Prelude.<$> multiplexGroupSettings,
                            (JSON..=) "RtmpGroupSettings" Prelude.<$> rtmpGroupSettings,
                            (JSON..=) "SrtGroupSettings" Prelude.<$> srtGroupSettings,
                            (JSON..=) "UdpGroupSettings" Prelude.<$> udpGroupSettings])}
instance JSON.ToJSON OutputGroupSettingsProperty where
  toJSON OutputGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveGroupSettings" Prelude.<$> archiveGroupSettings,
               (JSON..=) "CmafIngestGroupSettings"
                 Prelude.<$> cmafIngestGroupSettings,
               (JSON..=) "FrameCaptureGroupSettings"
                 Prelude.<$> frameCaptureGroupSettings,
               (JSON..=) "HlsGroupSettings" Prelude.<$> hlsGroupSettings,
               (JSON..=) "MediaPackageGroupSettings"
                 Prelude.<$> mediaPackageGroupSettings,
               (JSON..=) "MsSmoothGroupSettings"
                 Prelude.<$> msSmoothGroupSettings,
               (JSON..=) "MultiplexGroupSettings"
                 Prelude.<$> multiplexGroupSettings,
               (JSON..=) "RtmpGroupSettings" Prelude.<$> rtmpGroupSettings,
               (JSON..=) "SrtGroupSettings" Prelude.<$> srtGroupSettings,
               (JSON..=) "UdpGroupSettings" Prelude.<$> udpGroupSettings]))
instance Property "ArchiveGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "ArchiveGroupSettings" OutputGroupSettingsProperty = ArchiveGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {archiveGroupSettings = Prelude.pure newValue, ..}
instance Property "CmafIngestGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "CmafIngestGroupSettings" OutputGroupSettingsProperty = CmafIngestGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {cmafIngestGroupSettings = Prelude.pure newValue, ..}
instance Property "FrameCaptureGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "FrameCaptureGroupSettings" OutputGroupSettingsProperty = FrameCaptureGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {frameCaptureGroupSettings = Prelude.pure newValue, ..}
instance Property "HlsGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "HlsGroupSettings" OutputGroupSettingsProperty = HlsGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {hlsGroupSettings = Prelude.pure newValue, ..}
instance Property "MediaPackageGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "MediaPackageGroupSettings" OutputGroupSettingsProperty = MediaPackageGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {mediaPackageGroupSettings = Prelude.pure newValue, ..}
instance Property "MsSmoothGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "MsSmoothGroupSettings" OutputGroupSettingsProperty = MsSmoothGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {msSmoothGroupSettings = Prelude.pure newValue, ..}
instance Property "MultiplexGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "MultiplexGroupSettings" OutputGroupSettingsProperty = MultiplexGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {multiplexGroupSettings = Prelude.pure newValue, ..}
instance Property "RtmpGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "RtmpGroupSettings" OutputGroupSettingsProperty = RtmpGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {rtmpGroupSettings = Prelude.pure newValue, ..}
instance Property "SrtGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "SrtGroupSettings" OutputGroupSettingsProperty = SrtGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {srtGroupSettings = Prelude.pure newValue, ..}
instance Property "UdpGroupSettings" OutputGroupSettingsProperty where
  type PropertyType "UdpGroupSettings" OutputGroupSettingsProperty = UdpGroupSettingsProperty
  set newValue OutputGroupSettingsProperty {..}
    = OutputGroupSettingsProperty
        {udpGroupSettings = Prelude.pure newValue, ..}