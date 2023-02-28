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
  = VPNConnection {customerGatewayId :: (Value Prelude.Text),
                   staticRoutesOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                   tags :: (Prelude.Maybe [Tag]),
                   transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                   type' :: (Value Prelude.Text),
                   vpnGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
                   vpnTunnelOptionsSpecifications :: (Prelude.Maybe [VpnTunnelOptionsSpecificationProperty])}
mkVPNConnection ::
  Value Prelude.Text -> Value Prelude.Text -> VPNConnection
mkVPNConnection customerGatewayId type'
  = VPNConnection
      {customerGatewayId = customerGatewayId, type' = type',
       staticRoutesOnly = Prelude.Nothing, tags = Prelude.Nothing,
       transitGatewayId = Prelude.Nothing, vpnGatewayId = Prelude.Nothing,
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
                              [(JSON..=) "StaticRoutesOnly" Prelude.<$> staticRoutesOnly,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
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
                 [(JSON..=) "StaticRoutesOnly" Prelude.<$> staticRoutesOnly,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                  (JSON..=) "VpnGatewayId" Prelude.<$> vpnGatewayId,
                  (JSON..=) "VpnTunnelOptionsSpecifications"
                    Prelude.<$> vpnTunnelOptionsSpecifications])))
instance Property "CustomerGatewayId" VPNConnection where
  type PropertyType "CustomerGatewayId" VPNConnection = Value Prelude.Text
  set newValue VPNConnection {..}
    = VPNConnection {customerGatewayId = newValue, ..}
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