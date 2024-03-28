module Stratosphere.Logs.Delivery (
        Delivery(..), mkDelivery
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Delivery
  = Delivery {deliveryDestinationArn :: (Value Prelude.Text),
              deliverySourceName :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDelivery :: Value Prelude.Text -> Value Prelude.Text -> Delivery
mkDelivery deliveryDestinationArn deliverySourceName
  = Delivery
      {deliveryDestinationArn = deliveryDestinationArn,
       deliverySourceName = deliverySourceName, tags = Prelude.Nothing}
instance ToResourceProperties Delivery where
  toResourceProperties Delivery {..}
    = ResourceProperties
        {awsType = "AWS::Logs::Delivery", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeliveryDestinationArn" JSON..= deliveryDestinationArn,
                            "DeliverySourceName" JSON..= deliverySourceName]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Delivery where
  toJSON Delivery {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeliveryDestinationArn" JSON..= deliveryDestinationArn,
               "DeliverySourceName" JSON..= deliverySourceName]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeliveryDestinationArn" Delivery where
  type PropertyType "DeliveryDestinationArn" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {deliveryDestinationArn = newValue, ..}
instance Property "DeliverySourceName" Delivery where
  type PropertyType "DeliverySourceName" Delivery = Value Prelude.Text
  set newValue Delivery {..}
    = Delivery {deliverySourceName = newValue, ..}
instance Property "Tags" Delivery where
  type PropertyType "Tags" Delivery = [Tag]
  set newValue Delivery {..}
    = Delivery {tags = Prelude.pure newValue, ..}