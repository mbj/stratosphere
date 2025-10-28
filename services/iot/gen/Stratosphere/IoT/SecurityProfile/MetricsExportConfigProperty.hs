module Stratosphere.IoT.SecurityProfile.MetricsExportConfigProperty (
        MetricsExportConfigProperty(..), mkMetricsExportConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsExportConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricsexportconfig.html>
    MetricsExportConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricsexportconfig.html#cfn-iot-securityprofile-metricsexportconfig-mqtttopic>
                                 mqttTopic :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-securityprofile-metricsexportconfig.html#cfn-iot-securityprofile-metricsexportconfig-rolearn>
                                 roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsExportConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MetricsExportConfigProperty
mkMetricsExportConfigProperty mqttTopic roleArn
  = MetricsExportConfigProperty
      {haddock_workaround_ = (), mqttTopic = mqttTopic,
       roleArn = roleArn}
instance ToResourceProperties MetricsExportConfigProperty where
  toResourceProperties MetricsExportConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::SecurityProfile.MetricsExportConfig",
         supportsTags = Prelude.False,
         properties = ["MqttTopic" JSON..= mqttTopic,
                       "RoleArn" JSON..= roleArn]}
instance JSON.ToJSON MetricsExportConfigProperty where
  toJSON MetricsExportConfigProperty {..}
    = JSON.object
        ["MqttTopic" JSON..= mqttTopic, "RoleArn" JSON..= roleArn]
instance Property "MqttTopic" MetricsExportConfigProperty where
  type PropertyType "MqttTopic" MetricsExportConfigProperty = Value Prelude.Text
  set newValue MetricsExportConfigProperty {..}
    = MetricsExportConfigProperty {mqttTopic = newValue, ..}
instance Property "RoleArn" MetricsExportConfigProperty where
  type PropertyType "RoleArn" MetricsExportConfigProperty = Value Prelude.Text
  set newValue MetricsExportConfigProperty {..}
    = MetricsExportConfigProperty {roleArn = newValue, ..}