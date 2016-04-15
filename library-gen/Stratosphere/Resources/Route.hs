{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a new route in a route table within a VPC. The route's target can
-- be either a gateway attached to the VPC or a NAT instance in the VPC.

module Stratosphere.Resources.Route where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route. See 'route' for a more convenient
-- constructor.
data Route =
  Route
  { _routeDestinationCidrBlock :: Val Text
  , _routeGatewayId :: Maybe (Val Text)
  , _routeInstanceId :: Maybe (Val Text)
  , _routeNatGatewayId :: Maybe (Val Text)
  , _routeNetworkInterfaceId :: Maybe (Val Text)
  , _routeRouteTableId :: Val Text
  } deriving (Show, Generic)

instance ToJSON Route where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

instance FromJSON Route where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

-- | Constructor for 'Route' containing required fields as arguments.
route
  :: Val Text -- ^ 'rDestinationCidrBlock'
  -> Val Text -- ^ 'rRouteTableId'
  -> Route
route destinationCidrBlockarg routeTableIdarg =
  Route
  { _routeDestinationCidrBlock = destinationCidrBlockarg
  , _routeGatewayId = Nothing
  , _routeInstanceId = Nothing
  , _routeNatGatewayId = Nothing
  , _routeNetworkInterfaceId = Nothing
  , _routeRouteTableId = routeTableIdarg
  }

-- | The CIDR address block used for the destination match. For example,
-- 0.0.0.0/0. Routing decisions are based on the most specific match.
rDestinationCidrBlock :: Lens' Route (Val Text)
rDestinationCidrBlock = lens _routeDestinationCidrBlock (\s a -> s { _routeDestinationCidrBlock = a })

-- | The ID of an Internet gateway or virtual private gateway that is attached
-- to your VPC. For example: igw-eaad4883. For route entries that specify a
-- gateway, you must specify a dependency on the gateway attachment resource.
-- For more information, see DependsOn Attribute.
rGatewayId :: Lens' Route (Maybe (Val Text))
rGatewayId = lens _routeGatewayId (\s a -> s { _routeGatewayId = a })

-- | The ID of a NAT instance in your VPC. For example, i-1a2b3c4d.
rInstanceId :: Lens' Route (Maybe (Val Text))
rInstanceId = lens _routeInstanceId (\s a -> s { _routeInstanceId = a })

-- | The ID of a NAT gateway. For example, nat-0a12bc456789de0fg.
rNatGatewayId :: Lens' Route (Maybe (Val Text))
rNatGatewayId = lens _routeNatGatewayId (\s a -> s { _routeNatGatewayId = a })

-- | Allows the routing of network interface IDs.
rNetworkInterfaceId :: Lens' Route (Maybe (Val Text))
rNetworkInterfaceId = lens _routeNetworkInterfaceId (\s a -> s { _routeNetworkInterfaceId = a })

-- | The ID of the route table where the route will be added.
rRouteTableId :: Lens' Route (Val Text)
rRouteTableId = lens _routeRouteTableId (\s a -> s { _routeRouteTableId = a })