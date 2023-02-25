module Stratosphere.MediaLive.Channel.AudioTrackSelectionProperty (
        module Exports, AudioTrackSelectionProperty(..),
        mkAudioTrackSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioTrackProperty as Exports
import Stratosphere.ResourceProperties
data AudioTrackSelectionProperty
  = AudioTrackSelectionProperty {tracks :: (Prelude.Maybe [AudioTrackProperty])}
mkAudioTrackSelectionProperty :: AudioTrackSelectionProperty
mkAudioTrackSelectionProperty
  = AudioTrackSelectionProperty {tracks = Prelude.Nothing}
instance ToResourceProperties AudioTrackSelectionProperty where
  toResourceProperties AudioTrackSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioTrackSelection",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Tracks" Prelude.<$> tracks])}
instance JSON.ToJSON AudioTrackSelectionProperty where
  toJSON AudioTrackSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Tracks" Prelude.<$> tracks]))
instance Property "Tracks" AudioTrackSelectionProperty where
  type PropertyType "Tracks" AudioTrackSelectionProperty = [AudioTrackProperty]
  set newValue AudioTrackSelectionProperty {}
    = AudioTrackSelectionProperty {tracks = Prelude.pure newValue, ..}