module Stratosphere.EC2.TransitGatewayMulticastGroupMember (
        TransitGatewayMulticastGroupMember(..),
        mkTransitGatewayMulticastGroupMember
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayMulticastGroupMember
  = TransitGatewayMulticastGroupMember {groupIpAddress :: (Value Prelude.Text),
                                        networkInterfaceId :: (Value Prelude.Text),
                                        transitGatewayMulticastDomainId :: (Value Prelude.Text)}
mkTransitGatewayMulticastGroupMember ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayMulticastGroupMember
mkTransitGatewayMulticastGroupMember
  groupIpAddress
  networkInterfaceId
  transitGatewayMulticastDomainId
  = TransitGatewayMulticastGroupMember
      {groupIpAddress = groupIpAddress,
       networkInterfaceId = networkInterfaceId,
       transitGatewayMulticastDomainId = transitGatewayMulticastDomainId}
instance ToResourceProperties TransitGatewayMulticastGroupMember where
  toResourceProperties TransitGatewayMulticastGroupMember {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastGroupMember",
         supportsTags = Prelude.False,
         properties = ["GroupIpAddress" JSON..= groupIpAddress,
                       "NetworkInterfaceId" JSON..= networkInterfaceId,
                       "TransitGatewayMulticastDomainId"
                         JSON..= transitGatewayMulticastDomainId]}
instance JSON.ToJSON TransitGatewayMulticastGroupMember where
  toJSON TransitGatewayMulticastGroupMember {..}
    = JSON.object
        ["GroupIpAddress" JSON..= groupIpAddress,
         "NetworkInterfaceId" JSON..= networkInterfaceId,
         "TransitGatewayMulticastDomainId"
           JSON..= transitGatewayMulticastDomainId]
instance Property "GroupIpAddress" TransitGatewayMulticastGroupMember where
  type PropertyType "GroupIpAddress" TransitGatewayMulticastGroupMember = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupMember {..}
    = TransitGatewayMulticastGroupMember
        {groupIpAddress = newValue, ..}
instance Property "NetworkInterfaceId" TransitGatewayMulticastGroupMember where
  type PropertyType "NetworkInterfaceId" TransitGatewayMulticastGroupMember = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupMember {..}
    = TransitGatewayMulticastGroupMember
        {networkInterfaceId = newValue, ..}
instance Property "TransitGatewayMulticastDomainId" TransitGatewayMulticastGroupMember where
  type PropertyType "TransitGatewayMulticastDomainId" TransitGatewayMulticastGroupMember = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupMember {..}
    = TransitGatewayMulticastGroupMember
        {transitGatewayMulticastDomainId = newValue, ..}