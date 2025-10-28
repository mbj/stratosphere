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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-streamkey.html>
    StreamKey {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-streamkey.html#cfn-ivs-streamkey-channelarn>
               channelArn :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ivs-streamkey.html#cfn-ivs-streamkey-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamKey :: Value Prelude.Text -> StreamKey
mkStreamKey channelArn
  = StreamKey
      {haddock_workaround_ = (), channelArn = channelArn,
       tags = Prelude.Nothing}
instance ToResourceProperties StreamKey where
  toResourceProperties StreamKey {..}
    = ResourceProperties
        {awsType = "AWS::IVS::StreamKey", supportsTags = Prelude.True,
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