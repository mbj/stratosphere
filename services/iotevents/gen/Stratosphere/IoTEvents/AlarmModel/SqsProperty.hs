module Stratosphere.IoTEvents.AlarmModel.SqsProperty (
        module Exports, SqsProperty(..), mkSqsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.AlarmModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-sqs.html>
    SqsProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-sqs.html#cfn-iotevents-alarmmodel-sqs-payload>
                 payload :: (Prelude.Maybe PayloadProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-sqs.html#cfn-iotevents-alarmmodel-sqs-queueurl>
                 queueUrl :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-sqs.html#cfn-iotevents-alarmmodel-sqs-usebase64>
                 useBase64 :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSqsProperty :: Value Prelude.Text -> SqsProperty
mkSqsProperty queueUrl
  = SqsProperty
      {haddock_workaround_ = (), queueUrl = queueUrl,
       payload = Prelude.Nothing, useBase64 = Prelude.Nothing}
instance ToResourceProperties SqsProperty where
  toResourceProperties SqsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.Sqs",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueueUrl" JSON..= queueUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "Payload" Prelude.<$> payload,
                               (JSON..=) "UseBase64" Prelude.<$> useBase64]))}
instance JSON.ToJSON SqsProperty where
  toJSON SqsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueueUrl" JSON..= queueUrl]
              (Prelude.catMaybes
                 [(JSON..=) "Payload" Prelude.<$> payload,
                  (JSON..=) "UseBase64" Prelude.<$> useBase64])))
instance Property "Payload" SqsProperty where
  type PropertyType "Payload" SqsProperty = PayloadProperty
  set newValue SqsProperty {..}
    = SqsProperty {payload = Prelude.pure newValue, ..}
instance Property "QueueUrl" SqsProperty where
  type PropertyType "QueueUrl" SqsProperty = Value Prelude.Text
  set newValue SqsProperty {..}
    = SqsProperty {queueUrl = newValue, ..}
instance Property "UseBase64" SqsProperty where
  type PropertyType "UseBase64" SqsProperty = Value Prelude.Bool
  set newValue SqsProperty {..}
    = SqsProperty {useBase64 = Prelude.pure newValue, ..}