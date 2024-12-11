module Stratosphere.Logs.DeliveryDestination (
        DeliveryDestination(..), mkDeliveryDestination
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeliveryDestination
  = DeliveryDestination {deliveryDestinationPolicy :: (Prelude.Maybe JSON.Object),
                         destinationResourceArn :: (Prelude.Maybe (Value Prelude.Text)),
                         name :: (Value Prelude.Text),
                         outputFormat :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryDestination :: Value Prelude.Text -> DeliveryDestination
mkDeliveryDestination name
  = DeliveryDestination
      {name = name, deliveryDestinationPolicy = Prelude.Nothing,
       destinationResourceArn = Prelude.Nothing,
       outputFormat = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DeliveryDestination where
  toResourceProperties DeliveryDestination {..}
    = ResourceProperties
        {awsType = "AWS::Logs::DeliveryDestination",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DeliveryDestinationPolicy"
                                 Prelude.<$> deliveryDestinationPolicy,
                               (JSON..=) "DestinationResourceArn"
                                 Prelude.<$> destinationResourceArn,
                               (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON DeliveryDestination where
  toJSON DeliveryDestination {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DeliveryDestinationPolicy"
                    Prelude.<$> deliveryDestinationPolicy,
                  (JSON..=) "DestinationResourceArn"
                    Prelude.<$> destinationResourceArn,
                  (JSON..=) "OutputFormat" Prelude.<$> outputFormat,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeliveryDestinationPolicy" DeliveryDestination where
  type PropertyType "DeliveryDestinationPolicy" DeliveryDestination = JSON.Object
  set newValue DeliveryDestination {..}
    = DeliveryDestination
        {deliveryDestinationPolicy = Prelude.pure newValue, ..}
instance Property "DestinationResourceArn" DeliveryDestination where
  type PropertyType "DestinationResourceArn" DeliveryDestination = Value Prelude.Text
  set newValue DeliveryDestination {..}
    = DeliveryDestination
        {destinationResourceArn = Prelude.pure newValue, ..}
instance Property "Name" DeliveryDestination where
  type PropertyType "Name" DeliveryDestination = Value Prelude.Text
  set newValue DeliveryDestination {..}
    = DeliveryDestination {name = newValue, ..}
instance Property "OutputFormat" DeliveryDestination where
  type PropertyType "OutputFormat" DeliveryDestination = Value Prelude.Text
  set newValue DeliveryDestination {..}
    = DeliveryDestination {outputFormat = Prelude.pure newValue, ..}
instance Property "Tags" DeliveryDestination where
  type PropertyType "Tags" DeliveryDestination = [Tag]
  set newValue DeliveryDestination {..}
    = DeliveryDestination {tags = Prelude.pure newValue, ..}