module Stratosphere.IoTEvents.DetectorModel.FirehoseProperty (
        module Exports, FirehoseProperty(..), mkFirehoseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html>
    FirehoseProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-deliverystreamname>
                      deliveryStreamName :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-payload>
                      payload :: (Prelude.Maybe PayloadProperty),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-firehose.html#cfn-iotevents-detectormodel-firehose-separator>
                      separator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseProperty :: Value Prelude.Text -> FirehoseProperty
mkFirehoseProperty deliveryStreamName
  = FirehoseProperty
      {deliveryStreamName = deliveryStreamName,
       payload = Prelude.Nothing, separator = Prelude.Nothing}
instance ToResourceProperties FirehoseProperty where
  toResourceProperties FirehoseProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Firehose",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeliveryStreamName" JSON..= deliveryStreamName]
                           (Prelude.catMaybes
                              [(JSON..=) "Payload" Prelude.<$> payload,
                               (JSON..=) "Separator" Prelude.<$> separator]))}
instance JSON.ToJSON FirehoseProperty where
  toJSON FirehoseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeliveryStreamName" JSON..= deliveryStreamName]
              (Prelude.catMaybes
                 [(JSON..=) "Payload" Prelude.<$> payload,
                  (JSON..=) "Separator" Prelude.<$> separator])))
instance Property "DeliveryStreamName" FirehoseProperty where
  type PropertyType "DeliveryStreamName" FirehoseProperty = Value Prelude.Text
  set newValue FirehoseProperty {..}
    = FirehoseProperty {deliveryStreamName = newValue, ..}
instance Property "Payload" FirehoseProperty where
  type PropertyType "Payload" FirehoseProperty = PayloadProperty
  set newValue FirehoseProperty {..}
    = FirehoseProperty {payload = Prelude.pure newValue, ..}
instance Property "Separator" FirehoseProperty where
  type PropertyType "Separator" FirehoseProperty = Value Prelude.Text
  set newValue FirehoseProperty {..}
    = FirehoseProperty {separator = Prelude.pure newValue, ..}