module Stratosphere.IoT.TopicRule.FirehoseActionProperty (
        FirehoseActionProperty(..), mkFirehoseActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseActionProperty
  = FirehoseActionProperty {batchMode :: (Prelude.Maybe (Value Prelude.Bool)),
                            deliveryStreamName :: (Value Prelude.Text),
                            roleArn :: (Value Prelude.Text),
                            separator :: (Prelude.Maybe (Value Prelude.Text))}
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