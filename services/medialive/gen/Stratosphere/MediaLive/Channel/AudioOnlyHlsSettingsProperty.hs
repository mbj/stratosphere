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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html>
    AudioOnlyHlsSettingsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audiogroupid>
                                  audioGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audioonlyimage>
                                  audioOnlyImage :: (Prelude.Maybe InputLocationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-audiotracktype>
                                  audioTrackType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioonlyhlssettings.html#cfn-medialive-channel-audioonlyhlssettings-segmenttype>
                                  segmentType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioOnlyHlsSettingsProperty :: AudioOnlyHlsSettingsProperty
mkAudioOnlyHlsSettingsProperty
  = AudioOnlyHlsSettingsProperty
      {haddock_workaround_ = (), audioGroupId = Prelude.Nothing,
       audioOnlyImage = Prelude.Nothing, audioTrackType = Prelude.Nothing,
       segmentType = Prelude.Nothing}
instance ToResourceProperties AudioOnlyHlsSettingsProperty where
  toResourceProperties AudioOnlyHlsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioOnlyHlsSettings",
         supportsTags = Prelude.False,
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