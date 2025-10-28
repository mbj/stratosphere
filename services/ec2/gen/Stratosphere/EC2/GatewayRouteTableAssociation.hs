module Stratosphere.EC2.GatewayRouteTableAssociation (
        GatewayRouteTableAssociation(..), mkGatewayRouteTableAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatewayRouteTableAssociation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html>
    GatewayRouteTableAssociation {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html#cfn-ec2-gatewayroutetableassociation-gatewayid>
                                  gatewayId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-gatewayroutetableassociation.html#cfn-ec2-gatewayroutetableassociation-routetableid>
                                  routeTableId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatewayRouteTableAssociation ::
  Value Prelude.Text
  -> Value Prelude.Text -> GatewayRouteTableAssociation
mkGatewayRouteTableAssociation gatewayId routeTableId
  = GatewayRouteTableAssociation
      {haddock_workaround_ = (), gatewayId = gatewayId,
       routeTableId = routeTableId}
instance ToResourceProperties GatewayRouteTableAssociation where
  toResourceProperties GatewayRouteTableAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::GatewayRouteTableAssociation",
         supportsTags = Prelude.False,
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