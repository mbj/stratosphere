module Stratosphere.MediaLive.Channel.InputChannelLevelProperty (
        InputChannelLevelProperty(..), mkInputChannelLevelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputChannelLevelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html>
    InputChannelLevelProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html#cfn-medialive-channel-inputchannellevel-gain>
                               gain :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-inputchannellevel.html#cfn-medialive-channel-inputchannellevel-inputchannel>
                               inputChannel :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputChannelLevelProperty :: InputChannelLevelProperty
mkInputChannelLevelProperty
  = InputChannelLevelProperty
      {haddock_workaround_ = (), gain = Prelude.Nothing,
       inputChannel = Prelude.Nothing}
instance ToResourceProperties InputChannelLevelProperty where
  toResourceProperties InputChannelLevelProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.InputChannelLevel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Gain" Prelude.<$> gain,
                            (JSON..=) "InputChannel" Prelude.<$> inputChannel])}
instance JSON.ToJSON InputChannelLevelProperty where
  toJSON InputChannelLevelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Gain" Prelude.<$> gain,
               (JSON..=) "InputChannel" Prelude.<$> inputChannel]))
instance Property "Gain" InputChannelLevelProperty where
  type PropertyType "Gain" InputChannelLevelProperty = Value Prelude.Integer
  set newValue InputChannelLevelProperty {..}
    = InputChannelLevelProperty {gain = Prelude.pure newValue, ..}
instance Property "InputChannel" InputChannelLevelProperty where
  type PropertyType "InputChannel" InputChannelLevelProperty = Value Prelude.Integer
  set newValue InputChannelLevelProperty {..}
    = InputChannelLevelProperty
        {inputChannel = Prelude.pure newValue, ..}