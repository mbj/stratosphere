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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-cloudwatchlogslogdelivery.html>
    CloudWatchLogsLogDeliveryProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-cloudwatchlogslogdelivery.html#cfn-kafkaconnect-connector-cloudwatchlogslogdelivery-enabled>
                                       enabled :: (Value Prelude.Bool),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-cloudwatchlogslogdelivery.html#cfn-kafkaconnect-connector-cloudwatchlogslogdelivery-loggroup>
                                       logGroup :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchLogsLogDeliveryProperty ::
  Value Prelude.Bool -> CloudWatchLogsLogDeliveryProperty
mkCloudWatchLogsLogDeliveryProperty enabled
  = CloudWatchLogsLogDeliveryProperty
      {haddock_workaround_ = (), enabled = enabled,
       logGroup = Prelude.Nothing}
instance ToResourceProperties CloudWatchLogsLogDeliveryProperty where
  toResourceProperties CloudWatchLogsLogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.CloudWatchLogsLogDelivery",
         supportsTags = Prelude.False,
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