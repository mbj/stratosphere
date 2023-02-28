module Stratosphere.CodeGuruProfiler.ProfilingGroup.ChannelProperty (
        ChannelProperty(..), mkChannelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ChannelProperty
  = ChannelProperty {channelId :: (Prelude.Maybe (Value Prelude.Text)),
                     channelUri :: (Value Prelude.Text)}
mkChannelProperty :: Value Prelude.Text -> ChannelProperty
mkChannelProperty channelUri
  = ChannelProperty
      {channelUri = channelUri, channelId = Prelude.Nothing}
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