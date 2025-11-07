module Stratosphere.MediaConnect.Flow.SilentAudioProperty (
        SilentAudioProperty(..), mkSilentAudioProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SilentAudioProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-silentaudio.html>
    SilentAudioProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-silentaudio.html#cfn-mediaconnect-flow-silentaudio-state>
                         state :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-silentaudio.html#cfn-mediaconnect-flow-silentaudio-thresholdseconds>
                         thresholdSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSilentAudioProperty :: SilentAudioProperty
mkSilentAudioProperty
  = SilentAudioProperty
      {haddock_workaround_ = (), state = Prelude.Nothing,
       thresholdSeconds = Prelude.Nothing}
instance ToResourceProperties SilentAudioProperty where
  toResourceProperties SilentAudioProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.SilentAudio",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "State" Prelude.<$> state,
                            (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds])}
instance JSON.ToJSON SilentAudioProperty where
  toJSON SilentAudioProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "State" Prelude.<$> state,
               (JSON..=) "ThresholdSeconds" Prelude.<$> thresholdSeconds]))
instance Property "State" SilentAudioProperty where
  type PropertyType "State" SilentAudioProperty = Value Prelude.Text
  set newValue SilentAudioProperty {..}
    = SilentAudioProperty {state = Prelude.pure newValue, ..}
instance Property "ThresholdSeconds" SilentAudioProperty where
  type PropertyType "ThresholdSeconds" SilentAudioProperty = Value Prelude.Integer
  set newValue SilentAudioProperty {..}
    = SilentAudioProperty
        {thresholdSeconds = Prelude.pure newValue, ..}