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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html>
    OutputGroupSettingsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-archivegroupsettings>
                                 archiveGroupSettings :: (Prelude.Maybe ArchiveGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-cmafingestgroupsettings>
                                 cmafIngestGroupSettings :: (Prelude.Maybe CmafIngestGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-framecapturegroupsettings>
                                 frameCaptureGroupSettings :: (Prelude.Maybe FrameCaptureGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-hlsgroupsettings>
                                 hlsGroupSettings :: (Prelude.Maybe HlsGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mediapackagegroupsettings>
                                 mediaPackageGroupSettings :: (Prelude.Maybe MediaPackageGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-mssmoothgroupsettings>
                                 msSmoothGroupSettings :: (Prelude.Maybe MsSmoothGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-multiplexgroupsettings>
                                 multiplexGroupSettings :: (Prelude.Maybe MultiplexGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-rtmpgroupsettings>
                                 rtmpGroupSettings :: (Prelude.Maybe RtmpGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-srtgroupsettings>
                                 srtGroupSettings :: (Prelude.Maybe SrtGroupSettingsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-outputgroupsettings.html#cfn-medialive-channel-outputgroupsettings-udpgroupsettings>
                                 udpGroupSettings :: (Prelude.Maybe UdpGroupSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputGroupSettingsProperty :: OutputGroupSettingsProperty
mkOutputGroupSettingsProperty
  = OutputGroupSettingsProperty
      {haddock_workaround_ = (), archiveGroupSettings = Prelude.Nothing,
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