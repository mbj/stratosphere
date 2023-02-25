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
  = AudioSelectorSettingsProperty {audioHlsRenditionSelection :: (Prelude.Maybe AudioHlsRenditionSelectionProperty),
                                   audioLanguageSelection :: (Prelude.Maybe AudioLanguageSelectionProperty),
                                   audioPidSelection :: (Prelude.Maybe AudioPidSelectionProperty),
                                   audioTrackSelection :: (Prelude.Maybe AudioTrackSelectionProperty)}
mkAudioSelectorSettingsProperty :: AudioSelectorSettingsProperty
mkAudioSelectorSettingsProperty
  = AudioSelectorSettingsProperty
      {audioHlsRenditionSelection = Prelude.Nothing,
       audioLanguageSelection = Prelude.Nothing,
       audioPidSelection = Prelude.Nothing,
       audioTrackSelection = Prelude.Nothing}
instance ToResourceProperties AudioSelectorSettingsProperty where
  toResourceProperties AudioSelectorSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioSelectorSettings",
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