module Stratosphere.EC2.GatewayRouteTableAssociation (
        GatewayRouteTableAssociation(..), mkGatewayRouteTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteTableAssociation
  = GatewayRouteTableAssociation {gatewayId :: (Value Prelude.Text),
                                  routeTableId :: (Value Prelude.Text)}
mkGatewayRouteTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> GatewayRouteTableAssociation
mkGatewayRouteTableAssociation gatewayId routeTableId
  = GatewayRouteTableAssociation
      {gatewayId = gatewayId, routeTableId = routeTableId}
instance ToResourceProperties GatewayRouteTableAssociation where
  toResourceProperties GatewayRouteTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::GatewayRouteTableAssociation",
         properties = ["GatewayId" JSON..= gatewayId,
                       "RouteTableId" JSON..= routeTableId]}
instance JSON.ToJSON GatewayRouteTableAssociation where
  toJSON GatewayRouteTableAssociation {..}
    = JSON.object
        ["GatewayId" JSON..= gatewayId,
         "RouteTableId" JSON..= routeTableId]
instance Property "GatewayId" GatewayRouteTableAssociation where
  type PropertyType "GatewayId" GatewayRouteTableAssociation = Value Prelude.Text
  set newValue GatewayRouteTableAssociation {..}
    = GatewayRouteTableAssociation {gatewayId = newValue, ..}
instance Property "RouteTableId" GatewayRouteTableAssociation where
  type PropertyType "RouteTableId" GatewayRouteTableAssociation = Value Prelude.Text
  set newValue GatewayRouteTableAssociation {..}
    = GatewayRouteTableAssociation {routeTableId = newValue, ..}