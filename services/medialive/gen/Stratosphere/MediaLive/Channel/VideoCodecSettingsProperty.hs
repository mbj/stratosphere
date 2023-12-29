module Stratosphere.MediaLive.Channel.VideoCodecSettingsProperty (
        module Exports, VideoCodecSettingsProperty(..),
        mkVideoCodecSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H264SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.H265SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Mpeg2SettingsProperty as Exports
import Stratosphere.ResourceProperties
data VideoCodecSettingsProperty
  = VideoCodecSettingsProperty {frameCaptureSettings :: (Prelude.Maybe FrameCaptureSettingsProperty),
                                h264Settings :: (Prelude.Maybe H264SettingsProperty),
                                h265Settings :: (Prelude.Maybe H265SettingsProperty),
                                mpeg2Settings :: (Prelude.Maybe Mpeg2SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoCodecSettingsProperty :: VideoCodecSettingsProperty
mkVideoCodecSettingsProperty
  = VideoCodecSettingsProperty
      {frameCaptureSettings = Prelude.Nothing,
       h264Settings = Prelude.Nothing, h265Settings = Prelude.Nothing,
       mpeg2Settings = Prelude.Nothing}
instance ToResourceProperties VideoCodecSettingsProperty where
  toResourceProperties VideoCodecSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoCodecSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FrameCaptureSettings" Prelude.<$> frameCaptureSettings,
                            (JSON..=) "H264Settings" Prelude.<$> h264Settings,
                            (JSON..=) "H265Settings" Prelude.<$> h265Settings,
                            (JSON..=) "Mpeg2Settings" Prelude.<$> mpeg2Settings])}
instance JSON.ToJSON VideoCodecSettingsProperty where
  toJSON VideoCodecSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FrameCaptureSettings" Prelude.<$> frameCaptureSettings,
               (JSON..=) "H264Settings" Prelude.<$> h264Settings,
               (JSON..=) "H265Settings" Prelude.<$> h265Settings,
               (JSON..=) "Mpeg2Settings" Prelude.<$> mpeg2Settings]))
instance Property "FrameCaptureSettings" VideoCodecSettingsProperty where
  type PropertyType "FrameCaptureSettings" VideoCodecSettingsProperty = FrameCaptureSettingsProperty
  set newValue VideoCodecSettingsProperty {..}
    = VideoCodecSettingsProperty
        {frameCaptureSettings = Prelude.pure newValue, ..}
instance Property "H264Settings" VideoCodecSettingsProperty where
  type PropertyType "H264Settings" VideoCodecSettingsProperty = H264SettingsProperty
  set newValue VideoCodecSettingsProperty {..}
    = VideoCodecSettingsProperty
        {h264Settings = Prelude.pure newValue, ..}
instance Property "H265Settings" VideoCodecSettingsProperty where
  type PropertyType "H265Settings" VideoCodecSettingsProperty = H265SettingsProperty
  set newValue VideoCodecSettingsProperty {..}
    = VideoCodecSettingsProperty
        {h265Settings = Prelude.pure newValue, ..}
instance Property "Mpeg2Settings" VideoCodecSettingsProperty where
  type PropertyType "Mpeg2Settings" VideoCodecSettingsProperty = Mpeg2SettingsProperty
  set newValue VideoCodecSettingsProperty {..}
    = VideoCodecSettingsProperty
        {mpeg2Settings = Prelude.pure newValue, ..}