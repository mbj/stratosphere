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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupmember.html>
    TransitGatewayMulticastGroupMember {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupmember.html#cfn-ec2-transitgatewaymulticastgroupmember-groupipaddress>
                                        groupIpAddress :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupmember.html#cfn-ec2-transitgatewaymulticastgroupmember-networkinterfaceid>
                                        networkInterfaceId :: (Value Prelude.Text),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-transitgatewaymulticastgroupmember.html#cfn-ec2-transitgatewaymulticastgroupmember-transitgatewaymulticastdomainid>
                                        transitGatewayMulticastDomainId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTransitGatewayMulticastGroupMember ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> TransitGatewayMulticastGroupMember
mkTransitGatewayMulticastGroupMember
  groupIpAddress
  networkInterfaceId
  transitGatewayMulticastDomainId
  = TransitGatewayMulticastGroupMember
      {haddock_workaround_ = (), groupIpAddress = groupIpAddress,
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