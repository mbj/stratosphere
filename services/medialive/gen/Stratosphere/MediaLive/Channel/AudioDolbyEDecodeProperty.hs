module Stratosphere.MediaLive.Channel.AudioDolbyEDecodeProperty (
        AudioDolbyEDecodeProperty(..), mkAudioDolbyEDecodeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioDolbyEDecodeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodolbyedecode.html>
    AudioDolbyEDecodeProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiodolbyedecode.html#cfn-medialive-channel-audiodolbyedecode-programselection>
                               programSelection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioDolbyEDecodeProperty :: AudioDolbyEDecodeProperty
mkAudioDolbyEDecodeProperty
  = AudioDolbyEDecodeProperty
      {haddock_workaround_ = (), programSelection = Prelude.Nothing}
instance ToResourceProperties AudioDolbyEDecodeProperty where
  toResourceProperties AudioDolbyEDecodeProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioDolbyEDecode",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProgramSelection" Prelude.<$> programSelection])}
instance JSON.ToJSON AudioDolbyEDecodeProperty where
  toJSON AudioDolbyEDecodeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProgramSelection" Prelude.<$> programSelection]))
instance Property "ProgramSelection" AudioDolbyEDecodeProperty where
  type PropertyType "ProgramSelection" AudioDolbyEDecodeProperty = Value Prelude.Text
  set newValue AudioDolbyEDecodeProperty {..}
    = AudioDolbyEDecodeProperty
        {programSelection = Prelude.pure newValue, ..}