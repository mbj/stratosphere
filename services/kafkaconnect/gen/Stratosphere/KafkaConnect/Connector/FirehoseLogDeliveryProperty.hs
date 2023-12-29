module Stratosphere.KafkaConnect.Connector.FirehoseLogDeliveryProperty (
        FirehoseLogDeliveryProperty(..), mkFirehoseLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseLogDeliveryProperty
  = FirehoseLogDeliveryProperty {deliveryStream :: (Prelude.Maybe (Value Prelude.Text)),
                                 enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFirehoseLogDeliveryProperty ::
  Value Prelude.Bool -> FirehoseLogDeliveryProperty
mkFirehoseLogDeliveryProperty enabled
  = FirehoseLogDeliveryProperty
      {enabled = enabled, deliveryStream = Prelude.Nothing}
instance ToResourceProperties FirehoseLogDeliveryProperty where
  toResourceProperties FirehoseLogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.FirehoseLogDelivery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream]))}
instance JSON.ToJSON FirehoseLogDeliveryProperty where
  toJSON FirehoseLogDeliveryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream])))
instance Property "DeliveryStream" FirehoseLogDeliveryProperty where
  type PropertyType "DeliveryStream" FirehoseLogDeliveryProperty = Value Prelude.Text
  set newValue FirehoseLogDeliveryProperty {..}
    = FirehoseLogDeliveryProperty
        {deliveryStream = Prelude.pure newValue, ..}
instance Property "Enabled" FirehoseLogDeliveryProperty where
  type PropertyType "Enabled" FirehoseLogDeliveryProperty = Value Prelude.Bool
  set newValue FirehoseLogDeliveryProperty {..}
    = FirehoseLogDeliveryProperty {enabled = newValue, ..}