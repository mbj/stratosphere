module Stratosphere.IoT.SecurityProfile.MetricsExportConfigProperty (
        MetricsExportConfigProperty(..), mkMetricsExportConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricsExportConfigProperty
  = MetricsExportConfigProperty {mqttTopic :: (Value Prelude.Text),
                                 roleArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricsExportConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MetricsExportConfigProperty
mkMetricsExportConfigProperty mqttTopic roleArn
  = MetricsExportConfigProperty
      {mqttTopic = mqttTopic, roleArn = roleArn}
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