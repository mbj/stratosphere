module Stratosphere.Kinesis.StreamConsumer (
        StreamConsumer(..), mkStreamConsumer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StreamConsumer
  = StreamConsumer {consumerName :: (Value Prelude.Text),
                    streamARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStreamConsumer ::
  Value Prelude.Text -> Value Prelude.Text -> StreamConsumer
mkStreamConsumer consumerName streamARN
  = StreamConsumer
      {consumerName = consumerName, streamARN = streamARN}
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