module Stratosphere.MSK.Cluster.FirehoseProperty (
        FirehoseProperty(..), mkFirehoseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FirehoseProperty
  = FirehoseProperty {deliveryStream :: (Prelude.Maybe (Value Prelude.Text)),
                      enabled :: (Value Prelude.Bool)}
mkFirehoseProperty :: Value Prelude.Bool -> FirehoseProperty
mkFirehoseProperty enabled
  = FirehoseProperty
      {enabled = enabled, deliveryStream = Prelude.Nothing}
instance ToResourceProperties FirehoseProperty where
  toResourceProperties FirehoseProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Firehose",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream]))}
instance JSON.ToJSON FirehoseProperty where
  toJSON FirehoseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "DeliveryStream" Prelude.<$> deliveryStream])))
instance Property "DeliveryStream" FirehoseProperty where
  type PropertyType "DeliveryStream" FirehoseProperty = Value Prelude.Text
  set newValue FirehoseProperty {..}
    = FirehoseProperty {deliveryStream = Prelude.pure newValue, ..}
instance Property "Enabled" FirehoseProperty where
  type PropertyType "Enabled" FirehoseProperty = Value Prelude.Bool
  set newValue FirehoseProperty {..}
    = FirehoseProperty {enabled = newValue, ..}