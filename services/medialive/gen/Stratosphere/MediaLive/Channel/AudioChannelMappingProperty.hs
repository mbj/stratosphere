module Stratosphere.MediaLive.Channel.AudioChannelMappingProperty (
        module Exports, AudioChannelMappingProperty(..),
        mkAudioChannelMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.InputChannelLevelProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioChannelMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html>
    AudioChannelMappingProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html#cfn-medialive-channel-audiochannelmapping-inputchannellevels>
                                 inputChannelLevels :: (Prelude.Maybe [InputChannelLevelProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-audiochannelmapping.html#cfn-medialive-channel-audiochannelmapping-outputchannel>
                                 outputChannel :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioChannelMappingProperty :: AudioChannelMappingProperty
mkAudioChannelMappingProperty
  = AudioChannelMappingProperty
      {haddock_workaround_ = (), inputChannelLevels = Prelude.Nothing,
       outputChannel = Prelude.Nothing}
instance ToResourceProperties AudioChannelMappingProperty where
  toResourceProperties AudioChannelMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioChannelMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InputChannelLevels" Prelude.<$> inputChannelLevels,
                            (JSON..=) "OutputChannel" Prelude.<$> outputChannel])}
instance JSON.ToJSON AudioChannelMappingProperty where
  toJSON AudioChannelMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InputChannelLevels" Prelude.<$> inputChannelLevels,
               (JSON..=) "OutputChannel" Prelude.<$> outputChannel]))
instance Property "InputChannelLevels" AudioChannelMappingProperty where
  type PropertyType "InputChannelLevels" AudioChannelMappingProperty = [InputChannelLevelProperty]
  set newValue AudioChannelMappingProperty {..}
    = AudioChannelMappingProperty
        {inputChannelLevels = Prelude.pure newValue, ..}
instance Property "OutputChannel" AudioChannelMappingProperty where
  type PropertyType "OutputChannel" AudioChannelMappingProperty = Value Prelude.Integer
  set newValue AudioChannelMappingProperty {..}
    = AudioChannelMappingProperty
        {outputChannel = Prelude.pure newValue, ..}