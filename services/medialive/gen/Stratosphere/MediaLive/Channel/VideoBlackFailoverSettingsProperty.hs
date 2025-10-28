module Stratosphere.MediaLive.Channel.VideoBlackFailoverSettingsProperty (
        VideoBlackFailoverSettingsProperty(..),
        mkVideoBlackFailoverSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoBlackFailoverSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html>
    VideoBlackFailoverSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html#cfn-medialive-channel-videoblackfailoversettings-blackdetectthreshold>
                                        blackDetectThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoblackfailoversettings.html#cfn-medialive-channel-videoblackfailoversettings-videoblackthresholdmsec>
                                        videoBlackThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoBlackFailoverSettingsProperty ::
  VideoBlackFailoverSettingsProperty
mkVideoBlackFailoverSettingsProperty
  = VideoBlackFailoverSettingsProperty
      {haddock_workaround_ = (), blackDetectThreshold = Prelude.Nothing,
       videoBlackThresholdMsec = Prelude.Nothing}
instance ToResourceProperties VideoBlackFailoverSettingsProperty where
  toResourceProperties VideoBlackFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoBlackFailoverSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlackDetectThreshold" Prelude.<$> blackDetectThreshold,
                            (JSON..=) "VideoBlackThresholdMsec"
                              Prelude.<$> videoBlackThresholdMsec])}
instance JSON.ToJSON VideoBlackFailoverSettingsProperty where
  toJSON VideoBlackFailoverSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlackDetectThreshold" Prelude.<$> blackDetectThreshold,
               (JSON..=) "VideoBlackThresholdMsec"
                 Prelude.<$> videoBlackThresholdMsec]))
instance Property "BlackDetectThreshold" VideoBlackFailoverSettingsProperty where
  type PropertyType "BlackDetectThreshold" VideoBlackFailoverSettingsProperty = Value Prelude.Double
  set newValue VideoBlackFailoverSettingsProperty {..}
    = VideoBlackFailoverSettingsProperty
        {blackDetectThreshold = Prelude.pure newValue, ..}
instance Property "VideoBlackThresholdMsec" VideoBlackFailoverSettingsProperty where
  type PropertyType "VideoBlackThresholdMsec" VideoBlackFailoverSettingsProperty = Value Prelude.Integer
  set newValue VideoBlackFailoverSettingsProperty {..}
    = VideoBlackFailoverSettingsProperty
        {videoBlackThresholdMsec = Prelude.pure newValue, ..}