{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html

module Stratosphere.Resources.EC2Subnet where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2Subnet. See 'ec2Subnet' for a more
-- | convenient constructor.
data EC2Subnet =
  EC2Subnet
  { _eC2SubnetAvailabilityZone :: Maybe (Val Text)
  , _eC2SubnetCidrBlock :: Val Text
  , _eC2SubnetMapPublicIpOnLaunch :: Maybe (Val Bool')
  , _eC2SubnetTags :: Maybe [Tag]
  , _eC2SubnetVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2Subnet where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON EC2Subnet where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'EC2Subnet' containing required fields as arguments.
ec2Subnet
  :: Val Text -- ^ 'ecsCidrBlock'
  -> Val Text -- ^ 'ecsVpcId'
  -> EC2Subnet
ec2Subnet cidrBlockarg vpcIdarg =
  EC2Subnet
  { _eC2SubnetAvailabilityZone = Nothing
  , _eC2SubnetCidrBlock = cidrBlockarg
  , _eC2SubnetMapPublicIpOnLaunch = Nothing
  , _eC2SubnetTags = Nothing
  , _eC2SubnetVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-availabilityzone
ecsAvailabilityZone :: Lens' EC2Subnet (Maybe (Val Text))
ecsAvailabilityZone = lens _eC2SubnetAvailabilityZone (\s a -> s { _eC2SubnetAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-cidrblock
ecsCidrBlock :: Lens' EC2Subnet (Val Text)
ecsCidrBlock = lens _eC2SubnetCidrBlock (\s a -> s { _eC2SubnetCidrBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-mappubliciponlaunch
ecsMapPublicIpOnLaunch :: Lens' EC2Subnet (Maybe (Val Bool'))
ecsMapPublicIpOnLaunch = lens _eC2SubnetMapPublicIpOnLaunch (\s a -> s { _eC2SubnetMapPublicIpOnLaunch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-tags
ecsTags :: Lens' EC2Subnet (Maybe [Tag])
ecsTags = lens _eC2SubnetTags (\s a -> s { _eC2SubnetTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-awsec2subnet-prop-vpcid
ecsVpcId :: Lens' EC2Subnet (Val Text)
ecsVpcId = lens _eC2SubnetVpcId (\s a -> s { _eC2SubnetVpcId = a })
