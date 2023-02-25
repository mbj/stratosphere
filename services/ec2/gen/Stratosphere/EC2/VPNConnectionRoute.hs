module Stratosphere.EC2.VPNConnectionRoute (
        VPNConnectionRoute(..), mkVPNConnectionRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPNConnectionRoute
  = VPNConnectionRoute {destinationCidrBlock :: (Value Prelude.Text),
                        vpnConnectionId :: (Value Prelude.Text)}
mkVPNConnectionRoute ::
  Value Prelude.Text -> Value Prelude.Text -> VPNConnectionRoute
mkVPNConnectionRoute destinationCidrBlock vpnConnectionId
  = VPNConnectionRoute
      {destinationCidrBlock = destinationCidrBlock,
       vpnConnectionId = vpnConnectionId}
instance ToResourceProperties VPNConnectionRoute where
  toResourceProperties VPNConnectionRoute {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnectionRoute",
         properties = ["DestinationCidrBlock" JSON..= destinationCidrBlock,
                       "VpnConnectionId" JSON..= vpnConnectionId]}
instance JSON.ToJSON VPNConnectionRoute where
  toJSON VPNConnectionRoute {..}
    = JSON.object
        ["DestinationCidrBlock" JSON..= destinationCidrBlock,
         "VpnConnectionId" JSON..= vpnConnectionId]
instance Property "DestinationCidrBlock" VPNConnectionRoute where
  type PropertyType "DestinationCidrBlock" VPNConnectionRoute = Value Prelude.Text
  set newValue VPNConnectionRoute {..}
    = VPNConnectionRoute {destinationCidrBlock = newValue, ..}
instance Property "VpnConnectionId" VPNConnectionRoute where
  type PropertyType "VpnConnectionId" VPNConnectionRoute = Value Prelude.Text
  set newValue VPNConnectionRoute {..}
    = VPNConnectionRoute {vpnConnectionId = newValue, ..}