{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html

module Stratosphere.Resources.EC2Route where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2Route. See 'ec2Route' for a more
-- | convenient constructor.
data EC2Route =
  EC2Route
  { _eC2RouteDestinationCidrBlock :: Val Text
  , _eC2RouteDestinationIpv6CidrBlock :: Maybe (Val Text)
  , _eC2RouteGatewayId :: Maybe (Val Text)
  , _eC2RouteInstanceId :: Maybe (Val Text)
  , _eC2RouteNatGatewayId :: Maybe (Val Text)
  , _eC2RouteNetworkInterfaceId :: Maybe (Val Text)
  , _eC2RouteRouteTableId :: Val Text
  , _eC2RouteVpcPeeringConnectionId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2Route where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

instance FromJSON EC2Route where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 9, omitNothingFields = True }

-- | Constructor for 'EC2Route' containing required fields as arguments.
ec2Route
  :: Val Text -- ^ 'ecrDestinationCidrBlock'
  -> Val Text -- ^ 'ecrRouteTableId'
  -> EC2Route
ec2Route destinationCidrBlockarg routeTableIdarg =
  EC2Route
  { _eC2RouteDestinationCidrBlock = destinationCidrBlockarg
  , _eC2RouteDestinationIpv6CidrBlock = Nothing
  , _eC2RouteGatewayId = Nothing
  , _eC2RouteInstanceId = Nothing
  , _eC2RouteNatGatewayId = Nothing
  , _eC2RouteNetworkInterfaceId = Nothing
  , _eC2RouteRouteTableId = routeTableIdarg
  , _eC2RouteVpcPeeringConnectionId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationcidrblock
ecrDestinationCidrBlock :: Lens' EC2Route (Val Text)
ecrDestinationCidrBlock = lens _eC2RouteDestinationCidrBlock (\s a -> s { _eC2RouteDestinationCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-destinationipv6cidrblock
ecrDestinationIpv6CidrBlock :: Lens' EC2Route (Maybe (Val Text))
ecrDestinationIpv6CidrBlock = lens _eC2RouteDestinationIpv6CidrBlock (\s a -> s { _eC2RouteDestinationIpv6CidrBlock = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-route.html#cfn-ec2-route-vpcpeeringconnectionid
ecrVpcPeeringConnectionId :: Lens' EC2Route (Maybe (Val Text))
ecrVpcPeeringConnectionId = lens _eC2RouteVpcPeeringConnectionId (\s a -> s { _eC2RouteVpcPeeringConnectionId = a })
