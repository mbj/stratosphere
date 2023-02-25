module Stratosphere.IVS.StreamKey (
        StreamKey(..), mkStreamKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data StreamKey
  = StreamKey {channelArn :: (Value Prelude.Text),
               tags :: (Prelude.Maybe [Tag])}
mkStreamKey :: Value Prelude.Text -> StreamKey
mkStreamKey channelArn
  = StreamKey {channelArn = channelArn, tags = Prelude.Nothing}
instance ToResourceProperties StreamKey where
  toResourceProperties StreamKey {..}
    = ResourceProperties
        {awsType = "AWS::IVS::StreamKey",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ChannelArn" JSON..= channelArn]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON StreamKey where
  toJSON StreamKey {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ChannelArn" JSON..= channelArn]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ChannelArn" StreamKey where
  type PropertyType "ChannelArn" StreamKey = Value Prelude.Text
  set newValue StreamKey {..} = StreamKey {channelArn = newValue, ..}
instance Property "Tags" StreamKey where
  type PropertyType "Tags" StreamKey = [Tag]
  set newValue StreamKey {..}
    = StreamKey {tags = Prelude.pure newValue, ..}