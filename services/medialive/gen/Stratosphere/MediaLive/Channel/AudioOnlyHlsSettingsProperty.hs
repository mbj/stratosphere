module Stratosphere.MediaLive.Channel.AudioOnlyHlsSettingsProperty (
        module Exports, AudioOnlyHlsSettingsProperty(..),
        mkAudioOnlyHlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLocationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioOnlyHlsSettingsProperty
  = AudioOnlyHlsSettingsProperty {audioGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                  audioOnlyImage :: (Prelude.Maybe InputLocationProperty),
                                  audioTrackType :: (Prelude.Maybe (Value Prelude.Text)),
                                  segmentType :: (Prelude.Maybe (Value Prelude.Text))}
mkAudioOnlyHlsSettingsProperty :: AudioOnlyHlsSettingsProperty
mkAudioOnlyHlsSettingsProperty
  = AudioOnlyHlsSettingsProperty
      {audioGroupId = Prelude.Nothing, audioOnlyImage = Prelude.Nothing,
       audioTrackType = Prelude.Nothing, segmentType = Prelude.Nothing}
instance ToResourceProperties AudioOnlyHlsSettingsProperty where
  toResourceProperties AudioOnlyHlsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioOnlyHlsSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioGroupId" Prelude.<$> audioGroupId,
                            (JSON..=) "AudioOnlyImage" Prelude.<$> audioOnlyImage,
                            (JSON..=) "AudioTrackType" Prelude.<$> audioTrackType,
                            (JSON..=) "SegmentType" Prelude.<$> segmentType])}
instance JSON.ToJSON AudioOnlyHlsSettingsProperty where
  toJSON AudioOnlyHlsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioGroupId" Prelude.<$> audioGroupId,
               (JSON..=) "AudioOnlyImage" Prelude.<$> audioOnlyImage,
               (JSON..=) "AudioTrackType" Prelude.<$> audioTrackType,
               (JSON..=) "SegmentType" Prelude.<$> segmentType]))
instance Property "AudioGroupId" AudioOnlyHlsSettingsProperty where
  type PropertyType "AudioGroupId" AudioOnlyHlsSettingsProperty = Value Prelude.Text
  set newValue AudioOnlyHlsSettingsProperty {..}
    = AudioOnlyHlsSettingsProperty
        {audioGroupId = Prelude.pure newValue, ..}
instance Property "AudioOnlyImage" AudioOnlyHlsSettingsProperty where
  type PropertyType "AudioOnlyImage" AudioOnlyHlsSettingsProperty = InputLocationProperty
  set newValue AudioOnlyHlsSettingsProperty {..}
    = AudioOnlyHlsSettingsProperty
        {audioOnlyImage = Prelude.pure newValue, ..}
instance Property "AudioTrackType" AudioOnlyHlsSettingsProperty where
  type PropertyType "AudioTrackType" AudioOnlyHlsSettingsProperty = Value Prelude.Text
  set newValue AudioOnlyHlsSettingsProperty {..}
    = AudioOnlyHlsSettingsProperty
        {audioTrackType = Prelude.pure newValue, ..}
instance Property "SegmentType" AudioOnlyHlsSettingsProperty where
  type PropertyType "SegmentType" AudioOnlyHlsSettingsProperty = Value Prelude.Text
  set newValue AudioOnlyHlsSettingsProperty {..}
    = AudioOnlyHlsSettingsProperty
        {segmentType = Prelude.pure newValue, ..}