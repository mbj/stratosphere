module Stratosphere.MediaLive.Channel.AudioPidSelectionProperty (
        AudioPidSelectionProperty(..), mkAudioPidSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioPidSelectionProperty
  = AudioPidSelectionProperty {pid :: (Prelude.Maybe (Value Prelude.Integer))}
mkAudioPidSelectionProperty :: AudioPidSelectionProperty
mkAudioPidSelectionProperty
  = AudioPidSelectionProperty {pid = Prelude.Nothing}
instance ToResourceProperties AudioPidSelectionProperty where
  toResourceProperties AudioPidSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioPidSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Pid" Prelude.<$> pid])}
instance JSON.ToJSON AudioPidSelectionProperty where
  toJSON AudioPidSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Pid" Prelude.<$> pid]))
instance Property "Pid" AudioPidSelectionProperty where
  type PropertyType "Pid" AudioPidSelectionProperty = Value Prelude.Integer
  set newValue AudioPidSelectionProperty {}
    = AudioPidSelectionProperty {pid = Prelude.pure newValue, ..}