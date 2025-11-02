module Stratosphere.EC2.Route (
        Route(..), mkRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Route
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html>
    Route {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-carriergatewayid>
           carrierGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-corenetworkarn>
           coreNetworkArn :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationcidrblock>
           destinationCidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationipv6cidrblock>
           destinationIpv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationprefixlistid>
           destinationPrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-egressonlyinternetgatewayid>
           egressOnlyInternetGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-gatewayid>
           gatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-instanceid>
           instanceId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-localgatewayid>
           localGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-natgatewayid>
           natGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-networkinterfaceid>
           networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-routetableid>
           routeTableId :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-transitgatewayid>
           transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-vpcendpointid>
           vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-vpcpeeringconnectionid>
           vpcPeeringConnectionId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoute :: Value Prelude.Text -> Route
mkRoute routeTableId
  = Route
      {haddock_workaround_ = (), routeTableId = routeTableId,
       carrierGatewayId = Prelude.Nothing,
       coreNetworkArn = Prelude.Nothing,
       destinationCidrBlock = Prelude.Nothing,
       destinationIpv6CidrBlock = Prelude.Nothing,
       destinationPrefixListId = Prelude.Nothing,
       egressOnlyInternetGatewayId = Prelude.Nothing,
       gatewayId = Prelude.Nothing, instanceId = Prelude.Nothing,
       localGatewayId = Prelude.Nothing, natGatewayId = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       transitGatewayId = Prelude.Nothing,
       vpcEndpointId = Prelude.Nothing,
       vpcPeeringConnectionId = Prelude.Nothing}
instance ToResourceProperties Route where
  toResourceProperties Route {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Route", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RouteTableId" JSON..= routeTableId]
                           (Prelude.catMaybes
                              [(JSON..=) "CarrierGatewayId" Prelude.<$> carrierGatewayId,
                               (JSON..=) "CoreNetworkArn" Prelude.<$> coreNetworkArn,
                               (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                               (JSON..=) "DestinationIpv6CidrBlock"
                                 Prelude.<$> destinationIpv6CidrBlock,
                               (JSON..=) "DestinationPrefixListId"
                                 Prelude.<$> destinationPrefixListId,
                               (JSON..=) "EgressOnlyInternetGatewayId"
                                 Prelude.<$> egressOnlyInternetGatewayId,
                               (JSON..=) "GatewayId" Prelude.<$> gatewayId,
                               (JSON..=) "InstanceId" Prelude.<$> instanceId,
                               (JSON..=) "LocalGatewayId" Prelude.<$> localGatewayId,
                               (JSON..=) "NatGatewayId" Prelude.<$> natGatewayId,
                               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                               (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                               (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                               (JSON..=) "VpcPeeringConnectionId"
                                 Prelude.<$> vpcPeeringConnectionId]))}
instance JSON.ToJSON Route where
  toJSON Route {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RouteTableId" JSON..= routeTableId]
              (Prelude.catMaybes
                 [(JSON..=) "CarrierGatewayId" Prelude.<$> carrierGatewayId,
                  (JSON..=) "CoreNetworkArn" Prelude.<$> coreNetworkArn,
                  (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                  (JSON..=) "DestinationIpv6CidrBlock"
                    Prelude.<$> destinationIpv6CidrBlock,
                  (JSON..=) "DestinationPrefixListId"
                    Prelude.<$> destinationPrefixListId,
                  (JSON..=) "EgressOnlyInternetGatewayId"
                    Prelude.<$> egressOnlyInternetGatewayId,
                  (JSON..=) "GatewayId" Prelude.<$> gatewayId,
                  (JSON..=) "InstanceId" Prelude.<$> instanceId,
                  (JSON..=) "LocalGatewayId" Prelude.<$> localGatewayId,
                  (JSON..=) "NatGatewayId" Prelude.<$> natGatewayId,
                  (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                  (JSON..=) "TransitGatewayId" Prelude.<$> transitGatewayId,
                  (JSON..=) "VpcEndpointId" Prelude.<$> vpcEndpointId,
                  (JSON..=) "VpcPeeringConnectionId"
                    Prelude.<$> vpcPeeringConnectionId])))
instance Property "CarrierGatewayId" Route where
  type PropertyType "CarrierGatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {carrierGatewayId = Prelude.pure newValue, ..}
instance Property "CoreNetworkArn" Route where
  type PropertyType "CoreNetworkArn" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {coreNetworkArn = Prelude.pure newValue, ..}
instance Property "DestinationCidrBlock" Route where
  type PropertyType "DestinationCidrBlock" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {destinationCidrBlock = Prelude.pure newValue, ..}
instance Property "DestinationIpv6CidrBlock" Route where
  type PropertyType "DestinationIpv6CidrBlock" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {destinationIpv6CidrBlock = Prelude.pure newValue, ..}
instance Property "DestinationPrefixListId" Route where
  type PropertyType "DestinationPrefixListId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {destinationPrefixListId = Prelude.pure newValue, ..}
instance Property "EgressOnlyInternetGatewayId" Route where
  type PropertyType "EgressOnlyInternetGatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {egressOnlyInternetGatewayId = Prelude.pure newValue, ..}
instance Property "GatewayId" Route where
  type PropertyType "GatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {gatewayId = Prelude.pure newValue, ..}
instance Property "InstanceId" Route where
  type PropertyType "InstanceId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {instanceId = Prelude.pure newValue, ..}
instance Property "LocalGatewayId" Route where
  type PropertyType "LocalGatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {localGatewayId = Prelude.pure newValue, ..}
instance Property "NatGatewayId" Route where
  type PropertyType "NatGatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {natGatewayId = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" Route where
  type PropertyType "NetworkInterfaceId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "RouteTableId" Route where
  type PropertyType "RouteTableId" Route = Value Prelude.Text
  set newValue Route {..} = Route {routeTableId = newValue, ..}
instance Property "TransitGatewayId" Route where
  type PropertyType "TransitGatewayId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {transitGatewayId = Prelude.pure newValue, ..}
instance Property "VpcEndpointId" Route where
  type PropertyType "VpcEndpointId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {vpcEndpointId = Prelude.pure newValue, ..}
instance Property "VpcPeeringConnectionId" Route where
  type PropertyType "VpcPeeringConnectionId" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {vpcPeeringConnectionId = Prelude.pure newValue, ..}