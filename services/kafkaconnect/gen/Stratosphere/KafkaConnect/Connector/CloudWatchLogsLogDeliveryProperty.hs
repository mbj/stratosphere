module Stratosphere.KafkaConnect.Connector.CloudWatchLogsLogDeliveryProperty (
        CloudWatchLogsLogDeliveryProperty(..),
        mkCloudWatchLogsLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchLogsLogDeliveryProperty
  = CloudWatchLogsLogDeliveryProperty {enabled :: (Value Prelude.Bool),
                                       logGroup :: (Prelude.Maybe (Value Prelude.Text))}
mkCloudWatchLogsLogDeliveryProperty ::
  Value Prelude.Bool -> CloudWatchLogsLogDeliveryProperty
mkCloudWatchLogsLogDeliveryProperty enabled
  = CloudWatchLogsLogDeliveryProperty
      {enabled = enabled, logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsLogDeliveryProperty where
  toResourceProperties CloudWatchLogsLogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.CloudWatchLogsLogDelivery",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup]))}
instance JSON.ToJSON CloudWatchLogsLogDeliveryProperty where
  toJSON CloudWatchLogsLogDeliveryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes [(JSON..=) "LogGroup" Prelude.<$> logGroup])))
instance Property "Enabled" CloudWatchLogsLogDeliveryProperty where
  type PropertyType "Enabled" CloudWatchLogsLogDeliveryProperty = Value Prelude.Bool
  set newValue CloudWatchLogsLogDeliveryProperty {..}
    = CloudWatchLogsLogDeliveryProperty {enabled = newValue, ..}
instance Property "LogGroup" CloudWatchLogsLogDeliveryProperty where
  type PropertyType "LogGroup" CloudWatchLogsLogDeliveryProperty = Value Prelude.Text
  set newValue CloudWatchLogsLogDeliveryProperty {..}
    = CloudWatchLogsLogDeliveryProperty
        {logGroup = Prelude.pure newValue, ..}