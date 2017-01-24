{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html

module Stratosphere.Resources.EC2NatGateway where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2NatGateway. See 'ec2NatGateway' for a
-- | more convenient constructor.
data EC2NatGateway =
  EC2NatGateway
  { _eC2NatGatewayAllocationId :: Val Text
  , _eC2NatGatewaySubnetId :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2NatGateway where
  toJSON EC2NatGateway{..} =
    object
    [ "AllocationId" .= _eC2NatGatewayAllocationId
    , "SubnetId" .= _eC2NatGatewaySubnetId
    ]

instance FromJSON EC2NatGateway where
  parseJSON (Object obj) =
    EC2NatGateway <$>
      obj .: "AllocationId" <*>
      obj .: "SubnetId"
  parseJSON _ = mempty

-- | Constructor for 'EC2NatGateway' containing required fields as arguments.
ec2NatGateway
  :: Val Text -- ^ 'ecngAllocationId'
  -> Val Text -- ^ 'ecngSubnetId'
  -> EC2NatGateway
ec2NatGateway allocationIdarg subnetIdarg =
  EC2NatGateway
  { _eC2NatGatewayAllocationId = allocationIdarg
  , _eC2NatGatewaySubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-allocationid
ecngAllocationId :: Lens' EC2NatGateway (Val Text)
ecngAllocationId = lens _eC2NatGatewayAllocationId (\s a -> s { _eC2NatGatewayAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-subnetid
ecngSubnetId :: Lens' EC2NatGateway (Val Text)
ecngSubnetId = lens _eC2NatGatewaySubnetId (\s a -> s { _eC2NatGatewaySubnetId = a })
