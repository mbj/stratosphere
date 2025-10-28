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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupsource.html>
    TransitGatewayMulticastGroupSource {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupsource.html#cfn-ec2-transitgatewaymulticastgroupsource-groupipaddress>
                                        groupIpAddress :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupsource.html#cfn-ec2-transitgatewaymulticastgroupsource-networkinterfaceid>
                                        networkInterfaceId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupsource.html#cfn-ec2-transitgatewaymulticastgroupsource-transitgatewaymulticastdomainid>
                                        transitGatewayMulticastDomainId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayMulticastGroupSource ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayMulticastGroupSource
mkTransitGatewayMulticastGroupSource
  groupIpAddress
  networkInterfaceId
  transitGatewayMulticastDomainId
  = TransitGatewayMulticastGroupSource
      {haddock_workaround_ = (), groupIpAddress = groupIpAddress,
       networkInterfaceId = networkInterfaceId,
       transitGatewayMulticastDomainId = transitGatewayMulticastDomainId}
instance ToResourceProperties TransitGatewayMulticastGroupSource where
  toResourceProperties TransitGatewayMulticastGroupSource {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TransitGatewayMulticastGroupSource",
         supportsTags = Prelude.False,
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