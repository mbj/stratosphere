module Stratosphere.EC2.VPNGatewayRoutePropagation (
        VPNGatewayRoutePropagation(..), mkVPNGatewayRoutePropagation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPNGatewayRoutePropagation
  = VPNGatewayRoutePropagation {routeTableIds :: (ValueList (Value Prelude.Text)),
                                vpnGatewayId :: (Value Prelude.Text)}
mkVPNGatewayRoutePropagation ::
  ValueList (Value Prelude.Text)
  -> Value Prelude.Text -> VPNGatewayRoutePropagation
mkVPNGatewayRoutePropagation routeTableIds vpnGatewayId
  = VPNGatewayRoutePropagation
      {routeTableIds = routeTableIds, vpnGatewayId = vpnGatewayId}
instance ToResourceProperties VPNGatewayRoutePropagation where
  toResourceProperties VPNGatewayRoutePropagation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNGatewayRoutePropagation",
         properties = ["RouteTableIds" JSON..= routeTableIds,
                       "VpnGatewayId" JSON..= vpnGatewayId]}
instance JSON.ToJSON VPNGatewayRoutePropagation where
  toJSON VPNGatewayRoutePropagation {..}
    = JSON.object
        ["RouteTableIds" JSON..= routeTableIds,
         "VpnGatewayId" JSON..= vpnGatewayId]
instance Property "RouteTableIds" VPNGatewayRoutePropagation where
  type PropertyType "RouteTableIds" VPNGatewayRoutePropagation = ValueList (Value Prelude.Text)
  set newValue VPNGatewayRoutePropagation {..}
    = VPNGatewayRoutePropagation {routeTableIds = newValue, ..}
instance Property "VpnGatewayId" VPNGatewayRoutePropagation where
  type PropertyType "VpnGatewayId" VPNGatewayRoutePropagation = Value Prelude.Text
  set newValue VPNGatewayRoutePropagation {..}
    = VPNGatewayRoutePropagation {vpnGatewayId = newValue, ..}