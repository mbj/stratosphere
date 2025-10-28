module Stratosphere.EC2.VPNConnectionRoute (
        VPNConnectionRoute(..), mkVPNConnectionRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPNConnectionRoute
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnectionroute.html>
    VPNConnectionRoute {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnectionroute.html#cfn-ec2-vpnconnectionroute-destinationcidrblock>
                        destinationCidrBlock :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnectionroute.html#cfn-ec2-vpnconnectionroute-vpnconnectionid>
                        vpnConnectionId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPNConnectionRoute ::
  Value Prelude.Text -> Value Prelude.Text -> VPNConnectionRoute
mkVPNConnectionRoute destinationCidrBlock vpnConnectionId
  = VPNConnectionRoute
      {haddock_workaround_ = (),
       destinationCidrBlock = destinationCidrBlock,
       vpnConnectionId = vpnConnectionId}
instance ToResourceProperties VPNConnectionRoute where
  toResourceProperties VPNConnectionRoute {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnectionRoute",
         supportsTags = Prelude.False,
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