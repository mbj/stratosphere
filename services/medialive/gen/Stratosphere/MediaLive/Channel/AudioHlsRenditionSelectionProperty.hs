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
  = AudioHlsRenditionSelectionProperty {groupId :: (Prelude.Maybe (Value Prelude.Text)),
                                        name :: (Prelude.Maybe (Value Prelude.Text))}
mkAudioHlsRenditionSelectionProperty ::
  AudioHlsRenditionSelectionProperty
mkAudioHlsRenditionSelectionProperty
  = AudioHlsRenditionSelectionProperty
      {groupId = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties AudioHlsRenditionSelectionProperty where
  toResourceProperties AudioHlsRenditionSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioHlsRenditionSelection",
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