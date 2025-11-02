module Stratosphere.Kinesis.StreamConsumer (
        StreamConsumer(..), mkStreamConsumer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamConsumer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html>
    StreamConsumer {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-consumername>
                    consumerName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesis-streamconsumer.html#cfn-kinesis-streamconsumer-streamarn>
                    streamARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamConsumer ::
  Value Prelude.Text -> Value Prelude.Text -> StreamConsumer
mkStreamConsumer consumerName streamARN
  = StreamConsumer
      {haddock_workaround_ = (), consumerName = consumerName,
       streamARN = streamARN}
instance ToResourceProperties StreamConsumer where
  toResourceProperties StreamConsumer {..}
    = ResourceProperties
        {awsType = "AWS::Kinesis::StreamConsumer",
         supportsTags = Prelude.False,
         properties = ["ConsumerName" JSON..= consumerName,
                       "StreamARN" JSON..= streamARN]}
instance JSON.ToJSON StreamConsumer where
  toJSON StreamConsumer {..}
    = JSON.object
        ["ConsumerName" JSON..= consumerName,
         "StreamARN" JSON..= streamARN]
instance Property "ConsumerName" StreamConsumer where
  type PropertyType "ConsumerName" StreamConsumer = Value Prelude.Text
  set newValue StreamConsumer {..}
    = StreamConsumer {consumerName = newValue, ..}
instance Property "StreamARN" StreamConsumer where
  type PropertyType "StreamARN" StreamConsumer = Value Prelude.Text
  set newValue StreamConsumer {..}
    = StreamConsumer {streamARN = newValue, ..}