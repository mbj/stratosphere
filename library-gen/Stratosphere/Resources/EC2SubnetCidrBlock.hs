{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html

module Stratosphere.Resources.EC2SubnetCidrBlock where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SubnetCidrBlock. See
-- 'ec2SubnetCidrBlock' for a more convenient constructor.
data EC2SubnetCidrBlock =
  EC2SubnetCidrBlock
  { _eC2SubnetCidrBlockIpv6CidrBlock :: Val Text
  , _eC2SubnetCidrBlockSubnetId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2SubnetCidrBlock where
  toResourceProperties EC2SubnetCidrBlock{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::SubnetCidrBlock"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Ipv6CidrBlock",) . toJSON) _eC2SubnetCidrBlockIpv6CidrBlock
        , (Just . ("SubnetId",) . toJSON) _eC2SubnetCidrBlockSubnetId
        ]
    }

-- | Constructor for 'EC2SubnetCidrBlock' containing required fields as
-- arguments.
ec2SubnetCidrBlock
  :: Val Text -- ^ 'ecscbIpv6CidrBlock'
  -> Val Text -- ^ 'ecscbSubnetId'
  -> EC2SubnetCidrBlock
ec2SubnetCidrBlock ipv6CidrBlockarg subnetIdarg =
  EC2SubnetCidrBlock
  { _eC2SubnetCidrBlockIpv6CidrBlock = ipv6CidrBlockarg
  , _eC2SubnetCidrBlockSubnetId = subnetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6cidrblock
ecscbIpv6CidrBlock :: Lens' EC2SubnetCidrBlock (Val Text)
ecscbIpv6CidrBlock = lens _eC2SubnetCidrBlockIpv6CidrBlock (\s a -> s { _eC2SubnetCidrBlockIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-subnetid
ecscbSubnetId :: Lens' EC2SubnetCidrBlock (Val Text)
ecscbSubnetId = lens _eC2SubnetCidrBlockSubnetId (\s a -> s { _eC2SubnetCidrBlockSubnetId = a })
