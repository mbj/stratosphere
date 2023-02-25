module Stratosphere.EC2.TransitGatewayConnect.TransitGatewayConnectOptionsProperty (
        TransitGatewayConnectOptionsProperty(..),
        mkTransitGatewayConnectOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayConnectOptionsProperty
  = TransitGatewayConnectOptionsProperty {protocol :: (Prelude.Maybe (Value Prelude.Text))}
mkTransitGatewayConnectOptionsProperty ::
  TransitGatewayConnectOptionsProperty
mkTransitGatewayConnectOptionsProperty
  = TransitGatewayConnectOptionsProperty {protocol = Prelude.Nothing}
instance ToResourceProperties TransitGatewayConnectOptionsProperty where
  toResourceProperties TransitGatewayConnectOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayConnect.TransitGatewayConnectOptions",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON TransitGatewayConnectOptionsProperty where
  toJSON TransitGatewayConnectOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "Protocol" TransitGatewayConnectOptionsProperty where
  type PropertyType "Protocol" TransitGatewayConnectOptionsProperty = Value Prelude.Text
  set newValue TransitGatewayConnectOptionsProperty {}
    = TransitGatewayConnectOptionsProperty
        {protocol = Prelude.pure newValue, ..}