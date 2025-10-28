module Stratosphere.PinpointEmail.ConfigurationSet.DeliveryOptionsProperty (
        DeliveryOptionsProperty(..), mkDeliveryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliveryOptionsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html>
    DeliveryOptionsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pinpointemail-configurationset-deliveryoptions.html#cfn-pinpointemail-configurationset-deliveryoptions-sendingpoolname>
                             sendingPoolName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryOptionsProperty :: DeliveryOptionsProperty
mkDeliveryOptionsProperty
  = DeliveryOptionsProperty {sendingPoolName = Prelude.Nothing}
instance ToResourceProperties DeliveryOptionsProperty where
  toResourceProperties DeliveryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::ConfigurationSet.DeliveryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SendingPoolName" Prelude.<$> sendingPoolName])}
instance JSON.ToJSON DeliveryOptionsProperty where
  toJSON DeliveryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SendingPoolName" Prelude.<$> sendingPoolName]))
instance Property "SendingPoolName" DeliveryOptionsProperty where
  type PropertyType "SendingPoolName" DeliveryOptionsProperty = Value Prelude.Text
  set newValue DeliveryOptionsProperty {}
    = DeliveryOptionsProperty
        {sendingPoolName = Prelude.pure newValue, ..}