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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiosilencefailoversettings.html>
    AudioSilenceFailoverSettingsProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiosilencefailoversettings.html#cfn-medialive-channel-audiosilencefailoversettings-audioselectorname>
                                          audioSelectorName :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiosilencefailoversettings.html#cfn-medialive-channel-audiosilencefailoversettings-audiosilencethresholdmsec>
                                          audioSilenceThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioSilenceFailoverSettingsProperty ::
  AudioSilenceFailoverSettingsProperty
mkAudioSilenceFailoverSettingsProperty
  = AudioSilenceFailoverSettingsProperty
      {haddock_workaround_ = (), audioSelectorName = Prelude.Nothing,
       audioSilenceThresholdMsec = Prelude.Nothing}
instance ToResourceProperties AudioSilenceFailoverSettingsProperty where
  toResourceProperties AudioSilenceFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioSilenceFailoverSettings",
         supportsTags = Prelude.False,
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