module Stratosphere.IoT.TopicRule.KafkaActionHeaderProperty (
        KafkaActionHeaderProperty(..), mkKafkaActionHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaActionHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kafkaactionheader.html>
    KafkaActionHeaderProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kafkaactionheader.html#cfn-iot-topicrule-kafkaactionheader-key>
                               key :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-kafkaactionheader.html#cfn-iot-topicrule-kafkaactionheader-value>
                               value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKafkaActionHeaderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> KafkaActionHeaderProperty
mkKafkaActionHeaderProperty key value
  = KafkaActionHeaderProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties KafkaActionHeaderProperty where
  toResourceProperties KafkaActionHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.KafkaActionHeader",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON KafkaActionHeaderProperty where
  toJSON KafkaActionHeaderProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" KafkaActionHeaderProperty where
  type PropertyType "Key" KafkaActionHeaderProperty = Value Prelude.Text
  set newValue KafkaActionHeaderProperty {..}
    = KafkaActionHeaderProperty {key = newValue, ..}
instance Property "Value" KafkaActionHeaderProperty where
  type PropertyType "Value" KafkaActionHeaderProperty = Value Prelude.Text
  set newValue KafkaActionHeaderProperty {..}
    = KafkaActionHeaderProperty {value = newValue, ..}