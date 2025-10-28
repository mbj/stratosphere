module Stratosphere.IoT.TopicRule.FirehoseActionProperty (
        FirehoseActionProperty(..), mkFirehoseActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseActionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html>
    FirehoseActionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-batchmode>
                            batchMode :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-deliverystreamname>
                            deliveryStreamName :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-rolearn>
                            roleArn :: (Value Prelude.Text),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-firehoseaction.html#cfn-iot-topicrule-firehoseaction-separator>
                            separator :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseActionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FirehoseActionProperty
mkFirehoseActionProperty deliveryStreamName roleArn
  = FirehoseActionProperty
      {deliveryStreamName = deliveryStreamName, roleArn = roleArn,
       batchMode = Prelude.Nothing, separator = Prelude.Nothing}
instance ToResourceProperties FirehoseActionProperty where
  toResourceProperties FirehoseActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.FirehoseAction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeliveryStreamName" JSON..= deliveryStreamName,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BatchMode" Prelude.<$> batchMode,
                               (JSON..=) "Separator" Prelude.<$> separator]))}
instance JSON.ToJSON FirehoseActionProperty where
  toJSON FirehoseActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeliveryStreamName" JSON..= deliveryStreamName,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BatchMode" Prelude.<$> batchMode,
                  (JSON..=) "Separator" Prelude.<$> separator])))
instance Property "BatchMode" FirehoseActionProperty where
  type PropertyType "BatchMode" FirehoseActionProperty = Value Prelude.Bool
  set newValue FirehoseActionProperty {..}
    = FirehoseActionProperty {batchMode = Prelude.pure newValue, ..}
instance Property "DeliveryStreamName" FirehoseActionProperty where
  type PropertyType "DeliveryStreamName" FirehoseActionProperty = Value Prelude.Text
  set newValue FirehoseActionProperty {..}
    = FirehoseActionProperty {deliveryStreamName = newValue, ..}
instance Property "RoleArn" FirehoseActionProperty where
  type PropertyType "RoleArn" FirehoseActionProperty = Value Prelude.Text
  set newValue FirehoseActionProperty {..}
    = FirehoseActionProperty {roleArn = newValue, ..}
instance Property "Separator" FirehoseActionProperty where
  type PropertyType "Separator" FirehoseActionProperty = Value Prelude.Text
  set newValue FirehoseActionProperty {..}
    = FirehoseActionProperty {separator = Prelude.pure newValue, ..}