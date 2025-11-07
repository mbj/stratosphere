module Stratosphere.MediaConnect.Flow.AudioMonitoringSettingProperty (
        module Exports, AudioMonitoringSettingProperty(..),
        mkAudioMonitoringSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaConnect.Flow.SilentAudioProperty as Exports
import Stratosphere.ResourceProperties
data AudioMonitoringSettingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-audiomonitoringsetting.html>
    AudioMonitoringSettingProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-audiomonitoringsetting.html#cfn-mediaconnect-flow-audiomonitoringsetting-silentaudio>
                                    silentAudio :: (Prelude.Maybe SilentAudioProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioMonitoringSettingProperty :: AudioMonitoringSettingProperty
mkAudioMonitoringSettingProperty
  = AudioMonitoringSettingProperty
      {haddock_workaround_ = (), silentAudio = Prelude.Nothing}
instance ToResourceProperties AudioMonitoringSettingProperty where
  toResourceProperties AudioMonitoringSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.AudioMonitoringSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SilentAudio" Prelude.<$> silentAudio])}
instance JSON.ToJSON AudioMonitoringSettingProperty where
  toJSON AudioMonitoringSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SilentAudio" Prelude.<$> silentAudio]))
instance Property "SilentAudio" AudioMonitoringSettingProperty where
  type PropertyType "SilentAudio" AudioMonitoringSettingProperty = SilentAudioProperty
  set newValue AudioMonitoringSettingProperty {..}
    = AudioMonitoringSettingProperty
        {silentAudio = Prelude.pure newValue, ..}