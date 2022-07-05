{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html

module Stratosphere.Resources.EC2Route where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2Route. See 'ec2Route' for a more
-- convenient constructor.
data EC2Route =
  EC2Route
  { _eC2RouteDestinationCidrBlock :: Maybe (Val Text)
  , _eC2RouteDestinationIpv6CidrBlock :: Maybe (Val Text)
  , _eC2RouteEgressOnlyInternetGatewayId :: Maybe (Val Text)
  , _eC2RouteGatewayId :: Maybe (Val Text)
  , _eC2RouteInstanceId :: Maybe (Val Text)
  , _eC2RouteNatGatewayId :: Maybe (Val Text)
  , _eC2RouteNetworkInterfaceId :: Maybe (Val Text)
  , _eC2RouteRouteTableId :: Val Text
  , _eC2RouteTransitGatewayId :: Maybe (Val Text)
  , _eC2RouteVpcPeeringConnectionId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2Route where
  toResourceProperties EC2Route{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::Route"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("DestinationCidrBlock",) . toJSON) _eC2RouteDestinationCidrBlock
        , fmap (("DestinationIpv6CidrBlock",) . toJSON) _eC2RouteDestinationIpv6CidrBlock
        , fmap (("EgressOnlyInternetGatewayId",) . toJSON) _eC2RouteEgressOnlyInternetGatewayId
        , fmap (("GatewayId",) . toJSON) _eC2RouteGatewayId
        , fmap (("InstanceId",) . toJSON) _eC2RouteInstanceId
        , fmap (("NatGatewayId",) . toJSON) _eC2RouteNatGatewayId
        , fmap (("NetworkInterfaceId",) . toJSON) _eC2RouteNetworkInterfaceId
        , (Just . ("RouteTableId",) . toJSON) _eC2RouteRouteTableId
        , fmap (("TransitGatewayId",) . toJSON) _eC2RouteTransitGatewayId
        , fmap (("VpcPeeringConnectionId",) . toJSON) _eC2RouteVpcPeeringConnectionId
        ]
    }

-- | Constructor for 'EC2Route' containing required fields as arguments.
ec2Route
  :: Val Text -- ^ 'ecrRouteTableId'
  -> EC2Route
ec2Route routeTableIdarg =
  EC2Route
  { _eC2RouteDestinationCidrBlock = Nothing
  , _eC2RouteDestinationIpv6CidrBlock = Nothing
  , _eC2RouteEgressOnlyInternetGatewayId = Nothing
  , _eC2RouteGatewayId = Nothing
  , _eC2RouteInstanceId = Nothing
  , _eC2RouteNatGatewayId = Nothing
  , _eC2RouteNetworkInterfaceId = Nothing
  , _eC2RouteRouteTableId = routeTableIdarg
  , _eC2RouteTransitGatewayId = Nothing
  , _eC2RouteVpcPeeringConnectionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationcidrblock
ecrDestinationCidrBlock :: Lens' EC2Route (Maybe (Val Text))
ecrDestinationCidrBlock = lens _eC2RouteDestinationCidrBlock (\s a -> s { _eC2RouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationipv6cidrblock
ecrDestinationIpv6CidrBlock :: Lens' EC2Route (Maybe (Val Text))
ecrDestinationIpv6CidrBlock = lens _eC2RouteDestinationIpv6CidrBlock (\s a -> s { _eC2RouteDestinationIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-egressonlyinternetgatewayid
ecrEgressOnlyInternetGatewayId :: Lens' EC2Route (Maybe (Val Text))
ecrEgressOnlyInternetGatewayId = lens _eC2RouteEgressOnlyInternetGatewayId (\s a -> s { _eC2RouteEgressOnlyInternetGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-gatewayid
ecrGatewayId :: Lens' EC2Route (Maybe (Val Text))
ecrGatewayId = lens _eC2RouteGatewayId (\s a -> s { _eC2RouteGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-instanceid
ecrInstanceId :: Lens' EC2Route (Maybe (Val Text))
ecrInstanceId = lens _eC2RouteInstanceId (\s a -> s { _eC2RouteInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-natgatewayid
ecrNatGatewayId :: Lens' EC2Route (Maybe (Val Text))
ecrNatGatewayId = lens _eC2RouteNatGatewayId (\s a -> s { _eC2RouteNatGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-networkinterfaceid
ecrNetworkInterfaceId :: Lens' EC2Route (Maybe (Val Text))
ecrNetworkInterfaceId = lens _eC2RouteNetworkInterfaceId (\s a -> s { _eC2RouteNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-routetableid
ecrRouteTableId :: Lens' EC2Route (Val Text)
ecrRouteTableId = lens _eC2RouteRouteTableId (\s a -> s { _eC2RouteRouteTableId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-transitgatewayid
ecrTransitGatewayId :: Lens' EC2Route (Maybe (Val Text))
ecrTransitGatewayId = lens _eC2RouteTransitGatewayId (\s a -> s { _eC2RouteTransitGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-vpcpeeringconnectionid
ecrVpcPeeringConnectionId :: Lens' EC2Route (Maybe (Val Text))
ecrVpcPeeringConnectionId = lens _eC2RouteVpcPeeringConnectionId (\s a -> s { _eC2RouteVpcPeeringConnectionId = a })
