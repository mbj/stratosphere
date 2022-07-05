{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html

module Stratosphere.Resources.EC2NatGateway where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2NatGateway. See 'ec2NatGateway' for a
-- more convenient constructor.
data EC2NatGateway =
  EC2NatGateway
  { _eC2NatGatewayAllocationId :: Val Text
  , _eC2NatGatewaySubnetId :: Val Text
  , _eC2NatGatewayTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2NatGateway where
  toResourceProperties EC2NatGateway{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::NatGateway"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AllocationId",) . toJSON) _eC2NatGatewayAllocationId
        , (Just . ("SubnetId",) . toJSON) _eC2NatGatewaySubnetId
        , fmap (("Tags",) . toJSON) _eC2NatGatewayTags
        ]
    }

-- | Constructor for 'EC2NatGateway' containing required fields as arguments.
ec2NatGateway
  :: Val Text -- ^ 'ecngAllocationId'
  -> Val Text -- ^ 'ecngSubnetId'
  -> EC2NatGateway
ec2NatGateway allocationIdarg subnetIdarg =
  EC2NatGateway
  { _eC2NatGatewayAllocationId = allocationIdarg
  , _eC2NatGatewaySubnetId = subnetIdarg
  , _eC2NatGatewayTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-allocationid
ecngAllocationId :: Lens' EC2NatGateway (Val Text)
ecngAllocationId = lens _eC2NatGatewayAllocationId (\s a -> s { _eC2NatGatewayAllocationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-subnetid
ecngSubnetId :: Lens' EC2NatGateway (Val Text)
ecngSubnetId = lens _eC2NatGatewaySubnetId (\s a -> s { _eC2NatGatewaySubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-tags
ecngTags :: Lens' EC2NatGateway (Maybe [Tag])
ecngTags = lens _eC2NatGatewayTags (\s a -> s { _eC2NatGatewayTags = a })
