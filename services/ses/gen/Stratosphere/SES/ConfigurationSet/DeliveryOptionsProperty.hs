module Stratosphere.SES.ConfigurationSet.DeliveryOptionsProperty (
        DeliveryOptionsProperty(..), mkDeliveryOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeliveryOptionsProperty
  = DeliveryOptionsProperty {sendingPoolName :: (Prelude.Maybe (Value Prelude.Text)),
                             tlsPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryOptionsProperty :: DeliveryOptionsProperty
mkDeliveryOptionsProperty
  = DeliveryOptionsProperty
      {sendingPoolName = Prelude.Nothing, tlsPolicy = Prelude.Nothing}
instance ToResourceProperties DeliveryOptionsProperty where
  toResourceProperties DeliveryOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::ConfigurationSet.DeliveryOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SendingPoolName" Prelude.<$> sendingPoolName,
                            (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy])}
instance JSON.ToJSON DeliveryOptionsProperty where
  toJSON DeliveryOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SendingPoolName" Prelude.<$> sendingPoolName,
               (JSON..=) "TlsPolicy" Prelude.<$> tlsPolicy]))
instance Property "SendingPoolName" DeliveryOptionsProperty where
  type PropertyType "SendingPoolName" DeliveryOptionsProperty = Value Prelude.Text
  set newValue DeliveryOptionsProperty {..}
    = DeliveryOptionsProperty
        {sendingPoolName = Prelude.pure newValue, ..}
instance Property "TlsPolicy" DeliveryOptionsProperty where
  type PropertyType "TlsPolicy" DeliveryOptionsProperty = Value Prelude.Text
  set newValue DeliveryOptionsProperty {..}
    = DeliveryOptionsProperty {tlsPolicy = Prelude.pure newValue, ..}