module Stratosphere.EC2.VPCGatewayAttachment (
        VPCGatewayAttachment(..), mkVPCGatewayAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCGatewayAttachment
  = VPCGatewayAttachment {internetGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                          vpcId :: (Value Prelude.Text),
                          vpnGatewayId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCGatewayAttachment ::
  Value Prelude.Text -> VPCGatewayAttachment
mkVPCGatewayAttachment vpcId
  = VPCGatewayAttachment
      {vpcId = vpcId, internetGatewayId = Prelude.Nothing,
       vpnGatewayId = Prelude.Nothing}
instance ToResourceProperties VPCGatewayAttachment where
  toResourceProperties VPCGatewayAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCGatewayAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "InternetGatewayId" Prelude.<$> internetGatewayId,
                               (JSON..=) "VpnGatewayId" Prelude.<$> vpnGatewayId]))}
instance JSON.ToJSON VPCGatewayAttachment where
  toJSON VPCGatewayAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "InternetGatewayId" Prelude.<$> internetGatewayId,
                  (JSON..=) "VpnGatewayId" Prelude.<$> vpnGatewayId])))
instance Property "InternetGatewayId" VPCGatewayAttachment where
  type PropertyType "InternetGatewayId" VPCGatewayAttachment = Value Prelude.Text
  set newValue VPCGatewayAttachment {..}
    = VPCGatewayAttachment
        {internetGatewayId = Prelude.pure newValue, ..}
instance Property "VpcId" VPCGatewayAttachment where
  type PropertyType "VpcId" VPCGatewayAttachment = Value Prelude.Text
  set newValue VPCGatewayAttachment {..}
    = VPCGatewayAttachment {vpcId = newValue, ..}
instance Property "VpnGatewayId" VPCGatewayAttachment where
  type PropertyType "VpnGatewayId" VPCGatewayAttachment = Value Prelude.Text
  set newValue VPCGatewayAttachment {..}
    = VPCGatewayAttachment {vpnGatewayId = Prelude.pure newValue, ..}