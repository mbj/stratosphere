module Stratosphere.NetworkManager.TransitGatewayRegistration (
        TransitGatewayRegistration(..), mkTransitGatewayRegistration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayRegistration
  = TransitGatewayRegistration {globalNetworkId :: (Value Prelude.Text),
                                transitGatewayArn :: (Value Prelude.Text)}
mkTransitGatewayRegistration ::
  Value Prelude.Text
  -> Value Prelude.Text -> TransitGatewayRegistration
mkTransitGatewayRegistration globalNetworkId transitGatewayArn
  = TransitGatewayRegistration
      {globalNetworkId = globalNetworkId,
       transitGatewayArn = transitGatewayArn}
instance ToResourceProperties TransitGatewayRegistration where
  toResourceProperties TransitGatewayRegistration {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::TransitGatewayRegistration",
         supportsTags = Prelude.False,
         properties = ["GlobalNetworkId" JSON..= globalNetworkId,
                       "TransitGatewayArn" JSON..= transitGatewayArn]}
instance JSON.ToJSON TransitGatewayRegistration where
  toJSON TransitGatewayRegistration {..}
    = JSON.object
        ["GlobalNetworkId" JSON..= globalNetworkId,
         "TransitGatewayArn" JSON..= transitGatewayArn]
instance Property "GlobalNetworkId" TransitGatewayRegistration where
  type PropertyType "GlobalNetworkId" TransitGatewayRegistration = Value Prelude.Text
  set newValue TransitGatewayRegistration {..}
    = TransitGatewayRegistration {globalNetworkId = newValue, ..}
instance Property "TransitGatewayArn" TransitGatewayRegistration where
  type PropertyType "TransitGatewayArn" TransitGatewayRegistration = Value Prelude.Text
  set newValue TransitGatewayRegistration {..}
    = TransitGatewayRegistration {transitGatewayArn = newValue, ..}