module Stratosphere.IoT.TopicRule.KafkaActionProperty (
        KafkaActionProperty(..), mkKafkaActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KafkaActionProperty
  = KafkaActionProperty {clientProperties :: (Prelude.Map Prelude.Text (Value Prelude.Text)),
                         destinationArn :: (Value Prelude.Text),
                         key :: (Prelude.Maybe (Value Prelude.Text)),
                         partition :: (Prelude.Maybe (Value Prelude.Text)),
                         topic :: (Value Prelude.Text)}
mkKafkaActionProperty ::
  Prelude.Map Prelude.Text (Value Prelude.Text)
  -> Value Prelude.Text -> Value Prelude.Text -> KafkaActionProperty
mkKafkaActionProperty clientProperties destinationArn topic
  = KafkaActionProperty
      {clientProperties = clientProperties,
       destinationArn = destinationArn, topic = topic,
       key = Prelude.Nothing, partition = Prelude.Nothing}
instance ToResourceProperties KafkaActionProperty where
  toResourceProperties KafkaActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.KafkaAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientProperties" JSON..= clientProperties,
                            "DestinationArn" JSON..= destinationArn, "Topic" JSON..= topic]
                           (Prelude.catMaybes
                              [(JSON..=) "Key" Prelude.<$> key,
                               (JSON..=) "Partition" Prelude.<$> partition]))}
instance JSON.ToJSON KafkaActionProperty where
  toJSON KafkaActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientProperties" JSON..= clientProperties,
               "DestinationArn" JSON..= destinationArn, "Topic" JSON..= topic]
              (Prelude.catMaybes
                 [(JSON..=) "Key" Prelude.<$> key,
                  (JSON..=) "Partition" Prelude.<$> partition])))
instance Property "ClientProperties" KafkaActionProperty where
  type PropertyType "ClientProperties" KafkaActionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue KafkaActionProperty {..}
    = KafkaActionProperty {clientProperties = newValue, ..}
instance Property "DestinationArn" KafkaActionProperty where
  type PropertyType "DestinationArn" KafkaActionProperty = Value Prelude.Text
  set newValue KafkaActionProperty {..}
    = KafkaActionProperty {destinationArn = newValue, ..}
instance Property "Key" KafkaActionProperty where
  type PropertyType "Key" KafkaActionProperty = Value Prelude.Text
  set newValue KafkaActionProperty {..}
    = KafkaActionProperty {key = Prelude.pure newValue, ..}
instance Property "Partition" KafkaActionProperty where
  type PropertyType "Partition" KafkaActionProperty = Value Prelude.Text
  set newValue KafkaActionProperty {..}
    = KafkaActionProperty {partition = Prelude.pure newValue, ..}
instance Property "Topic" KafkaActionProperty where
  type PropertyType "Topic" KafkaActionProperty = Value Prelude.Text
  set newValue KafkaActionProperty {..}
    = KafkaActionProperty {topic = newValue, ..}