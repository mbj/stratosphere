module Stratosphere.MediaLive.Channel.FailoverConditionSettingsProperty (
        module Exports, FailoverConditionSettingsProperty(..),
        mkFailoverConditionSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioSilenceFailoverSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputLossFailoverSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoBlackFailoverSettingsProperty as Exports
import Stratosphere.ResourceProperties
data FailoverConditionSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failoverconditionsettings.html>
    FailoverConditionSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failoverconditionsettings.html#cfn-medialive-channel-failoverconditionsettings-audiosilencesettings>
                                       audioSilenceSettings :: (Prelude.Maybe AudioSilenceFailoverSettingsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failoverconditionsettings.html#cfn-medialive-channel-failoverconditionsettings-inputlosssettings>
                                       inputLossSettings :: (Prelude.Maybe InputLossFailoverSettingsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-failoverconditionsettings.html#cfn-medialive-channel-failoverconditionsettings-videoblacksettings>
                                       videoBlackSettings :: (Prelude.Maybe VideoBlackFailoverSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFailoverConditionSettingsProperty ::
  FailoverConditionSettingsProperty
mkFailoverConditionSettingsProperty
  = FailoverConditionSettingsProperty
      {haddock_workaround_ = (), audioSilenceSettings = Prelude.Nothing,
       inputLossSettings = Prelude.Nothing,
       videoBlackSettings = Prelude.Nothing}
instance ToResourceProperties FailoverConditionSettingsProperty where
  toResourceProperties FailoverConditionSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.FailoverConditionSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioSilenceSettings" Prelude.<$> audioSilenceSettings,
                            (JSON..=) "InputLossSettings" Prelude.<$> inputLossSettings,
                            (JSON..=) "VideoBlackSettings" Prelude.<$> videoBlackSettings])}
instance JSON.ToJSON FailoverConditionSettingsProperty where
  toJSON FailoverConditionSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioSilenceSettings" Prelude.<$> audioSilenceSettings,
               (JSON..=) "InputLossSettings" Prelude.<$> inputLossSettings,
               (JSON..=) "VideoBlackSettings" Prelude.<$> videoBlackSettings]))
instance Property "AudioSilenceSettings" FailoverConditionSettingsProperty where
  type PropertyType "AudioSilenceSettings" FailoverConditionSettingsProperty = AudioSilenceFailoverSettingsProperty
  set newValue FailoverConditionSettingsProperty {..}
    = FailoverConditionSettingsProperty
        {audioSilenceSettings = Prelude.pure newValue, ..}
instance Property "InputLossSettings" FailoverConditionSettingsProperty where
  type PropertyType "InputLossSettings" FailoverConditionSettingsProperty = InputLossFailoverSettingsProperty
  set newValue FailoverConditionSettingsProperty {..}
    = FailoverConditionSettingsProperty
        {inputLossSettings = Prelude.pure newValue, ..}
instance Property "VideoBlackSettings" FailoverConditionSettingsProperty where
  type PropertyType "VideoBlackSettings" FailoverConditionSettingsProperty = VideoBlackFailoverSettingsProperty
  set newValue FailoverConditionSettingsProperty {..}
    = FailoverConditionSettingsProperty
        {videoBlackSettings = Prelude.pure newValue, ..}