module Stratosphere.MediaLive.Channel.ChannelEngineVersionRequestProperty (
        ChannelEngineVersionRequestProperty(..),
        mkChannelEngineVersionRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelEngineVersionRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-channelengineversionrequest.html>
    ChannelEngineVersionRequestProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-channelengineversionrequest.html#cfn-medialive-channel-channelengineversionrequest-version>
                                         version :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelEngineVersionRequestProperty ::
  ChannelEngineVersionRequestProperty
mkChannelEngineVersionRequestProperty
  = ChannelEngineVersionRequestProperty
      {haddock_workaround_ = (), version = Prelude.Nothing}
instance ToResourceProperties ChannelEngineVersionRequestProperty where
  toResourceProperties ChannelEngineVersionRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ChannelEngineVersionRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version])}
instance JSON.ToJSON ChannelEngineVersionRequestProperty where
  toJSON ChannelEngineVersionRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Version" Prelude.<$> version]))
instance Property "Version" ChannelEngineVersionRequestProperty where
  type PropertyType "Version" ChannelEngineVersionRequestProperty = Value Prelude.Text
  set newValue ChannelEngineVersionRequestProperty {..}
    = ChannelEngineVersionRequestProperty
        {version = Prelude.pure newValue, ..}