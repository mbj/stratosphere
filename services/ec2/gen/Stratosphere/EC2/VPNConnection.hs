module Stratosphere.EC2.VPNConnection (
        module Exports, VPNConnection(..), mkVPNConnection
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VPNConnection.VpnTunnelOptionsSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPNConnection
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html>
    VPNConnection {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-customergatewayid>
                   customerGatewayId :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-enableacceleration>
                   enableAcceleration :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-localipv4networkcidr>
                   localIpv4NetworkCidr :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-localipv6networkcidr>
                   localIpv6NetworkCidr :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-outsideipaddresstype>
                   outsideIpAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-remoteipv4networkcidr>
                   remoteIpv4NetworkCidr :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-remoteipv6networkcidr>
                   remoteIpv6NetworkCidr :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-staticroutesonly>
                   staticRoutesOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-tags>
                   tags :: (Prelude.Maybe [Tag]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-transitgatewayid>
                   transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-transporttransitgatewayattachmentid>
                   transportTransitGatewayAttachmentId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-tunnelinsideipversion>
                   tunnelInsideIpVersion :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-type>
                   type' :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-vpngatewayid>
                   vpnGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpnconnection.html#cfn-ec2-vpnconnection-vpntunneloptionsspecifications>
                   vpnTunnelOptionsSpecifications :: (Prelude.Maybe [VpnTunnelOptionsSpecificationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPNConnection ::
  Value Prelude.Text -> Value Prelude.Text -> VPNConnection
mkVPNConnection customerGatewayId type'
  = VPNConnection
      {haddock_workaround_ = (), customerGatewayId = customerGatewayId,
       type' = type', enableAcceleration = Prelude.Nothing,
       localIpv4NetworkCidr = Prelude.Nothing,
       localIpv6NetworkCidr = Prelude.Nothing,
       outsideIpAddressType = Prelude.Nothing,
       remoteIpv4NetworkCidr = Prelude.Nothing,
       remoteIpv6NetworkCidr = Prelude.Nothing,
       staticRoutesOnly = Prelude.Nothing, tags = Prelude.Nothing,
       transitGatewayId = Prelude.Nothing,
       transportTransitGatewayAttachmentId = Prelude.Nothing,
       tunnelInsideIpVersion = Prelude.Nothing,
       vpnGatewayId = Prelude.Nothing,
       vpnTunnelOptionsSpecifications = Prelude.Nothing}
instance ToResourceProperties VPNConnection where
  toResourceProperties VPNConnection {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPNConnection", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CustomerGatewayId" JSON..= customerGatewayId,
                            "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "EnableAcceleration" Prelude.<$> enableAcceleration,
                               (JSON..=) "LocalIpv4NetworkCidr" Prelude.<$> localIpv4NetworkCidr,
                               (JSON..=) "LocalIpv6NetworkCidr" Prelude.<$> localIpv6NetworkCidr,
                               (JSON..=) "OutsideIpAddressType" Prelude.<$> outsideIpAddressType,
                               (JSON..=) "RemoteIpv4NetworkCidr"
                                 Prelude.<$> remoteIpv4NetworkCidr,
                               (JSON..=) "RemoteIpv6NetworkCidr"
                                 Prelude.<$> remoteIpv6NetworkCidr,
                               (JSON..=) "StaticRoutesOnly" Prelude.<$> staticRoutesOnly,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                               (JSON..=) "TransportTransitGatewayAttachmentId"
                                 Prelude.<$> transportTransitGatewayAttachmentId,
                               (JSON..=) "TunnelInsideIpVersion"
                                 Prelude.<$> tunnelInsideIpVersion,
                               (JSON..=) "VpnGatewayId" Prelude.<$> vpnGatewayId,
                               (JSON..=) "VpnTunnelOptionsSpecifications"
                                 Prelude.<$> vpnTunnelOptionsSpecifications]))}
instance JSON.ToJSON VPNConnection where
  toJSON VPNConnection {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CustomerGatewayId" JSON..= customerGatewayId,
               "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "EnableAcceleration" Prelude.<$> enableAcceleration,
                  (JSON..=) "LocalIpv4NetworkCidr" Prelude.<$> localIpv4NetworkCidr,
                  (JSON..=) "LocalIpv6NetworkCidr" Prelude.<$> localIpv6NetworkCidr,
                  (JSON..=) "OutsideIpAddressType" Prelude.<$> outsideIpAddressType,
                  (JSON..=) "RemoteIpv4NetworkCidr"
                    Prelude.<$> remoteIpv4NetworkCidr,
                  (JSON..=) "RemoteIpv6NetworkCidr"
                    Prelude.<$> remoteIpv6NetworkCidr,
                  (JSON..=) "StaticRoutesOnly" Prelude.<$> staticRoutesOnly,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                  (JSON..=) "TransportTransitGatewayAttachmentId"
                    Prelude.<$> transportTransitGatewayAttachmentId,
                  (JSON..=) "TunnelInsideIpVersion"
                    Prelude.<$> tunnelInsideIpVersion,
                  (JSON..=) "VpnGatewayId" Prelude.<$> vpnGatewayId,
                  (JSON..=) "VpnTunnelOptionsSpecifications"
                    Prelude.<$> vpnTunnelOptionsSpecifications])))
instance Property "CustomerGatewayId" VPNConnection where
  type PropertyType "CustomerGatewayId" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {customerGatewayId = newValue, ..}
instance Property "EnableAcceleration" VPNConnection where
  type PropertyType "EnableAcceleration" VPNConnection = Value Prelude.Bool
  set newValue VPNConnection {..}
    = VPNConnection {enableAcceleration = Prelude.pure newValue, ..}
instance Property "LocalIpv4NetworkCidr" VPNConnection where
  type PropertyType "LocalIpv4NetworkCidr" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {localIpv4NetworkCidr = Prelude.pure newValue, ..}
instance Property "LocalIpv6NetworkCidr" VPNConnection where
  type PropertyType "LocalIpv6NetworkCidr" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {localIpv6NetworkCidr = Prelude.pure newValue, ..}
instance Property "OutsideIpAddressType" VPNConnection where
  type PropertyType "OutsideIpAddressType" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {outsideIpAddressType = Prelude.pure newValue, ..}
instance Property "RemoteIpv4NetworkCidr" VPNConnection where
  type PropertyType "RemoteIpv4NetworkCidr" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {remoteIpv4NetworkCidr = Prelude.pure newValue, ..}
instance Property "RemoteIpv6NetworkCidr" VPNConnection where
  type PropertyType "RemoteIpv6NetworkCidr" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {remoteIpv6NetworkCidr = Prelude.pure newValue, ..}
instance Property "StaticRoutesOnly" VPNConnection where
  type PropertyType "StaticRoutesOnly" VPNConnection = Value Prelude.Bool
  set newValue VPNConnection {..}
    = VPNConnection {staticRoutesOnly = Prelude.pure newValue, ..}
instance Property "Tags" VPNConnection where
  type PropertyType "Tags" VPNConnection = [Tag]
  set newValue VPNConnection {..}
    = VPNConnection {tags = Prelude.pure newValue, ..}
instance Property "TransitGatewayId" VPNConnection where
  type PropertyType "TransitGatewayId" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {transitGatewayId = Prelude.pure newValue, ..}
instance Property "TransportTransitGatewayAttachmentId" VPNConnection where
  type PropertyType "TransportTransitGatewayAttachmentId" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection
        {transportTransitGatewayAttachmentId = Prelude.pure newValue, ..}
instance Property "TunnelInsideIpVersion" VPNConnection where
  type PropertyType "TunnelInsideIpVersion" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {tunnelInsideIpVersion = Prelude.pure newValue, ..}
instance Property "Type" VPNConnection where
  type PropertyType "Type" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {type' = newValue, ..}
instance Property "VpnGatewayId" VPNConnection where
  type PropertyType "VpnGatewayId" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {vpnGatewayId = Prelude.pure newValue, ..}
instance Property "VpnTunnelOptionsSpecifications" VPNConnection where
  type PropertyType "VpnTunnelOptionsSpecifications" VPNConnection = [VpnTunnelOptionsSpecificationProperty]
  set newValue VPNConnection {..}
    = VPNConnection
        {vpnTunnelOptionsSpecifications = Prelude.pure newValue, ..}