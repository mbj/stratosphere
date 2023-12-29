module Stratosphere.MediaLive.Channel.OutputSettingsProperty (
        module Exports, OutputSettingsProperty(..),
        mkOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ArchiveOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.HlsOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MediaPackageOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MsSmoothOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MultiplexOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.RtmpOutputSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.UdpOutputSettingsProperty as Exports
import Stratosphere.ResourceProperties
data OutputSettingsProperty
  = OutputSettingsProperty {archiveOutputSettings :: (Prelude.Maybe ArchiveOutputSettingsProperty),
                            frameCaptureOutputSettings :: (Prelude.Maybe FrameCaptureOutputSettingsProperty),
                            hlsOutputSettings :: (Prelude.Maybe HlsOutputSettingsProperty),
                            mediaPackageOutputSettings :: (Prelude.Maybe MediaPackageOutputSettingsProperty),
                            msSmoothOutputSettings :: (Prelude.Maybe MsSmoothOutputSettingsProperty),
                            multiplexOutputSettings :: (Prelude.Maybe MultiplexOutputSettingsProperty),
                            rtmpOutputSettings :: (Prelude.Maybe RtmpOutputSettingsProperty),
                            udpOutputSettings :: (Prelude.Maybe UdpOutputSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputSettingsProperty :: OutputSettingsProperty
mkOutputSettingsProperty
  = OutputSettingsProperty
      {archiveOutputSettings = Prelude.Nothing,
       frameCaptureOutputSettings = Prelude.Nothing,
       hlsOutputSettings = Prelude.Nothing,
       mediaPackageOutputSettings = Prelude.Nothing,
       msSmoothOutputSettings = Prelude.Nothing,
       multiplexOutputSettings = Prelude.Nothing,
       rtmpOutputSettings = Prelude.Nothing,
       udpOutputSettings = Prelude.Nothing}
instance ToResourceProperties OutputSettingsProperty where
  toResourceProperties OutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.OutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ArchiveOutputSettings"
                              Prelude.<$> archiveOutputSettings,
                            (JSON..=) "FrameCaptureOutputSettings"
                              Prelude.<$> frameCaptureOutputSettings,
                            (JSON..=) "HlsOutputSettings" Prelude.<$> hlsOutputSettings,
                            (JSON..=) "MediaPackageOutputSettings"
                              Prelude.<$> mediaPackageOutputSettings,
                            (JSON..=) "MsSmoothOutputSettings"
                              Prelude.<$> msSmoothOutputSettings,
                            (JSON..=) "MultiplexOutputSettings"
                              Prelude.<$> multiplexOutputSettings,
                            (JSON..=) "RtmpOutputSettings" Prelude.<$> rtmpOutputSettings,
                            (JSON..=) "UdpOutputSettings" Prelude.<$> udpOutputSettings])}
instance JSON.ToJSON OutputSettingsProperty where
  toJSON OutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ArchiveOutputSettings"
                 Prelude.<$> archiveOutputSettings,
               (JSON..=) "FrameCaptureOutputSettings"
                 Prelude.<$> frameCaptureOutputSettings,
               (JSON..=) "HlsOutputSettings" Prelude.<$> hlsOutputSettings,
               (JSON..=) "MediaPackageOutputSettings"
                 Prelude.<$> mediaPackageOutputSettings,
               (JSON..=) "MsSmoothOutputSettings"
                 Prelude.<$> msSmoothOutputSettings,
               (JSON..=) "MultiplexOutputSettings"
                 Prelude.<$> multiplexOutputSettings,
               (JSON..=) "RtmpOutputSettings" Prelude.<$> rtmpOutputSettings,
               (JSON..=) "UdpOutputSettings" Prelude.<$> udpOutputSettings]))
instance Property "ArchiveOutputSettings" OutputSettingsProperty where
  type PropertyType "ArchiveOutputSettings" OutputSettingsProperty = ArchiveOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {archiveOutputSettings = Prelude.pure newValue, ..}
instance Property "FrameCaptureOutputSettings" OutputSettingsProperty where
  type PropertyType "FrameCaptureOutputSettings" OutputSettingsProperty = FrameCaptureOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {frameCaptureOutputSettings = Prelude.pure newValue, ..}
instance Property "HlsOutputSettings" OutputSettingsProperty where
  type PropertyType "HlsOutputSettings" OutputSettingsProperty = HlsOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {hlsOutputSettings = Prelude.pure newValue, ..}
instance Property "MediaPackageOutputSettings" OutputSettingsProperty where
  type PropertyType "MediaPackageOutputSettings" OutputSettingsProperty = MediaPackageOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {mediaPackageOutputSettings = Prelude.pure newValue, ..}
instance Property "MsSmoothOutputSettings" OutputSettingsProperty where
  type PropertyType "MsSmoothOutputSettings" OutputSettingsProperty = MsSmoothOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {msSmoothOutputSettings = Prelude.pure newValue, ..}
instance Property "MultiplexOutputSettings" OutputSettingsProperty where
  type PropertyType "MultiplexOutputSettings" OutputSettingsProperty = MultiplexOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {multiplexOutputSettings = Prelude.pure newValue, ..}
instance Property "RtmpOutputSettings" OutputSettingsProperty where
  type PropertyType "RtmpOutputSettings" OutputSettingsProperty = RtmpOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {rtmpOutputSettings = Prelude.pure newValue, ..}
instance Property "UdpOutputSettings" OutputSettingsProperty where
  type PropertyType "UdpOutputSettings" OutputSettingsProperty = UdpOutputSettingsProperty
  set newValue OutputSettingsProperty {..}
    = OutputSettingsProperty
        {udpOutputSettings = Prelude.pure newValue, ..}