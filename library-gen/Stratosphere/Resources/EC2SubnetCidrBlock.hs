{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html

module Stratosphere.Resources.EC2SubnetCidrBlock where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SubnetCidrBlock. See
-- | 'ec2SubnetCidrBlock' for a more convenient constructor.
data EC2SubnetCidrBlock =
  EC2SubnetCidrBlock
  { _eC2SubnetCidrBlockIpv6CidrBlock :: Val Text
  , _eC2SubnetCidrBlockSubnetId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2SubnetCidrBlock where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON EC2SubnetCidrBlock where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'EC2SubnetCidrBlock' containing required fields as
-- | arguments.
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
