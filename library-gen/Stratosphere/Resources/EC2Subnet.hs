{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html

module Stratosphere.Resources.EC2Subnet where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2Subnet. See 'ec2Subnet' for a more
-- convenient constructor.
data EC2Subnet =
  EC2Subnet
  { _eC2SubnetAssignIpv6AddressOnCreation :: Maybe (Val Bool)
  , _eC2SubnetAvailabilityZone :: Maybe (Val Text)
  , _eC2SubnetCidrBlock :: Val Text
  , _eC2SubnetIpv6CidrBlock :: Maybe (Val Text)
  , _eC2SubnetMapPublicIpOnLaunch :: Maybe (Val Bool)
  , _eC2SubnetTags :: Maybe [Tag]
  , _eC2SubnetVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2Subnet where
  toResourceProperties EC2Subnet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::Subnet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AssignIpv6AddressOnCreation",) . toJSON) _eC2SubnetAssignIpv6AddressOnCreation
        , fmap (("AvailabilityZone",) . toJSON) _eC2SubnetAvailabilityZone
        , (Just . ("CidrBlock",) . toJSON) _eC2SubnetCidrBlock
        , fmap (("Ipv6CidrBlock",) . toJSON) _eC2SubnetIpv6CidrBlock
        , fmap (("MapPublicIpOnLaunch",) . toJSON) _eC2SubnetMapPublicIpOnLaunch
        , fmap (("Tags",) . toJSON) _eC2SubnetTags
        , (Just . ("VpcId",) . toJSON) _eC2SubnetVpcId
        ]
    }

-- | Constructor for 'EC2Subnet' containing required fields as arguments.
ec2Subnet
  :: Val Text -- ^ 'ecsCidrBlock'
  -> Val Text -- ^ 'ecsVpcId'
  -> EC2Subnet
ec2Subnet cidrBlockarg vpcIdarg =
  EC2Subnet
  { _eC2SubnetAssignIpv6AddressOnCreation = Nothing
  , _eC2SubnetAvailabilityZone = Nothing
  , _eC2SubnetCidrBlock = cidrBlockarg
  , _eC2SubnetIpv6CidrBlock = Nothing
  , _eC2SubnetMapPublicIpOnLaunch = Nothing
  , _eC2SubnetTags = Nothing
  , _eC2SubnetVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-assignipv6addressoncreation
ecsAssignIpv6AddressOnCreation :: Lens' EC2Subnet (Maybe (Val Bool))
ecsAssignIpv6AddressOnCreation = lens _eC2SubnetAssignIpv6AddressOnCreation (\s a -> s { _eC2SubnetAssignIpv6AddressOnCreation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-availabilityzone
ecsAvailabilityZone :: Lens' EC2Subnet (Maybe (Val Text))
ecsAvailabilityZone = lens _eC2SubnetAvailabilityZone (\s a -> s { _eC2SubnetAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-cidrblock
ecsCidrBlock :: Lens' EC2Subnet (Val Text)
ecsCidrBlock = lens _eC2SubnetCidrBlock (\s a -> s { _eC2SubnetCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6cidrblock
ecsIpv6CidrBlock :: Lens' EC2Subnet (Maybe (Val Text))
ecsIpv6CidrBlock = lens _eC2SubnetIpv6CidrBlock (\s a -> s { _eC2SubnetIpv6CidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-mappubliciponlaunch
ecsMapPublicIpOnLaunch :: Lens' EC2Subnet (Maybe (Val Bool))
ecsMapPublicIpOnLaunch = lens _eC2SubnetMapPublicIpOnLaunch (\s a -> s { _eC2SubnetMapPublicIpOnLaunch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-tags
ecsTags :: Lens' EC2Subnet (Maybe [Tag])
ecsTags = lens _eC2SubnetTags (\s a -> s { _eC2SubnetTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-awsec2subnet-prop-vpcid
ecsVpcId :: Lens' EC2Subnet (Val Text)
ecsVpcId = lens _eC2SubnetVpcId (\s a -> s { _eC2SubnetVpcId = a })
