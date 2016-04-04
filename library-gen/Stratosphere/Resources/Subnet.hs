{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a subnet in an existing VPC.

module Stratosphere.Resources.Subnet where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

data Subnet =
  Subnet
  { _subnetAvailabilityZone :: Maybe (Val Text)
  , _subnetCidrBlock :: Val Text
  , _subnetMapPublicIpOnLaunch :: Maybe (Val Bool')
  , _subnetTags :: Maybe [Val ResourceTag]
  , _subnetVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON Subnet where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON Subnet where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

subnet
  :: Val Text -- ^ CidrBlock
  -> Val Text -- ^ VpcId
  -> Subnet
subnet cidrBlockarg vpcIdarg =
  Subnet
  { _subnetAvailabilityZone = Nothing
  , _subnetCidrBlock = cidrBlockarg
  , _subnetMapPublicIpOnLaunch = Nothing
  , _subnetTags = Nothing
  , _subnetVpcId = vpcIdarg
  }

-- | The availability zone in which you want the subnet. Default: AWS selects
-- a zone for you (recommended).
sAvailabilityZone :: Lens' Subnet (Maybe (Val Text))
sAvailabilityZone = lens _subnetAvailabilityZone (\s a -> s { _subnetAvailabilityZone = a })

-- | The CIDR block that you want the subnet to cover (for example,
-- "10.0.0.0/24").
sCidrBlock :: Lens' Subnet (Val Text)
sCidrBlock = lens _subnetCidrBlock (\s a -> s { _subnetCidrBlock = a })

-- | Indicates whether instances that are launched in this subnet receive a
-- public IP address. By default, the value is false.
sMapPublicIpOnLaunch :: Lens' Subnet (Maybe (Val Bool'))
sMapPublicIpOnLaunch = lens _subnetMapPublicIpOnLaunch (\s a -> s { _subnetMapPublicIpOnLaunch = a })

-- | An arbitrary set of tags (key–value pairs) for this subnet.
sTags :: Lens' Subnet (Maybe [Val ResourceTag])
sTags = lens _subnetTags (\s a -> s { _subnetTags = a })

-- | A Ref structure that contains the ID of the VPC on which you want to
-- create the subnet. The VPC ID is provided as the value of the "Ref"
-- property, as: { "Ref": "VPCID" }.
sVpcId :: Lens' Subnet (Val Text)
sVpcId = lens _subnetVpcId (\s a -> s { _subnetVpcId = a })