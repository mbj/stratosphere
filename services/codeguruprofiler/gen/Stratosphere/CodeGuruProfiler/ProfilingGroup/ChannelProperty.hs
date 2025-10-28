module Stratosphere.CodeGuruProfiler.ProfilingGroup.ChannelProperty (
        ChannelProperty(..), mkChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html>
    ChannelProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html#cfn-codeguruprofiler-profilinggroup-channel-channelid>
                     channelId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codeguruprofiler-profilinggroup-channel.html#cfn-codeguruprofiler-profilinggroup-channel-channeluri>
                     channelUri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkChannelProperty :: Value Prelude.Text -> ChannelProperty
mkChannelProperty channelUri
  = ChannelProperty
      {haddock_workaround_ = (), channelUri = channelUri,
       channelId = Prelude.Nothing}
instance ToResourceProperties ChannelProperty where
  toResourceProperties ChannelProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeGuruProfiler::ProfilingGroup.Channel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["channelUri" JSON..= channelUri]
                           (Prelude.catMaybes [(JSON..=) "channelId" Prelude.<$> channelId]))}
instance JSON.ToJSON ChannelProperty where
  toJSON ChannelProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["channelUri" JSON..= channelUri]
              (Prelude.catMaybes [(JSON..=) "channelId" Prelude.<$> channelId])))
instance Property "channelId" ChannelProperty where
  type PropertyType "channelId" ChannelProperty = Value Prelude.Text
  set newValue ChannelProperty {..}
    = ChannelProperty {channelId = Prelude.pure newValue, ..}
instance Property "channelUri" ChannelProperty where
  type PropertyType "channelUri" ChannelProperty = Value Prelude.Text
  set newValue ChannelProperty {..}
    = ChannelProperty {channelUri = newValue, ..}