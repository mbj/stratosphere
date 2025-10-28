module Stratosphere.MediaLive.Channel.AudioHlsRenditionSelectionProperty (
        AudioHlsRenditionSelectionProperty(..),
        mkAudioHlsRenditionSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioHlsRenditionSelectionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiohlsrenditionselection.html>
    AudioHlsRenditionSelectionProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiohlsrenditionselection.html#cfn-medialive-channel-audiohlsrenditionselection-groupid>
                                        groupId :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiohlsrenditionselection.html#cfn-medialive-channel-audiohlsrenditionselection-name>
                                        name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioHlsRenditionSelectionProperty ::
  AudioHlsRenditionSelectionProperty
mkAudioHlsRenditionSelectionProperty
  = AudioHlsRenditionSelectionProperty
      {haddock_workaround_ = (), groupId = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties AudioHlsRenditionSelectionProperty where
  toResourceProperties AudioHlsRenditionSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioHlsRenditionSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GroupId" Prelude.<$> groupId,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON AudioHlsRenditionSelectionProperty where
  toJSON AudioHlsRenditionSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GroupId" Prelude.<$> groupId,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "GroupId" AudioHlsRenditionSelectionProperty where
  type PropertyType "GroupId" AudioHlsRenditionSelectionProperty = Value Prelude.Text
  set newValue AudioHlsRenditionSelectionProperty {..}
    = AudioHlsRenditionSelectionProperty
        {groupId = Prelude.pure newValue, ..}
instance Property "Name" AudioHlsRenditionSelectionProperty where
  type PropertyType "Name" AudioHlsRenditionSelectionProperty = Value Prelude.Text
  set newValue AudioHlsRenditionSelectionProperty {..}
    = AudioHlsRenditionSelectionProperty
        {name = Prelude.pure newValue, ..}