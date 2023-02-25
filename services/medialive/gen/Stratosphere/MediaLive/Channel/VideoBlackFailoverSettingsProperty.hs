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
  = VideoBlackFailoverSettingsProperty {blackDetectThreshold :: (Prelude.Maybe (Value Prelude.Double)),
                                        videoBlackThresholdMsec :: (Prelude.Maybe (Value Prelude.Integer))}
mkVideoBlackFailoverSettingsProperty ::
  VideoBlackFailoverSettingsProperty
mkVideoBlackFailoverSettingsProperty
  = VideoBlackFailoverSettingsProperty
      {blackDetectThreshold = Prelude.Nothing,
       videoBlackThresholdMsec = Prelude.Nothing}
instance ToResourceProperties VideoBlackFailoverSettingsProperty where
  toResourceProperties VideoBlackFailoverSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoBlackFailoverSettings",
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