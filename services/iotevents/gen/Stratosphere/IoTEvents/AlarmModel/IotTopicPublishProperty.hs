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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iottopicpublish.html>
    IotTopicPublishProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iottopicpublish.html#cfn-iotevents-alarmmodel-iottopicpublish-mqtttopic>
                             mqttTopic :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-iottopicpublish.html#cfn-iotevents-alarmmodel-iottopicpublish-payload>
                             payload :: (Prelude.Maybe PayloadProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIotTopicPublishProperty ::
  Value Prelude.Text -> IotTopicPublishProperty
mkIotTopicPublishProperty mqttTopic
  = IotTopicPublishProperty
      {haddock_workaround_ = (), mqttTopic = mqttTopic,
       payload = Prelude.Nothing}
instance ToResourceProperties IotTopicPublishProperty where
  toResourceProperties IotTopicPublishProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.IotTopicPublish",
         supportsTags = Prelude.False,
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