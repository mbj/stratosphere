module Stratosphere.MediaLive.Channel.AudioSelectorProperty (
        module Exports, AudioSelectorProperty(..), mkAudioSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioSelectorSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html>
    AudioSelectorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audioselector.html#cfn-medialive-channel-audioselector-selectorsettings>
                           selectorSettings :: (Prelude.Maybe AudioSelectorSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioSelectorProperty :: AudioSelectorProperty
mkAudioSelectorProperty
  = AudioSelectorProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       selectorSettings = Prelude.Nothing}
instance ToResourceProperties AudioSelectorProperty where
  toResourceProperties AudioSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings])}
instance JSON.ToJSON AudioSelectorProperty where
  toJSON AudioSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings]))
instance Property "Name" AudioSelectorProperty where
  type PropertyType "Name" AudioSelectorProperty = Value Prelude.Text
  set newValue AudioSelectorProperty {..}
    = AudioSelectorProperty {name = Prelude.pure newValue, ..}
instance Property "SelectorSettings" AudioSelectorProperty where
  type PropertyType "SelectorSettings" AudioSelectorProperty = AudioSelectorSettingsProperty
  set newValue AudioSelectorProperty {..}
    = AudioSelectorProperty
        {selectorSettings = Prelude.pure newValue, ..}