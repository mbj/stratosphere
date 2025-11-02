module Stratosphere.EC2.VPNGatewayRoutePropagation (
        VPNGatewayRoutePropagation(..), mkVPNGatewayRoutePropagation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPNGatewayRoutePropagation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngatewayroutepropagation.html>
    VPNGatewayRoutePropagation {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngatewayroutepropagation.html#cfn-ec2-vpngatewayroutepropagation-routetableids>
                                routeTableIds :: (ValueList Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpngatewayroutepropagation.html#cfn-ec2-vpngatewayroutepropagation-vpngatewayid>
                                vpnGatewayId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPNGatewayRoutePropagation ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> VPNGatewayRoutePropagation
mkVPNGatewayRoutePropagation routeTableIds vpnGatewayId
  = VPNGatewayRoutePropagation
      {haddock_workaround_ = (), routeTableIds = routeTableIds,
       vpnGatewayId = vpnGatewayId}
instance ToResourceProperties VPNGatewayRoutePropagation where
  toResourceProperties VPNGatewayRoutePropagation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNGatewayRoutePropagation",
         supportsTags = Prelude.False,
         properties = ["RouteTableIds" JSON..= routeTableIds,
                       "VpnGatewayId" JSON..= vpnGatewayId]}
instance JSON.ToJSON VPNGatewayRoutePropagation where
  toJSON VPNGatewayRoutePropagation {..}
    = JSON.object
        ["RouteTableIds" JSON..= routeTableIds,
         "VpnGatewayId" JSON..= vpnGatewayId]
instance Property "RouteTableIds" VPNGatewayRoutePropagation where
  type PropertyType "RouteTableIds" VPNGatewayRoutePropagation = ValueList Prelude.Text
  set newValue VPNGatewayRoutePropagation {..}
    = VPNGatewayRoutePropagation {routeTableIds = newValue, ..}
instance Property "VpnGatewayId" VPNGatewayRoutePropagation where
  type PropertyType "VpnGatewayId" VPNGatewayRoutePropagation = Value Prelude.Text
  set newValue VPNGatewayRoutePropagation {..}
    = VPNGatewayRoutePropagation {vpnGatewayId = newValue, ..}