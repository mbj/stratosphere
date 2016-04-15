{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::NatGateway resource creates a network address translation
-- (NAT) gateway in the specified public subnet. Use a NAT gateway to allow
-- instances in a private subnet to connect to the Internet or to other AWS
-- services, but prevent the Internet from initiating a connection with those
-- instances. For more information and a sample architectural diagram, see NAT
-- Gateways in the Amazon VPC User Guide.

module Stratosphere.Resources.NatGateway where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for NatGateway. See 'natGateway' for a more
-- convenient constructor.
data NatGateway =
  NatGateway
  { _natGatewayAllocationId :: Val Text
  , _natGatewaySubnetId :: Val Text
  } deriving (Show, Generic)

instance ToJSON NatGateway where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON NatGateway where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

-- | Constructor for 'NatGateway' containing required fields as arguments.
natGateway
  :: Val Text -- ^ 'ngAllocationId'
  -> Val Text -- ^ 'ngSubnetId'
  -> NatGateway
natGateway allocationIdarg subnetIdarg =
  NatGateway
  { _natGatewayAllocationId = allocationIdarg
  , _natGatewaySubnetId = subnetIdarg
  }

-- | The allocation ID of an Elastic IP address to associate with the NAT
-- gateway. If the Elastic IP address is associated with another resource, you
-- must first disassociate it.
ngAllocationId :: Lens' NatGateway (Val Text)
ngAllocationId = lens _natGatewayAllocationId (\s a -> s { _natGatewayAllocationId = a })

-- | The public subnet in which to create the NAT gateway.
ngSubnetId :: Lens' NatGateway (Val Text)
ngSubnetId = lens _natGatewaySubnetId (\s a -> s { _natGatewaySubnetId = a })