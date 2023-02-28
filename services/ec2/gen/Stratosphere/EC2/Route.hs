module Stratosphere.EC2.Route (
        Route(..), mkRoute
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Route
  = Route {carrierGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           destinationCidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
           destinationIpv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
           egressOnlyInternetGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           gatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           instanceId :: (Prelude.Maybe (Value Prelude.Text)),
           localGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           natGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
           routeTableId :: (Value Prelude.Text),
           transitGatewayId :: (Prelude.Maybe (Value Prelude.Text)),
           vpcEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
           vpcPeeringConnectionId :: (Prelude.Maybe (Value Prelude.Text))}
mkRoute :: Value Prelude.Text -> Route
mkRoute routeTableId
  = Route
      {routeTableId = routeTableId, carrierGatewayId = Prelude.Nothing,
       destinationCidrBlock = Prelude.Nothing,
       destinationIpv6CidrBlock = Prelude.Nothing,
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
                               (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                               (JSON..=) "DestinationIpv6CidrBlock"
                                 Prelude.<$> destinationIpv6CidrBlock,
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
                  (JSON..=) "DestinationCidrBlock" Prelude.<$> destinationCidrBlock,
                  (JSON..=) "DestinationIpv6CidrBlock"
                    Prelude.<$> destinationIpv6CidrBlock,
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
instance Property "DestinationCidrBlock" Route where
  type PropertyType "DestinationCidrBlock" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {destinationCidrBlock = Prelude.pure newValue, ..}
instance Property "DestinationIpv6CidrBlock" Route where
  type PropertyType "DestinationIpv6CidrBlock" Route = Value Prelude.Text
  set newValue Route {..}
    = Route {destinationIpv6CidrBlock = Prelude.pure newValue, ..}
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