module Stratosphere.Logs.DeliveryDestination.DestinationPolicyProperty (
        DestinationPolicyProperty(..), mkDestinationPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DestinationPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-deliverydestination-destinationpolicy.html>
    DestinationPolicyProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-deliverydestination-destinationpolicy.html#cfn-logs-deliverydestination-destinationpolicy-deliverydestinationname>
                               deliveryDestinationName :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-deliverydestination-destinationpolicy.html#cfn-logs-deliverydestination-destinationpolicy-deliverydestinationpolicy>
                               deliveryDestinationPolicy :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDestinationPolicyProperty :: DestinationPolicyProperty
mkDestinationPolicyProperty
  = DestinationPolicyProperty
      {haddock_workaround_ = (),
       deliveryDestinationName = Prelude.Nothing,
       deliveryDestinationPolicy = Prelude.Nothing}
instance ToResourceProperties DestinationPolicyProperty where
  toResourceProperties DestinationPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::DeliveryDestination.DestinationPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeliveryDestinationName"
                              Prelude.<$> deliveryDestinationName,
                            (JSON..=) "DeliveryDestinationPolicy"
                              Prelude.<$> deliveryDestinationPolicy])}
instance JSON.ToJSON DestinationPolicyProperty where
  toJSON DestinationPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeliveryDestinationName"
                 Prelude.<$> deliveryDestinationName,
               (JSON..=) "DeliveryDestinationPolicy"
                 Prelude.<$> deliveryDestinationPolicy]))
instance Property "DeliveryDestinationName" DestinationPolicyProperty where
  type PropertyType "DeliveryDestinationName" DestinationPolicyProperty = Value Prelude.Text
  set newValue DestinationPolicyProperty {..}
    = DestinationPolicyProperty
        {deliveryDestinationName = Prelude.pure newValue, ..}
instance Property "DeliveryDestinationPolicy" DestinationPolicyProperty where
  type PropertyType "DeliveryDestinationPolicy" DestinationPolicyProperty = JSON.Object
  set newValue DestinationPolicyProperty {..}
    = DestinationPolicyProperty
        {deliveryDestinationPolicy = Prelude.pure newValue, ..}