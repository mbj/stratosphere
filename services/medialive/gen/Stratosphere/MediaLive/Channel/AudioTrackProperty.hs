module Stratosphere.MediaLive.Channel.AudioTrackProperty (
        AudioTrackProperty(..), mkAudioTrackProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioTrackProperty
  = AudioTrackProperty {track :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioTrackProperty :: AudioTrackProperty
mkAudioTrackProperty = AudioTrackProperty {track = Prelude.Nothing}
instance ToResourceProperties AudioTrackProperty where
  toResourceProperties AudioTrackProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioTrack",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Track" Prelude.<$> track])}
instance JSON.ToJSON AudioTrackProperty where
  toJSON AudioTrackProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Track" Prelude.<$> track]))
instance Property "Track" AudioTrackProperty where
  type PropertyType "Track" AudioTrackProperty = Value Prelude.Integer
  set newValue AudioTrackProperty {}
    = AudioTrackProperty {track = Prelude.pure newValue, ..}