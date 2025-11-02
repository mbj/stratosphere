module Stratosphere.IoTFleetWise.Campaign.MqttTopicConfigProperty (
        MqttTopicConfigProperty(..), mkMqttTopicConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MqttTopicConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-mqtttopicconfig.html>
    MqttTopicConfigProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-mqtttopicconfig.html#cfn-iotfleetwise-campaign-mqtttopicconfig-executionrolearn>
                             executionRoleArn :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-campaign-mqtttopicconfig.html#cfn-iotfleetwise-campaign-mqtttopicconfig-mqtttopicarn>
                             mqttTopicArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMqttTopicConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MqttTopicConfigProperty
mkMqttTopicConfigProperty executionRoleArn mqttTopicArn
  = MqttTopicConfigProperty
      {haddock_workaround_ = (), executionRoleArn = executionRoleArn,
       mqttTopicArn = mqttTopicArn}
instance ToResourceProperties MqttTopicConfigProperty where
  toResourceProperties MqttTopicConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.MqttTopicConfig",
         supportsTags = Prelude.False,
         properties = ["ExecutionRoleArn" JSON..= executionRoleArn,
                       "MqttTopicArn" JSON..= mqttTopicArn]}
instance JSON.ToJSON MqttTopicConfigProperty where
  toJSON MqttTopicConfigProperty {..}
    = JSON.object
        ["ExecutionRoleArn" JSON..= executionRoleArn,
         "MqttTopicArn" JSON..= mqttTopicArn]
instance Property "ExecutionRoleArn" MqttTopicConfigProperty where
  type PropertyType "ExecutionRoleArn" MqttTopicConfigProperty = Value Prelude.Text
  set newValue MqttTopicConfigProperty {..}
    = MqttTopicConfigProperty {executionRoleArn = newValue, ..}
instance Property "MqttTopicArn" MqttTopicConfigProperty where
  type PropertyType "MqttTopicArn" MqttTopicConfigProperty = Value Prelude.Text
  set newValue MqttTopicConfigProperty {..}
    = MqttTopicConfigProperty {mqttTopicArn = newValue, ..}