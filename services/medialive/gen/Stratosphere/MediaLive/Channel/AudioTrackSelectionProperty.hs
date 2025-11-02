module Stratosphere.MediaLive.Channel.AudioTrackSelectionProperty (
        module Exports, AudioTrackSelectionProperty(..),
        mkAudioTrackSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioDolbyEDecodeProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioTrackProperty as Exports
import Stratosphere.ResourceProperties
data AudioTrackSelectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrackselection.html>
    AudioTrackSelectionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrackselection.html#cfn-medialive-channel-audiotrackselection-dolbyedecode>
                                 dolbyEDecode :: (Prelude.Maybe AudioDolbyEDecodeProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiotrackselection.html#cfn-medialive-channel-audiotrackselection-tracks>
                                 tracks :: (Prelude.Maybe [AudioTrackProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioTrackSelectionProperty :: AudioTrackSelectionProperty
mkAudioTrackSelectionProperty
  = AudioTrackSelectionProperty
      {haddock_workaround_ = (), dolbyEDecode = Prelude.Nothing,
       tracks = Prelude.Nothing}
instance ToResourceProperties AudioTrackSelectionProperty where
  toResourceProperties AudioTrackSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioTrackSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DolbyEDecode" Prelude.<$> dolbyEDecode,
                            (JSON..=) "Tracks" Prelude.<$> tracks])}
instance JSON.ToJSON AudioTrackSelectionProperty where
  toJSON AudioTrackSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DolbyEDecode" Prelude.<$> dolbyEDecode,
               (JSON..=) "Tracks" Prelude.<$> tracks]))
instance Property "DolbyEDecode" AudioTrackSelectionProperty where
  type PropertyType "DolbyEDecode" AudioTrackSelectionProperty = AudioDolbyEDecodeProperty
  set newValue AudioTrackSelectionProperty {..}
    = AudioTrackSelectionProperty
        {dolbyEDecode = Prelude.pure newValue, ..}
instance Property "Tracks" AudioTrackSelectionProperty where
  type PropertyType "Tracks" AudioTrackSelectionProperty = [AudioTrackProperty]
  set newValue AudioTrackSelectionProperty {..}
    = AudioTrackSelectionProperty {tracks = Prelude.pure newValue, ..}