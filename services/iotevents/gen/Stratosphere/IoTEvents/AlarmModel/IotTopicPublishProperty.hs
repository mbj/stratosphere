module Stratosphere.IoTEvents.AlarmModel.IotTopicPublishProperty (
        module Exports, IotTopicPublishProperty(..),
        mkIotTopicPublishProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IotTopicPublishProperty
  = IotTopicPublishProperty {mqttTopic :: (Value Prelude.Text),
                             payload :: (Prelude.Maybe PayloadProperty)}
mkIotTopicPublishProperty ::
  Value Prelude.Text -> IotTopicPublishProperty
mkIotTopicPublishProperty mqttTopic
  = IotTopicPublishProperty
      {mqttTopic = mqttTopic, payload = Prelude.Nothing}
instance ToResourceProperties IotTopicPublishProperty where
  toResourceProperties IotTopicPublishProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.IotTopicPublish",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MqttTopic" JSON..= mqttTopic]
                           (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload]))}
instance JSON.ToJSON IotTopicPublishProperty where
  toJSON IotTopicPublishProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MqttTopic" JSON..= mqttTopic]
              (Prelude.catMaybes [(JSON..=) "Payload" Prelude.<$> payload])))
instance Property "MqttTopic" IotTopicPublishProperty where
  type PropertyType "MqttTopic" IotTopicPublishProperty = Value Prelude.Text
  set newValue IotTopicPublishProperty {..}
    = IotTopicPublishProperty {mqttTopic = newValue, ..}
instance Property "Payload" IotTopicPublishProperty where
  type PropertyType "Payload" IotTopicPublishProperty = PayloadProperty
  set newValue IotTopicPublishProperty {..}
    = IotTopicPublishProperty {payload = Prelude.pure newValue, ..}