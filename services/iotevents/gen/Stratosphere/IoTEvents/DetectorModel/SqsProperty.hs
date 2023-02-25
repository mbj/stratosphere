module Stratosphere.IoTEvents.DetectorModel.SqsProperty (
        module Exports, SqsProperty(..), mkSqsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTEvents.DetectorModel.PayloadProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SqsProperty
  = SqsProperty {payload :: (Prelude.Maybe PayloadProperty),
                 queueUrl :: (Value Prelude.Text),
                 useBase64 :: (Prelude.Maybe (Value Prelude.Bool))}
mkSqsProperty :: Value Prelude.Text -> SqsProperty
mkSqsProperty queueUrl
  = SqsProperty
      {queueUrl = queueUrl, payload = Prelude.Nothing,
       useBase64 = Prelude.Nothing}
instance ToResourceProperties SqsProperty where
  toResourceProperties SqsProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::DetectorModel.Sqs",
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