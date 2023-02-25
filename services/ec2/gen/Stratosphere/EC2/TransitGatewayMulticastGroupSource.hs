module Stratosphere.EC2.TransitGatewayMulticastGroupSource (
        TransitGatewayMulticastGroupSource(..),
        mkTransitGatewayMulticastGroupSource
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TransitGatewayMulticastGroupSource
  = TransitGatewayMulticastGroupSource {groupIpAddress :: (Value Prelude.Text),
                                        networkInterfaceId :: (Value Prelude.Text),
                                        transitGatewayMulticastDomainId :: (Value Prelude.Text)}
mkTransitGatewayMulticastGroupSource ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayMulticastGroupSource
mkTransitGatewayMulticastGroupSource
  groupIpAddress
  networkInterfaceId
  transitGatewayMulticastDomainId
  = TransitGatewayMulticastGroupSource
      {groupIpAddress = groupIpAddress,
       networkInterfaceId = networkInterfaceId,
       transitGatewayMulticastDomainId = transitGatewayMulticastDomainId}
instance ToResourceProperties TransitGatewayMulticastGroupSource where
  toResourceProperties TransitGatewayMulticastGroupSource {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastGroupSource",
         properties = ["GroupIpAddress" JSON..= groupIpAddress,
                       "NetworkInterfaceId" JSON..= networkInterfaceId,
                       "TransitGatewayMulticastDomainId"
                         JSON..= transitGatewayMulticastDomainId]}
instance JSON.ToJSON TransitGatewayMulticastGroupSource where
  toJSON TransitGatewayMulticastGroupSource {..}
    = JSON.object
        ["GroupIpAddress" JSON..= groupIpAddress,
         "NetworkInterfaceId" JSON..= networkInterfaceId,
         "TransitGatewayMulticastDomainId"
           JSON..= transitGatewayMulticastDomainId]
instance Property "GroupIpAddress" TransitGatewayMulticastGroupSource where
  type PropertyType "GroupIpAddress" TransitGatewayMulticastGroupSource = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupSource {..}
    = TransitGatewayMulticastGroupSource
        {groupIpAddress = newValue, ..}
instance Property "NetworkInterfaceId" TransitGatewayMulticastGroupSource where
  type PropertyType "NetworkInterfaceId" TransitGatewayMulticastGroupSource = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupSource {..}
    = TransitGatewayMulticastGroupSource
        {networkInterfaceId = newValue, ..}
instance Property "TransitGatewayMulticastDomainId" TransitGatewayMulticastGroupSource where
  type PropertyType "TransitGatewayMulticastDomainId" TransitGatewayMulticastGroupSource = Value Prelude.Text
  set newValue TransitGatewayMulticastGroupSource {..}
    = TransitGatewayMulticastGroupSource
        {transitGatewayMulticastDomainId = newValue, ..}