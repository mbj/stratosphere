module Stratosphere.MediaLive.Channel.AudioSelectorSettingsProperty (
        module Exports, AudioSelectorSettingsProperty(..),
        mkAudioSelectorSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioHlsRenditionSelectionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioLanguageSelectionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioPidSelectionProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioTrackSelectionProperty as Exports
import Stratosphere.ResourceProperties
data AudioSelectorSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html>
    AudioSelectorSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiohlsrenditionselection>
                                   audioHlsRenditionSelection :: (Prelude.Maybe AudioHlsRenditionSelectionProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiolanguageselection>
                                   audioLanguageSelection :: (Prelude.Maybe AudioLanguageSelectionProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiopidselection>
                                   audioPidSelection :: (Prelude.Maybe AudioPidSelectionProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselectorsettings.html#cfn-medialive-channel-audioselectorsettings-audiotrackselection>
                                   audioTrackSelection :: (Prelude.Maybe AudioTrackSelectionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioSelectorSettingsProperty :: AudioSelectorSettingsProperty
mkAudioSelectorSettingsProperty
  = AudioSelectorSettingsProperty
      {haddock_workaround_ = (),
       audioHlsRenditionSelection = Prelude.Nothing,
       audioLanguageSelection = Prelude.Nothing,
       audioPidSelection = Prelude.Nothing,
       audioTrackSelection = Prelude.Nothing}
instance ToResourceProperties AudioSelectorSettingsProperty where
  toResourceProperties AudioSelectorSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioSelectorSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioHlsRenditionSelection"
                              Prelude.<$> audioHlsRenditionSelection,
                            (JSON..=) "AudioLanguageSelection"
                              Prelude.<$> audioLanguageSelection,
                            (JSON..=) "AudioPidSelection" Prelude.<$> audioPidSelection,
                            (JSON..=) "AudioTrackSelection" Prelude.<$> audioTrackSelection])}
instance JSON.ToJSON AudioSelectorSettingsProperty where
  toJSON AudioSelectorSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioHlsRenditionSelection"
                 Prelude.<$> audioHlsRenditionSelection,
               (JSON..=) "AudioLanguageSelection"
                 Prelude.<$> audioLanguageSelection,
               (JSON..=) "AudioPidSelection" Prelude.<$> audioPidSelection,
               (JSON..=) "AudioTrackSelection" Prelude.<$> audioTrackSelection]))
instance Property "AudioHlsRenditionSelection" AudioSelectorSettingsProperty where
  type PropertyType "AudioHlsRenditionSelection" AudioSelectorSettingsProperty = AudioHlsRenditionSelectionProperty
  set newValue AudioSelectorSettingsProperty {..}
    = AudioSelectorSettingsProperty
        {audioHlsRenditionSelection = Prelude.pure newValue, ..}
instance Property "AudioLanguageSelection" AudioSelectorSettingsProperty where
  type PropertyType "AudioLanguageSelection" AudioSelectorSettingsProperty = AudioLanguageSelectionProperty
  set newValue AudioSelectorSettingsProperty {..}
    = AudioSelectorSettingsProperty
        {audioLanguageSelection = Prelude.pure newValue, ..}
instance Property "AudioPidSelection" AudioSelectorSettingsProperty where
  type PropertyType "AudioPidSelection" AudioSelectorSettingsProperty = AudioPidSelectionProperty
  set newValue AudioSelectorSettingsProperty {..}
    = AudioSelectorSettingsProperty
        {audioPidSelection = Prelude.pure newValue, ..}
instance Property "AudioTrackSelection" AudioSelectorSettingsProperty where
  type PropertyType "AudioTrackSelection" AudioSelectorSettingsProperty = AudioTrackSelectionProperty
  set newValue AudioSelectorSettingsProperty {..}
    = AudioSelectorSettingsProperty
        {audioTrackSelection = Prelude.pure newValue, ..}