module Stratosphere.MediaLive.Channel.AudioSilenceFailoverSettingsProperty (
        AudioSilenceFailoverSettingsProperty(..),
        mkAudioSilenceFailoverSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioSilenceFailoverSettingsProperty
  = AudioSilenceFailoverSettingsProperty {audioSelectorName :: (Prelude.Maybe (Value Prelude.Text)),
                                          audioSilenceThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
mkAudioSilenceFailoverSettingsProperty ::
  AudioSilenceFailoverSettingsProperty
mkAudioSilenceFailoverSettingsProperty
  = AudioSilenceFailoverSettingsProperty
      {audioSelectorName = Prelude.Nothing,
       audioSilenceThresholdMsec = Prelude.Nothing}
instance ToResourceProperties AudioSilenceFailoverSettingsProperty where
  toResourceProperties AudioSilenceFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioSilenceFailoverSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioSelectorName" Prelude.<$> audioSelectorName,
                            (JSON..=) "AudioSilenceThresholdMsec"
                              Prelude.<$> audioSilenceThresholdMsec])}
instance JSON.ToJSON AudioSilenceFailoverSettingsProperty where
  toJSON AudioSilenceFailoverSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioSelectorName" Prelude.<$> audioSelectorName,
               (JSON..=) "AudioSilenceThresholdMsec"
                 Prelude.<$> audioSilenceThresholdMsec]))
instance Property "AudioSelectorName" AudioSilenceFailoverSettingsProperty where
  type PropertyType "AudioSelectorName" AudioSilenceFailoverSettingsProperty = Value Prelude.Text
  set newValue AudioSilenceFailoverSettingsProperty {..}
    = AudioSilenceFailoverSettingsProperty
        {audioSelectorName = Prelude.pure newValue, ..}
instance Property "AudioSilenceThresholdMsec" AudioSilenceFailoverSettingsProperty where
  type PropertyType "AudioSilenceThresholdMsec" AudioSilenceFailoverSettingsProperty = Value Prelude.Integer
  set newValue AudioSilenceFailoverSettingsProperty {..}
    = AudioSilenceFailoverSettingsProperty
        {audioSilenceThresholdMsec = Prelude.pure newValue, ..}